<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <div class="row">
      <div class="col-12">
        <div class="card my-4">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-dark shadow-dark border-radius-lg pt-4 pb-3">
              <h6 class="text-white text-capitalize ps-3">Пользователи</h6>
            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive p-0">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Пользователь</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Email</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Роль</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Статус</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Верификация</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Блокировки</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
                </thead>
                <tbody>
                <#if userList?size gt 0>
                    <#list userList as user>
                      <tr>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${user.fullName}</p>
                        </td>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${user.email}</p>
                        </td>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${user.role.getName()}</p>
                        </td>
                        <td class="align-middle text-center text-sm">
                            <#if user.blocked>
                              <span class="badge badge-sm bg-gradient-danger">Заблокирован</span>
                            </#if>
                            <#if !user.blocked>
                              <span class="badge badge-sm bg-gradient-success">Активен</span>
                            </#if>
                        </td>
                        <td class="align-middle text-center text-sm">
                            <#if !user.emailVerified>
                              <span class="badge badge-sm bg-gradient-danger">Не верефицирован</span>
                            </#if>
                            <#if user.emailVerified>
                              <span class="badge badge-sm bg-gradient-success">Верефицирован</span>
                            </#if>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">
                              <#if user.reasonsBlock?size gt 0>
                                  <#list user.reasonsBlock as reason>
                                      ${reason} <#if reason?has_next>,</#if>
                                  </#list>
                              <#else>
                                Блокировок не было
                              </#if>
                          </span>
                        </td>
                        <td class="align-middle">
                          <a href="#" class="btn btn-sm btn-outline-secondary"
                             data-bs-toggle="modal"
                             data-bs-target="#roleModal"
                             data-user-id="${user.id?c}"
                             data-current-role="${user.role.name()}">
                            Изменить роль
                          </a>
                        </td>
                        <td class="align-middle">
                          <a href="/admin/users/appointments/${user.id?c}" class="btn btn-sm btn-outline-secondary">
                            Записи
                          </a>
                        </td>
                        <td class="align-middle">
                            <#if user.blocked>
                              <form action="/admin/users/unblock/${user.id?c}" method="post" class="d-inline">
                                <button type="submit" class="btn btn-sm btn-outline-secondary">
                                  Разблокировать
                                </button>
                              </form>
                            <#else>
                              <a href="#" class="btn btn-sm btn-outline-secondary"
                                 data-bs-toggle="modal"
                                 data-bs-target="#blockUserModal"
                                 data-user-id="${user.id?c}">
                                Заблокировать
                              </a>
                            </#if>
                        </td>
                      </tr>
                    </#list>
                <#else>
                  <tr>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Пользователей на текущий момент нет.</p>
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
  <!-- Модальное окно блокировки -->
  <div class="modal fade" id="blockUserModal" tabindex="-1" aria-labelledby="blockUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="blockUserModalLabel">Блокировка пользователя</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="/users/block/" method="post">
          <div class="modal-body">
            <div class="mb-3">
              <label for="blockReason" class="form-label">Причина блокировки</label>
              <textarea class="form-control" id="blockReason" name="reason" rows="3" required></textarea>
            </div>
            <div class="mb-3">
              <label for="blockUntil" class="form-label">Дата и время окончания блокировки</label>
              <input type="datetime-local" class="form-control" id="blockUntil"
                     name="datetime"
                     min="${.now?string('yyyy-MM-dd')}T00:00"
                     required>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
            <button type="submit" class="btn btn-danger">Заблокировать</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <script>
    document.getElementById('blockUserModal').addEventListener('show.bs.modal', function (event) {
      const button = event.relatedTarget;
      const userId = button.getAttribute('data-user-id');
      const form = this.querySelector('form');
      form.action = `/admin/users/block/` + userId;
    });
  </script>

  <!-- Модальное окно -->
  <div class="modal fade" id="roleModal" tabindex="-1" aria-labelledby="roleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="roleModalLabel">Изменение статуса</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="statusForm" action="/admin/users/update/role" method="post">
            <input type="hidden" id="recordId" name="id">
            <div class="mb-3">
              <label for="roleSelect" class="form-label">Выберите роль</label>
              <select name="role" class="form-select" id="roleSelect" required>
                <option selected>Выберите...</option>
                <option value="ADMIN">Администратор</option>
                <option value="CLIENT">Клиент</option>
                <option value="MASTER">Мастер</option>
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
    document.getElementById('roleModal').addEventListener('show.bs.modal', function (event) {
      var button = event.relatedTarget;
      const userId = button.getAttribute('data-user-id');
      var currentStatus = button.getAttribute('data-current-role');

      document.getElementById('recordId').value = userId;

      if (currentStatus) {
        document.getElementById('roleSelect').value = currentStatus;
      }
    });
  </script>
</@base.page>