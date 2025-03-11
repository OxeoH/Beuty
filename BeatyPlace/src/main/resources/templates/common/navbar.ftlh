<#include "security.ftlh">

<header class="site-navbar py-1" role="banner">
  <div class="container-fluid">
    <div class="row align-items-center">

      <div class="col-6 col-xl-2" data-aos="fade-down">
        <h1 class="mb-0"><a href="/" class="text-black h2 mb-0">BeautyPlace</a></h1>
      </div>
      <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
        <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

          <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
            <li class="has-children">
              <a href="/">Главная</a>
            </li>
            <li class="has-children">
              <a href="#">Процедуры</a>
              <ul class="dropdown">
                  <#if categoryList??>
                      <#list categoryList as category>
                        <li><a href="/category/${category.id}">${category.getName()}</a></li>
                      </#list>
                  </#if>
              </ul>
            </li>
            <li>
                <#if user??>
                  <form action="/logout" method="post">
                    <button type="submit" class="btn btn-dark">Выход</button>
                  </form>
                <#else>
                  <a class="nav-link" href="/login">Войти</a>
                </#if>
            </li>
              <#if user??>
                <li>
                  <a href="/appointment/">Ваши записи</a>
                </li>
              </#if>
            <li><a href="/services">Процедуры</a></li>
            <li><a href="/about">О нас</a></li>
            <li><a href="/appointment/create/page">Записаться</a></li>
            <li><a href="/contactus">Контакты</a></li>
          </ul>
        </nav>
      </div>

      <div class="col-6 col-xl-2 text-right" data-aos="fade-down">
        <div class="d-none d-xl-inline-block">
          <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
            <li>
              <a href="facebook.com" class="pl-0 pr-3 text-black"><span class="icon-facebook"></span></a>
            </li>
            <li>
              <a href="x.com" class="pl-3 pr-3 text-black"><span class="icon-twitter"></span></a>
            </li>
            <li>
              <a href="instagram.com" class="pl-3 pr-3 text-black"><span class="icon-instagram"></span></a>
            </li>
            <li>
              <a href="youtube.com" class="pl-3 pr-3 text-black"><span class="icon-youtube-play"></span></a>
            </li>
          </ul>
        </div>

        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#"
                                                                                                            class="site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a></div>


      </div>

    </div>
  </div>

</header>