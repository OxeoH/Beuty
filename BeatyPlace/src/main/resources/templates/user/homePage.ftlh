<#import "common/base.ftlh" as base>

<@base.page>
  <!-- Слайдер -->
  <div class="slide-one-item home-slider owl-carousel">
    <div class="site-blocks-cover" style="background-image: url(/static/user/images/hero_bg_1.jpg);" data-aos="fade"
         data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
            <h5 class="text-white font-weight-light text-uppercase">Добро пожаловать в BeautyPlace</h5>
            <h2 class="text-white font-weight-light mb-2 display-1">Лучший салон красоты.</h2>

            <p><a href="/appointment/create/page" class="btn btn-black py-3 px-5">Запишитесь прямо сейчас!</a></p>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover" style="background-image: url(/static/user/images/hero_bg_2.jpg);" data-aos="fade"
         data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
            <h2 class="text-white font-weight-light mb-2 display-1">Красивые ВЫ, Здоровые ВЫ!</h2>

            <p><a href="/appointment/create/page" class="btn btn-black py-3 px-5">Запишитесь прямо сейчас!</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- О нас -->
  <div class="site-section">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-4 text-center">
          <h3 class="line-height-1 mb-3"><span class="d-block display-4 line-height-1 text-black">Добро пожаловать в</span> <span
                class="d-block display-4 line-height-1"><em class="text-primary font-weight-bold">Beauty Place</em></span></h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt architecto ab hic rem placeat eius commodi eum
            eligendi recusandae sed qui cumque quibusdam.</p>
          <p><a href="/about"><small class="text-uppercase font-weight-bold">Подробнее</small></a></p>
        </div>
        <div class="col-md-6 col-lg-4">
          <figure class="h-100 hover-bg-enlarge">
            <div class="bg-image h-100 bg-image-md-height" style="background-image: url('/static/user/images/img_2.jpg');"></div>
          </figure>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="border p-4 d-flex align-items-center justify-content-center h-100">
            <div class="text-center">
              <h2 class="text-primary h2 mb-5">Рабочие часы</h2>
              <p class="mb-4">
                <span class="d-block font-weight-bold">Пн. – Пт. </span>
                09:00 – 20:30
              </p>

              <p class="mb-4">
                <span class="d-block font-weight-bold">Воскресенье</span>
                Выходной
              </p>

              <p class="mb-4">
                <span class="d-block font-weight-bold">Суббота</span>
                10:00 – 20:30
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Услуги -->
  <div class="site-section">
    <div class="container">
      <div class="row justify-content-center mb-5">
        <div class="col-md-7">
          <h2 class="site-section-heading font-weight-light text-black text-center">Наши услуги</h2>
        </div>
      </div>

      <div class="row">
          <#list categoryList as category>
            <div class="col-md-6 col-lg-4 text-center mb-5 mb-lg-5">
              <div class="h-100 p-4 p-lg-5 bg-light site-block-feature-7">
                <span style="color: black!important;" class="icon-info-circle display-3 text-primary mb-4 d-block"></span>
                <h3 class="text-black h4">${category.getName()}</h3>
                <p>Придумать описание</p>
                <p><strong class="font-weight-bold text-primary">BYN ${category.price}</strong></p>
              </div>
            </div>
          </#list>
      </div>
    </div>
  </div>

  <!-- Цитата -->
  <div class="site-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mb-5">
          <img src="/static/user/images/coco.jpg" style="max-width: 650px; max-height: 570px" alt="Image" class="img-md-fluid">
        </div>
        <div class="col-lg-6 bg-white p-md-5 align-self-center">
          <h2 class="display-1 text-black line-height-1 site-section-heading mb-4 pb-3">Новый образ!</h2>
          <p class="text-black lead"><em>&ldquo;Красота начинается с уверенности в себе и умения принимать свою индивидуальность.&rdquo;</em></p>
          <p class="lead text-black">&mdash; <em>Коко Шанель</em></p>
        </div>
      </div>
    </div>
  </div>

  <!-- Наши работы -->
  <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(/static/user/images/hero_bg_2.jpg); background-attachment: fixed;">
    <div class="container">
      <div class="row align-items-center justify-content-center text-center">

        <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
          <h2 class="text-white font-weight-light mb-5 display-3">Наши работы</h2>
          <a href="https://www.youtube.com/watch?v=5oQSie6Rk0Y" class="play-single-big d-inline-block popup-vimeo"><span class="icon-play"></span></a>
        </div>
      </div>
    </div>
  </div>
</@base.page>