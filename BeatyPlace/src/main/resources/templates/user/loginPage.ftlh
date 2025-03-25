<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/static/fonts/icomoon/style.css">
  <link rel="stylesheet" href="/static/css/owl.carousel.min.css">
  <link rel="stylesheet" href="/static/css/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/static/css/loginStyle.css">
  <link rel="icon" href="/static/images/logo.png">

  <title>Авторизация</title>
</head>
<body>
<#if message??>
  <script>alert('${message}')</script>
</#if>
<#if errorMessage??>
  <script>alert('${errorMessage}')</script>
</#if>
<#if disabledMessage??>
  <script>alert('${disabledMessage}')</script>
</#if>
<#if blockedMessage??>
  <script>alert('${blockedMessage}')</script>
</#if>
<#if resetPasswordMessage??>
  <script>alert('${resetPasswordMessage}')</script>
</#if>
<#if tokenResetError??>
  <script>alert('${tokenResetError}')</script>
</#if>

<div class="d-lg-flex half">
  <div class="bg order-1 order-md-2" style="background-image: url('/static/images/bg_1_login.jpg');"></div>
  <div class="contents order-2 order-md-1">

    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7">
          <h3>Войти в <strong>BeautyPlace</strong></h3>
          <p class="mb-4">Для полноценного использования сервиса необходимо авторизоваться.</p>
          <form action="/login" method="post">
            <div class="form-group first">
              <label for="username">Логин или Email</label>
              <input type="text" class="form-control" placeholder="Ваш логин или email" id="username" name="username"
                     minlength="6" required pattern="^(?=.*[a-zA-Z])[a-zA-Z0-9._%+-]{6,}|^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                     title="Введите логин (минимум 6 символов, без пробелов) или корректный email.">
              <small class="form-text text-muted">Минимум 6 символов или корректный email.</small>
            </div>

            <div class="form-group last mb-3">
              <label for="password">Пароль</label>
              <input type="password" class="form-control"
                     placeholder="Ваш пароль" id="password" name="password"
                     required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                     title="Пароль должен содержать минимум 8 символов, включая хотя бы одну цифру, одну заглавную и одну строчную букву.">
              <small class="form-text text-muted">Минимум 8 символов, одна цифра, одна заглавная и одна строчная буква.</small>
            </div>


            <div class="d-flex mb-5 align-items-center">
              <span class="ml-auto" style="margin-left: 0px !important"><a href="/user/send-reset-password" class="forgot-pass">Забыл пароль</a></span>

              <span class="ml-auto"><a href="/user/registration" class="forgot-pass">Зарегистрироваться</a></span>
            </div>

            <input type="submit" value="Войти" class="btn btn-block btn-dark">

          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="/static/js/jquery-3.3.1.min.js"></script>
<script src="/static/js/popper.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/main.js"></script>
</body>
</html>