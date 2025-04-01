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
                        <#list master.categoryList as category>
                            ${category.name} <#if category?has_next>,</#if>
                        </#list>
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
</@base.page>