<#import "common/base.ftlh" as base>

<@base.page>
  <div class="slide-one-item home-slider owl-carousel">

    <div class="site-blocks-cover inner-page-cover" style="background-image: url(/static/images/hero_bg_2.jpg);" data-aos="fade"
         data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
            <h2 class="text-white font-weight-light mb-2 display-1">Связь с нами</h2>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="site-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-7 mb-5">

          <form action="#" class="p-5 bg-white">

            <div class="row form-group">
              <div class="col-md-6 mb-3 mb-md-0">
                <label class="text-black" for="fname">Имя</label>
                <input type="text" id="fname" class="form-control">
              </div>
              <div class="col-md-6">
                <label class="text-black" for="lname">Фамилия</label>
                <input type="text" id="lname" class="form-control">
              </div>
            </div>

            <div class="row form-group">

              <div class="col-md-12">
                <label class="text-black" for="email">Email</label>
                <input type="email" id="email" class="form-control">
              </div>
            </div>

            <div class="row form-group">

              <div class="col-md-12">
                <label class="text-black" for="subject">Тема</label>
                <input type="text" id="subject" class="form-control">
              </div>
            </div>

            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="message">Сообщение</label>
                <textarea name="message" id="message" cols="30" rows="7" class="form-control"
                          placeholder="Напишите ваше сообщение тут..."></textarea>
              </div>
            </div>

            <div class="row form-group">
              <div class="col-md-12">
                <input type="submit" value="Отправить" class="btn btn-primary py-2 px-4 text-white">
              </div>
            </div>


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

          <div class="p-4 mb-3 bg-white">
            <h3 class="h5 text-black mb-3">Детальная информации</h3>
            <p>НЕ БОЛЬШАЯ ИНФОРМАЦИЯ О САЛОНЕ</p>
            <p><a href="/about" class="btn btn-primary px-4 py-2 text-white">Подробнее</a></p>
          </div>

        </div>
      </div>
    </div>
  </div>
</@base.page>