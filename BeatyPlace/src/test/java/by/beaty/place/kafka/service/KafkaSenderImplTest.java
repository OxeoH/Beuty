package by.beaty.place.kafka.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.concurrent.CompletableFuture;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.clients.producer.RecordMetadata;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.kafka.core.KafkaOperations;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.test.util.ReflectionTestUtils;

@ExtendWith(MockitoExtension.class)
class KafkaSenderImplTest {

    @Mock
    private KafkaTemplate<String, String> kafkaTemplate;

    @InjectMocks
    private KafkaSenderImpl kafkaService;

    @Captor
    private ArgumentCaptor<ProducerRecord<String, String>> recordCaptor;

    @BeforeEach
    void setUp() {
        ReflectionTestUtils.setField(kafkaService, "topic", "test-topic"); // Устанавливаем значение topic
    }

    @Test
    void sendMessage_Success() {
        // GIVEN
        String message = "test-message";
        CompletableFuture<SendResult<String, String>> future = new CompletableFuture<>();
        future.complete(
                new SendResult<>(new ProducerRecord<>("test-topic", message), new RecordMetadata(null, 0, 0, 0, 0L, 0, 0)));

        when(kafkaTemplate.executeInTransaction(any())).thenAnswer(invocation -> {
            KafkaOperations.OperationsCallback<String, String, CompletableFuture<SendResult<String, String>>> callback =
                    invocation.getArgument(0);
            return callback.doInOperations(kafkaTemplate);
        });

        when(kafkaTemplate.send(any(ProducerRecord.class))).thenReturn(future);

        // WHEN
        kafkaService.sendMessage(message);

        // THEN
        verify(kafkaTemplate).executeInTransaction(any());
        verify(kafkaTemplate).send(recordCaptor.capture());
        assertEquals("test-topic", recordCaptor.getValue().topic());
        assertEquals(message, recordCaptor.getValue().value());
    }

    @Test
    void sendMessage_NullMessage() {
        // GIVEN | WHEN
        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () -> {
            kafkaService.sendMessage(null);
        });

        // THEN
        assertEquals("Message cannot be null", exception.getMessage());
    }

    @Test
    void sendMessage_FutureNull() {
        // GIVEN
        String message = "test-message";
        when(kafkaTemplate.executeInTransaction(any())).thenReturn(null);

        // WHEN
        RuntimeException exception = assertThrows(RuntimeException.class, () -> {
            kafkaService.sendMessage(message);
        });

        // THEN
        assertEquals("Transaction failed for topic test-topic", exception.getMessage());
    }
}