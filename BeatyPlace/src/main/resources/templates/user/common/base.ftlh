<#include "security.ftlh">
<#macro page>
  <!DOCTYPE html>
  <html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/static/user/images/logo.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <title>Beauty Salon</title>

    <!-- Bootstrap core CSS -->
    <link href="/static/user/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/user/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,200&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/static/user/lib/calendar.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700">
    <link rel="stylesheet" href="/static/user/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/static/user/css/magnific-popup.css">
    <link rel="stylesheet" href="/static/user/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/user/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/user/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/static/user/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/static/user/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    <link rel="stylesheet" href="/static/user/css/aos.css">
  </head>

<body>
<div class="site-wrap">
  <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close mt-3">
        <span class="icon-close2 js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>
    <#include "navbar.ftlh"/>
      <#nested>
    <#include "footer.ftlh"/>

</div>

<script src="/static/user/css/vendor/jquery/jquery.min.js"></script>
<script src="/static/user/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/user/js/jquery-3.3.1.min.js"></script>
<script src="/static/user/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/static/user/js/jquery-ui.js"></script>
<script src="/static/user/js/popper.min.js"></script>
<script src="/static/user/js/owl.carousel.min.js"></script>
<script src="/static/user/js/jquery.stellar.min.js"></script>
<script src="/static/user/js/jquery.countdown.min.js"></script>
<script src="/static/user/js/jquery.magnific-popup.min.js"></script>
<script src="/static/user/js/bootstrap-datepicker.min.js"></script>
<script src="/static/user/js/aos.js"></script>
<script src="/static/user/js/main.js"></script>

</#macro>