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
                        <li><a href="/appointment/category/${category.id}">${category.getName()}</a></li>
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
              <#if isMaster>
                <li><a href="/appointment/create/page">Записаться</a></li>
              </#if>
            <li><a href="/contactus">Контакты</a></li>
          </ul>
        </nav>
      </div>

      <div class="col-6 col-xl-2 text-right" data-aos="fade-down">
        <div class="d-none d-xl-inline-block">
          <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
              <#if !user??>
                <li>
                  <a href="/login" class="pl-3 pr-3 text-black"><span class="icon-user-circle"></span></a>
                </li>
              </#if>
              <#if user??>
                <li>
                  <form action="/logout" method="post">
                    <button type="submit" class="border-0 bg-transparent p-0">
                      <span class="icon-exit_to_app"></span>
                    </button>
                  </form>

                </li>
                <li>
                  <a href="/" class="pl-2 pr-2 text-black"><span class="icon-notifications"></span></a>
                </li>
              </#if>
          </ul>
        </div>

        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#"
                                                                                                            class="site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a></div>


      </div>

    </div>
  </div>

</header>