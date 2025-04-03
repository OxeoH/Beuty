<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <div class="row">
      <div class="col-12">
        <div class="card my-4">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-dark shadow-dark border-radius-lg pt-4 pb-3">
              <h6 class="text-white text-capitalize ps-3">Мастера</h6>
            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive p-0">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Мастер</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Процедура</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Email</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
                </thead>
                <tbody>
                <#if mastersList?size gt 0>
                    <#list mastersList as master>
                      <tr>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${master.fullName}</p>
                        </td>
                        <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-bold">
                          <#if master.categoryList?? && master.categoryList?size gt 0>
                              <#list master.categoryList as category>
                                  ${category.name} <#if category?has_next>,</#if>
                              </#list>
                          <#else>
                            <p class="text-xs font-weight-bold mb-0"> Категории нет </p>
                          </#if>
                      </span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${master.email}</span>
                        </td>
                        <td class="align-middle">
                          <a href="/admin/workschedule/master/${master.id}" class="btn btn-sm btn-outline-secondary">
                            График мастера
                          </a>
                        </td>
                          <#if master.categoryList?? && master.categoryList?size lt 1>
                            <td class="align-middle">
                              <a class="btn btn-sm btn-outline-secondary"
                                 data-bs-toggle="modal"
                                 data-bs-target="#categoryModal"
                                 data-master-id="${master.id}"
                              >
                                Установить категорию
                              </a>
                            </td>
                          <#else>
                            <td class="align-middle"></td>
                          </#if>
                      </tr>
                    </#list>
                <#else>
                  <tr>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Мастеров на данный момент нет</p>
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

  <div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="categoryModalLabel">Установка категории</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="statusForm" action="/admin/master/add/category" method="post">
            <input type="hidden" id="recordId" name="id">
            <div class="mb-3">
              <label for="categorySelect" class="form-label">Выберите категорию</label>
              <select name="categoryId" class="form-select" required id="categorySelect">
                <option selected>Выберите...</option>
                  <#list categoryList as category>
                    <option value="${category.id}">${category.name}</option>
                  </#list>
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
    document.getElementById('categoryModal').addEventListener('show.bs.modal', function (event) {
      var button = event.relatedTarget;
      document.getElementById('recordId').value = button.getAttribute('data-master-id');
    });
  </script>
</@base.page>