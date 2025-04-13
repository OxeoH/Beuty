<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <button class="btn btn-sm bg-gradient-secondary me-3" data-bs-toggle="modal" data-bs-target="#addScheduleModal">
      <i class="fas fa-plus me-1"></i> Добавить слот
    </button>
    <div class="row">
      <div class="col-12">
        <div class="card my-4">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-dark shadow-dark border-radius-lg pt-4 pb-3">
              <h6 class="text-white text-capitalize ps-3">График мастера</h6>

            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive p-0">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Мастер</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Дата</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Время начала</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Время окончания</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Статус</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
                </thead>
                <tbody>
                <#if workSchedules?size gt 0>
                    <#list workSchedules as ws>
                      <tr>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${ws.masterFullName}</p>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${ws.date}</span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${ws.startTime}</span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${ws.endTime}</span>
                        </td>
                        <td class="align-middle text-center text-sm">
                            <#if ws.status == "BOOKED">
                              <span class="badge badge-sm bg-gradient-secondary">${ws.status.getName()}</span>
                            </#if>
                            <#if ws.status == "FREE">
                              <span class="badge badge-sm bg-gradient-success">${ws.status.getName()}</span>
                            </#if>
                        </td>
                      </tr>
                    </#list>
                <#else>
                  <tr>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">График не заполнен</p>
                    </td>
                  </tr>
                </#if>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Модальное окно для добавления слота -->
  <div class="modal fade" id="addScheduleModal" tabindex="-1" aria-labelledby="addScheduleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addScheduleModalLabel">Добавить новый слот</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="addScheduleForm" action="/admin/workschedule/master/${idMaster}/create" method="post" onsubmit="return validateSchedule()">
            <div class="mb-3">
              <label class="form-label">Дата</label>
              <input type="date" class="form-control" name="date" id="scheduleDate" required>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label class="form-label">Время начала</label>
                <input type="time" class="form-control" name="startTime" id="startTime" required>
              </div>
              <div class="col-md-6 mb-3">
                <label class="form-label">Время окончания</label>
                <input type="time" class="form-control" name="endTime" id="endTime" required>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
              <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script>
    function validateSchedule() {
      const date = document.getElementById('scheduleDate').value;
      const startTime = document.getElementById('startTime').value;
      const endTime = document.getElementById('endTime').value;

      if (startTime >= endTime) {
        alert('Ошибка: Время окончания должно быть позже времени начала!');
        return false;
      }

      const today = new Date().toISOString().split('T')[0];
      if (date < today) {
        alert('Ошибка: Дата не может быть в прошлом!');
        return false;
      }

      return true;
    }
  </script>
</@base.page>