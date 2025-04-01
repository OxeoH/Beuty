$(document).ready(function () {
  $('#idles').change(function () {
    var categoryId = $(this).val();

    $('#master').html('<option selected disabled>Выберите мастера</option>');
    $('#time').html('<option selected disabled>Сначала выберите мастера</option>');

    if (categoryId) {
      $.ajax({
        url: '/info/getMastersByCategory/' + categoryId,
        type: 'GET',
        success: function (response) {
          if (response && response.length > 0) {
            response.forEach(function (master) {
              $('#master').append('<option name="masterId" value="' + master.id + '">' + master.fullName + '</option>');
            });
          } else {
            $('#master').append('<option disabled>Нет доступных мастеров</option>');
          }
        }
      });
    }
  });
  $('#master, #inputDate').change(function () {
    var masterId = $('#master').val();
    var selectedDate = $('#inputDate').val();

    if (masterId && selectedDate) {
      $.ajax({
        url: '/info/master/slot/available',
        type: 'GET',
        data: {masterId: masterId, date: selectedDate},
        success: function (response) {
          $('#time').html('<option selected disabled>Выберите свободное время</option>');
          if (response.length > 0) {
            response.forEach(function (slot) {
              $('#time').append(
                  '<option name="slotId" value="' + slot.id + '">' + slot.startTime + ' - ' + slot.endTime + '</option>');
            });
          } else {
            $('#time').append('<option disabled>Нет свободных слотов</option>');
          }
        }
      });
    }
  });
  $('#idles').change(function () {
    var categoryId = $(this).val();

    if (categoryId) {
      // Отправляем запрос на сервер для получения стоимости категории
      $.ajax({
        url: '/info/categoryPrice/' + categoryId, // Путь к серверному методу
        type: 'GET',
        success: function (response) {
          // Если цена найдена, отображаем ее
          if (response && response) {
            $('#categoryPrice').val(response);
          } else {
            $('#categoryPrice').val('Цена не найдена');
          }
        },
        error: function () {
          $('#categoryPrice').val('Ошибка загрузки');
        }
      });
    } else {
      $('#categoryPrice').val('Выберите процедуру');
    }
  });
});