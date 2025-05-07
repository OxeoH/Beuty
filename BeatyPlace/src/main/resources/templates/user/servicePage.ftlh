<#import "common/base.ftlh" as base>

<@base.page>
  <div class="slide-one-item home-slider owl-carousel">
    <div class="site-blocks-cover inner-page-cover" style="background-image: url(/static/user/images/hero_bg_2.jpg);" data-aos="fade"
         data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
            <h2 class="text-white font-weight-light mb-2 display-1">Наши услуги!</h2>

            <p><a href="/appointment/" class="btn btn-black py-3 px-5">Записаться!</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="site-section">
    <div class="container">

      <div class="row">
          <#list categoryList as category>
            <div class="col-md-6 col-lg-4 text-center mb-5 mb-lg-5">
              <div class="h-100 p-4 p-lg-5 bg-light site-block-feature-7">
                <span style="color: black!important;" class="icon-info-circle display-3 text-primary mb-4 d-block"></span>
                <h3 class="text-black h4">${category.name}</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum exercitationem quae id dolorum debitis.</p>
                <p><strong class="font-weight-bold text-primary" style="color:black !important;">BYN ${category.price}</strong></p>
              </div>
            </div>
          </#list>
      </div>
    </div>
  </div>

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

  <div class="site-section border-top">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-4 text-black">Ждем Вас скорее на процедуры!</h2>
          <p class="mb-0"><a href="/appointment/" class="btn btn-black py-3 px-5">Посетить салон</a></p>
        </div>
      </div>
    </div>
  </div>
</@base.page>