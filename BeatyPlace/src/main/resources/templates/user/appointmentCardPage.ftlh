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
                <#if appointment??>
                    <#if isMaster>Запись к вам <#else>Ваша запись</#if>
                  на ${appointment.workSchedule.date}
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
                  <select name="idles" id="idles" class="form-control" required>
                    <option value="" selected disabled>Выберите процедуру</option>
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
              <label class="text-black"
                     for="master"><#if appointment??>Ваш <#if isMaster>клиент <#else>мастер:</#if><#else>Выберите мастера:</#if></label>
                <#if appointment??>
                  <select name="master" id="master" class="form-control" readonly>
                    <option selected
                            disabled><#if isMaster>${appointment.client.fullName}<#else>${appointment.master.fullName}</#if></option>
                  </select>
                <#else>
                  <select name="master" id="master" class="form-control" required>
                    <option value="" selected disabled>Сначала выберите процедуру</option>
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
                  <select name="time" id="time" class="form-control" required>
                    <option value="" selected disabled>Сначала выберите мастера</option>
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
                  <input type="submit" value="Записаться" class="btn btn-black py-3 px-5">
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
              <#if !isMaster>
                <div class="p-4 mb-3 bg-white">
                  <h3 class="h5 text-black mb-3">Действие</h3>
                  <p><a href="#" data-toggle="modal" data-target="#modalmasterreview"
                        class="btn btn-black py-3 px-5">Оставить
                      отзыв о мастере</a></p>
                  <p><a href="#" data-toggle="modal" data-target="#modalsalonreview" class="btn btn-black py-3 px-5">Оставить
                      отзыв о салоне</a></p>
                  <p><a href="#" data-toggle="modal" data-target="#modalnotes" class="btn btn-black py-3 px-5">
                          <#if !appointment.clientNote?? || appointment.clientNote==''>Примечаине к записи<#else> Изменить примечание к записи</#if></a>
                  </p>
                </div>
              </#if>
          </#if>
      </div>
    </div>
  </div>

    <#if appointment??>
        <#if !isMaster>
          <div class="modal fade" id="modalnotes" tabindex="-1" aria-labelledby="modalnotes" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                  <h5 class="modal-title">Примечание к записи</h5>
                  <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="/appointment/create/note/${appointment.id}" method="post" id="noteForm">
                    <div class="form-group">
                      <label class="text-black" for="notes">Примечание</label>
                      <textarea name="notes" id="notes" cols="30" rows="5" class="form-control"
                                placeholder="Введите примечание тут..." required></textarea>
                      <small class="text-danger d-none" id="notesError">Минимальная длина примечания — 5 символов</small>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Записаться</button>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
                </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="modalsalonreview" tabindex="-1" aria-labelledby="modalsalonreview" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                  <h5 class="modal-title">Отзыв о салоне</h5>
                  <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="/appointment/create/feedback/salon" method="post" id="salonReviewForm">
                    <div class="form-group">
                      <label class="text-black" for="salonComment">Отзыв о салоне</label>
                      <textarea name="comment" id="salonComment" cols="30" rows="5" class="form-control"
                                placeholder="Введите отзыв тут..." required></textarea>
                      <small class="text-danger d-none" id="salonCommentError">Минимальная длина отзыва — 10 символов</small>
                    </div>
                    <div class="form-group">
                      <label class="text-black" for="salonRating">Оцените салон:</label>
                      <input name="rating" id="salonRating" type="number" class="form-control w-25" min="1" max="10" required>
                      <small class="text-danger d-none" id="salonRatingError">Введите число от 1 до 10</small>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Отправить</button>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
                </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="modalmasterreview" tabindex="-1" aria-labelledby="modalmasterreview" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                  <h5 class="modal-title">Отзыв о мастере</h5>
                  <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="/create/review/${appointment.id}" method="post" id="reviewForm">
                    <div class="form-group">
                      <label class="text-black" for="comment">Отзыв о мастере</label>
                      <textarea name="comment" id="comment" cols="30" rows="5" class="form-control"
                                placeholder="Введите отзыв тут..." required></textarea>
                      <small class="text-danger d-none" id="commentError">Минимальная длина отзыва — 10 символов</small>
                    </div>
                    <div class="form-group">
                      <label class="text-black" for="rating">Оцените салон:</label>
                      <input name="rating" id="rating" type="number" class="form-control w-25" min="1" max="10" required>
                      <small class="text-danger d-none" id="ratingError">Введите число от 1 до 10</small>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Отправить</button>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
                </div>
              </div>
            </div>
          </div>
        </#if>
    </#if>
  <script>
    document.getElementById('reviewForm').addEventListener('submit', function(event) {
      let isValid = true;

      const comment = document.getElementById('comment').value.trim();
      const commentError = document.getElementById('commentError');
      if (comment.length < 10) {
        commentError.classList.remove('d-none');
        isValid = false;
      } else {
        commentError.classList.add('d-none');
      }
      const rating = document.getElementById('rating').value;
      const ratingError = document.getElementById('ratingError');
      if (rating < 1 || rating > 10 || isNaN(rating)) {
        ratingError.classList.remove('d-none');
        isValid = false;
      } else {
        ratingError.classList.add('d-none');
      }

      if (!isValid) {
        event.preventDefault();
      }
    });
  </script>

  <script>
    document.getElementById('salonReviewForm').addEventListener('submit', function(event) {
      let isValid = true;

       const comment = document.getElementById('salonComment').value.trim();
      const commentError = document.getElementById('salonCommentError');
      if (comment.length < 10) {
        commentError.classList.remove('d-none');
        isValid = false;
      } else {
        commentError.classList.add('d-none');
      }

       const rating = document.getElementById('salonRating').value;
      const ratingError = document.getElementById('salonRatingError');
      if (rating < 1 || rating > 10 || isNaN(rating)) {
        ratingError.classList.remove('d-none');
        isValid = false;
      } else {
        ratingError.classList.add('d-none');
      }

      if (!isValid) {
        event.preventDefault();
      }
    });
  </script>

  <script>
    document.getElementById('noteForm').addEventListener('submit', function(event) {
      const notes = document.getElementById('notes').value.trim();
      const notesError = document.getElementById('notesError');
      if (notes.length < 5) {
        notesError.classList.remove('d-none');
        event.preventDefault();
      } else {
        notesError.classList.add('d-none');
      }
    });
  </script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="/static/js/infoLoader.js"></script>

</@base.page>