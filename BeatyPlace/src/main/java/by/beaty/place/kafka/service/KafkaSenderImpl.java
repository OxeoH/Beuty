package by.beaty.place.kafka.service;

import by.beaty.place.kafka.service.api.KafkaSender;
import java.util.concurrent.CompletableFuture;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.EnableKafka;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableKafka
@Slf4j
@RequiredArgsConstructor
public class KafkaSenderImpl implements KafkaSender {

    @Value("${notification-topic}")
    private String topic;
    private final KafkaTemplate<String, String> kafkaTemplate;

    @Transactional("kafkaTransactionManager")
    public void sendMessage(String message) {
        if (message == null) {
            log.error("Message is null, cannot send to topic: {}", topic);
            throw new IllegalArgumentException("Message cannot be null");
        }

        try {
            CompletableFuture<SendResult<String, String>> future = kafkaTemplate.executeInTransaction(t -> {
                if (topic == null) {
                    throw new IllegalStateException("Topic is not configured");
                }
                ProducerRecord<String, String> record = new ProducerRecord<>(topic, message, message);
                return t.send(record);
            });

            if (future == null) {
                log.error("Future is null for topic: {}. Check Kafka configuration or connectivity.", topic);
                throw new IllegalStateException("Failed to initiate transaction for topic: " + topic);
            }

            future.whenComplete((result, ex) -> {
                if (ex != null) {
                    log.error("Failed to send message to topic {}: {}", topic, ex.getMessage(), ex);
                } else {
                    log.info("Message sent successfully to topic {} with offset {}", topic, result.getRecordMetadata().offset());
                }
            });
        } catch (Exception e) {
            log.error("Error during transaction for topic {}: {}", topic, e.getMessage(), e);
            throw new RuntimeException("Transaction failed for topic " + topic, e);
        }
    }
}
