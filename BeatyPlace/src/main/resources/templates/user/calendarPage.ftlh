<#import "../common/base.ftlh" as base>
<#include "../common/security.ftlh">

<@base.page>
    <#if notFound??>
      <script>
        alert('У вас нет такой записи. Попробуйте еще раз.')
      </script>
    </#if>
  <style>
    .fc-daygrid-event {
      white-space: pre-wrap !important;
    }

    .modal-content {
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .modal-header {
      border-bottom: 2px solid #ccc;
    }

    .modal-body {
      padding: 20px;
    }

    .form-control {
      border-radius: 5px;
      padding: 10px;
    }

    .btn-block {
      width: 100%;
      padding: 10px;
    }

    .btn-success {
      background-color: #28a745;
      border-color: #28a745;
    }

    .btn-success:hover {
      background-color: #218838;
      border-color: #1e7e34;
    }
  </style>
  <div class="container">
    <div>
      <p style="font-size: 2em">Ваши записи</p>
    </div>

      <#if user??>
        <a style="float: right; margin-bottom: 10px; color: white" class="btn btn-dark" data-toggle="modal"
           data-target="#modaladdappointment">
          <span style="color:white;font-weight: 700; font-size: 15px;">+</span>Записаться
        </a>
      </#if>

    <select style="width: 20%;height: 30px;margin-bottom: 20px;" name="groupselector" onchange=""
            class="form-select"
            aria-label="Default select example">
      <option selected>Выберите категорию процедуры</option>
        <#list categoryList as category>
          <option value="category/${category.id}">${category.name}</option>
        </#list>
    </select>

      <#if appointments??>
          <#list appointments as app>
            <span style="display: none" class="tooltip" id="title">
            Процедура: ${app.category.name} <br>
            Мастер: ${app.master.fullName} <br>
            Статус: ${app.status.getName()} <br>
            Время: ${app.workSchedule.date} <br>
            Примечание: <#if app.clientNote??>${app.clientNote}<#else>-</#if>
          </span>
            <span style="display: none" id="start">${app.workSchedule.date} ${app.workSchedule.startTime}</span>
            <span style="display: none" id="end">${app.workSchedule.date} ${app.workSchedule.endTime}</span>
            <span style="display: none" id="url">/appointment/${app.id}</span>
            <span style="display: none" data-toggle="tooltip" data-placement="top" id="description" class="tooltiptext">
                 Стоимость: ${app.price}
            </span>
          </#list>
      </#if>
    <div id='calendar' style="margin-bottom: 10px"></div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/static/lib/calendar.js"></script>
    <script>
      document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');

        var titleEvent = $('span[id=title]').toArray();
        var startEvent = $('span[id=start]').toArray();
        var endEvent = $('span[id=end]').toArray();
        var urlEvent = $('span[id=url]').toArray();
        var description = $('span[id=description]').toArray();

        var eventlists = titleEvent.map((current, index) => {
          return {
            title: current.innerText,
            start: startEvent[index].innerText,
            end: endEvent[index].innerText,
            url: urlEvent[index].innerText,
            display: 'auto',
            description: description[index].innerText,
          }
        });

        var calendar = new FullCalendar.Calendar(calendarEl, {
          headerToolbar: {
            locale: 'ru',
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
          },
          droppable: true,
          buttonText:
              {
                today: 'Сегодня',
                month: 'Месяц',
                week: 'Неделя',
                day: 'День',
                list: 'Список'
              },
          locale: 'eu',
          contentHeight: 450,
          initialDate: '${currentDate}',
          navLinks: true,
          editable: true,
          dayMaxEvents: true,
          eventBackgroundColor: '#388E3C',
          events: eventlists
        });

        calendar.render();
      });

    </script>
    <script>
      $(document).ready(function () {
        $('select[name=groupselector]').change(function () {
          location.href = "/appointment/" + $('select[name=groupselector] option:selected').val()
        });

        $('form[name=test]').submit(function (event) {
          var text = $('div[class=form_error]').text();
          alert(text)
        });
      });
    </script>
    <script src="/static/js/infoLoader.js"></script>

    <div class="modal fade" id="modaladdappointment" tabindex="-1" role="dialog" aria-labelledby="modaladdappointment"
         aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">Записаться на процедуру</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="/appointment/create" method="post">
              <div class="form-group">
                <label for="idles">Выберите процедуру:</label>
                <select name="idles" id="idles" class="form-control" required="required">
                  <option selected disabled>Выберите процедуру</option>
                    <#list categoryList as category>
                      <option name="categoryId" value="${category.id}">${category.name}</option>
                    </#list>
                </select>
              </div>
              <div class="form-group">
                <label for="categoryPrice">Стоимость процедуры:</label>
                <input name="price" type="text" id="categoryPrice" class="form-control" readonly>
              </div>
              <div class="form-group">
                <label for="master">Выберите мастера:</label>
                <select name="master" id="master" class="form-control" required="required">
                  <option selected disabled>Сначала выберите процедуру</option>
                </select>
              </div>

              <div class="form-group">
                <label for="inputDate">Выберите день процедуры:</label>
                <input name="startdate" min="${currentDate}" type="date" class="form-control" required="required" id="inputDate">
              </div>

              <div class="form-group">
                <label for="time">Выберите свободное время мастера:</label>
                <select name="time" id="time" class="form-control" required="required">
                  <option selected disabled>Сначала выберите мастера</option>
                </select>
              </div>

              <div class="form-group">
                <label class="text-black" for="notes">Примечание</label>
                <textarea name="notes" id="notes" cols="30" rows="5" class="form-control"
                          placeholder="Введите примечание тут...">
                </textarea>
              </div>
              <button type="submit" class="btn btn-success btn-block">Записаться</button>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</@base.page>