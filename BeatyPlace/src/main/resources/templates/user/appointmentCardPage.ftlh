<#import "../common/base.ftlh" as base>
<#include "../common/security.ftlh">

<@base.page>
  <div class="slide-one-item home-slider owl-carousel">

    <div class="site-blocks-cover inner-page-cover" style="background-image: url(/static/images/hero_bg_2.jpg);" data-aos="fade"
         data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
            <h4 class="text-white font-weight-light mb-2 display-1">
                <#if appointment??>Ваша запись на ${appointment.workSchedule.date}
                  в ${appointment.workSchedule.startTime}
                <#else>
                  Онлайн запись
                </#if>
            </h4>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="site-section bg-light">
  <div class="container">
    <div class="row">
      <div class="col-md-7 mb-5">

        <form action="<#if appointment??>#<#else>/appointment/create</#if>" method="post" class="p-5 bg-white">
          <h2 class="mb-4 site-section-heading"><#if appointment??>Ваша запись<#else>Записаться сейчас</#if></h2>

          <div class="row form-group">
            <div class="col-md-6 mb-3 mb-md-0">
              <label class="text-black" for="idles">
                  <#if appointment??>Процедура: <#else>Выберите процедуру:</#if>
              </label>
                <#if appointment??>
                  <select name="idles" id="idles" class="form-control" readonly>
                    <option selected disabled>${appointment.category.name}</option>
                  </select>
                <#else>
                  <select name="idles" id="idles" class="form-control" required="required">
                    <option selected disabled>Выберите процедуру</option>
                      <#list categoryList as category>
                        <option name="categoryId" value="${category.id}">${category.name}</option>
                      </#list>
                  </select>
                </#if>
            </div>
            <div class="col-md-6">
              <label class="text-black" for="categoryPrice">Стоимость процедуры:</label>
              <input name="price" <#if appointment??>value="${appointment.price}"</#if> type="text" id="categoryPrice"
                     class="form-control" readonly>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-6 mb-3 mb-md-0">
              <label class="text-black" for="master"><#if appointment??>Ваш мастер:<#else>Выберите мастера:</#if></label>
                <#if appointment??>
                  <select name="master" id="master" class="form-control" readonly>
                    <option selected disabled>${appointment.master.fullName}</option>
                  </select>
                <#else>
                  <select name="master" id="master" class="form-control" required="required">
                    <option selected disabled>Сначала выберите процедуру</option>
                  </select>
                </#if>
            </div>
            <div class="col-md-6">
              <label class="text-black"
                     for="inputDate"><#if appointment??>День процедуры: <#else>Выберите день процедуры:</#if></label>
                <#if appointment??>
                  <input name="startdate" value="${appointment.workSchedule.date}" type="date" class="form-control"
                         required="required" id="inputDate" readonly>
                <#else>
                  <input name="startdate" min="${currentDate}" type="date" class="form-control" required="required"
                         id="inputDate">
                </#if>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-12">
              <label class="text-black"
                     for="time"><#if appointment??>Время записи: <#else>Выберите свободное время мастера:</#if></label>
                <#if appointment??>
                  <select name="time" id="time" class="form-control" readonly>
                    <option selected disabled>${appointment.workSchedule.startTime} - ${appointment.workSchedule.endTime}</option>
                  </select>
                <#else>
                  <select name="time" id="time" class="form-control" required="required">
                    <option selected disabled>Сначала выберите мастера</option>
                  </select>
                </#if>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-12">
              <label class="text-black" for="notes">Примечание</label>
                <#if appointment??>
                  <textarea name="notes" id="notes" cols="30" rows="5" class="form-control"
                            placeholder="Введите примечание тут..." readonly>
                    <#if appointment.clientNote??>
                        ${appointment.clientNote}
                    <#else>
                      -
                    </#if>
                </textarea>
                <#else>
                  <textarea name="notes" id="notes" cols="30" rows="5" class="form-control"
                            placeholder="Введите примечание тут...">
                </textarea>
                </#if>
            </div>
          </div>
            <#if !appointment??>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Записаться" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>
            </#if>
        </form>
      </div>

      <div class="col-md-5">

        <div class="p-4 mb-3 bg-white">
          <p class="mb-0 font-weight-bold">Адрес</p>
          <p class="mb-4">23, Молотова-Ребинтропа, Минск, Беларусь</p>

          <p class="mb-0 font-weight-bold">Телефон</p>
          <p class="mb-4"><a href="#">+375 29 888 77 66</a></p>

          <p class="mb-0 font-weight-bold">Электронный адрес</p>
          <p class="mb-0"><a href="#">beautyplace1@gmail.com</a></p>
        </div>

          <#if appointment??>
            <div class="p-4 mb-3 bg-white">
              <h3 class="h5 text-black mb-3">Действие</h3>
              <p><a href="#" class="btn btn-primary px-4 py-2 text-white">Оставить отзыв о мастере</a></p>
              <p><a href="#" class="btn btn-primary px-4 py-2 text-white">Оставить отзыв о салоне</a></p>
              <p><a href="#" data-toggle="modal" data-target="#modalnotes" class="btn btn-primary px-4 py-2 text-white">
                      <#if !appointment.clientNote?? || appointment.clientNote==''>Примечаине к записи<#else> Изменить примечание к записи</#if></a></p>
            </div>
          </#if>
      </div>
    </div>
  </div>

    <#if appointment??>
      <div class="modal fade" id="modalnotes" tabindex="-1" role="dialog" aria-labelledby="modalnotes"
           aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-primary text-white">
              <h5 class="modal-title" id="exampleModalLabel">Примечание к записи</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="/appointment/create/note/${appointment.id}" method="post">
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
    </#if>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="/static/js/infoLoader.js"></script>

</@base.page>