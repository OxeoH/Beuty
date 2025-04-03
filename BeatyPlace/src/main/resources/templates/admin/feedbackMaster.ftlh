<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <div class="row">
      <div class="col-12">
        <div class="card my-4">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-dark shadow-dark border-radius-lg pt-4 pb-3">
              <h6 class="text-white text-capitalize ps-3">Отзыв о мастере ${master.fullName}</h6>
            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive p-0">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Клиент</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Отзыв</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Оценка</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Дата отзыва</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
                </thead>
                <tbody>
                <#if master.reviews?size gt 0>
                    <#list master.reviews as review>
                      <tr>
                        <td>
                          <p class="text-xs font-weight-bold mb-0">${review.client.fullName}</p>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${review.comment}</span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${review.rating}</span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">${review.createdAt}</span>
                        </td>
                      </tr>
                    </#list>
                <#else>
                  <tr>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Отзывов на мастера нет.</p>
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