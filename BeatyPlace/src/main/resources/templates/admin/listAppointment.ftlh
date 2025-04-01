<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <div class="row">
      <div class="col-12">
        <div class="card my-4">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-dark shadow-dark border-radius-lg pt-4 pb-3">
              <h6 class="text-white text-capitalize ps-3">Записи на процедуры</h6>
            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive p-0">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Процедура</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Статус</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Мастер</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Клиент</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Дата и Время</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Примечание</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
                </thead>
                <tbody>
                <#list appointmentList as appointment>
                  <tr>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">${appointment.category.name}</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                        <#if appointment.status == "PENDING">
                          <span class="badge badge-sm bg-gradient-secondary">${appointment.status.getName()}</span>
                        </#if>
                        <#if appointment.status == "CONFIRMED">
                          <span class="badge badge-sm bg-gradient-success">${appointment.status.getName()}</span>
                        </#if>
                        <#if appointment.status == "CANCELED">
                          <span class="badge badge-sm bg-gradient-danger">${appointment.status.getName()}</span>
                        </#if>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-bold">${appointment.master.fullName}</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-bold">${appointment.client.fullName}</span>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">${appointment.workSchedule.date}</p>
                      <p class="text-xs text-secondary mb-0">Начало ${appointment.workSchedule.startTime} |
                        Конец ${appointment.workSchedule.endTime}</p>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-bold">${appointment.clientNote}</span>
                    </td>
                    <td class="align-middle">
                      <a href="#" class="btn btn-sm btn-outline-secondary"
                         data-bs-toggle="modal"
                         data-bs-target="#statusModal"
                         data-id="${appointment.id}"
                         data-current-status="${appointment.status}">
                        Изменить статус
                      </a>
                    </td>
                  </tr>
                </#list>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Модальное окно -->
  <div class="modal fade" id="statusModal" tabindex="-1" aria-labelledby="statusModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="statusModalLabel">Изменение статуса</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="statusForm" action="/admin/update/status" method="post">
            <input type="hidden" id="recordId" name="id">
            <div class="mb-3">
              <label for="statusSelect" class="form-label">Выберите статус</label>
              <select name="status" class="form-select" id="statusSelect" required>
                <option selected>Выберите...</option>
                <option value="PENDING">В обработке</option>
                <option value="CONFIRMED">Подтверждено</option>
                <option value="CANCELED">Отмененно</option>
              </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
              <button type="submit" class="btn btn-primary">Сохранить изменения</button>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>
  <script>
    document.getElementById('statusModal').addEventListener('show.bs.modal', function(event) {
      var button = event.relatedTarget;
      var recordId = button.getAttribute('data-id');
      var currentStatus = button.getAttribute('data-current-status');

      document.getElementById('recordId').value = recordId;

      if (currentStatus) {
        document.getElementById('statusSelect').value = currentStatus;
      }
    });
  </script>
</@base.page>