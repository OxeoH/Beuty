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

  <title>Регистрация</title>
</head>
<body>
<script>
  <#if registrationError??>
  alert('${registrationError?string}')
  </#if>
</script>

<div class="d-lg-flex half">
  <div class="bg order-1 order-md-2" style="background-image: url('/static/images/bg_registration.jpg');"></div>
  <div class="contents order-2 order-md-1">

    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7">
          <h3>Зарегистрироваться в <strong>BeatuPlace</strong></h3>
          <p class="mb-4">Для полноценного использования сервиса необходимо зарегистрироваться.</p>
          <form action="/user/registrations" method="post">

            <div class="form-group first">
              <label for="fullName">Имя пользователя</label>
              <input type="text" class="form-control" placeholder="Ваше имя и фамилия" id="fullName" name="fullName"
                     required pattern="^(?!\s*$)[A-Za-zА-Яа-яЁё\s]{2,}$"
                     title="Введите корректное имя (минимум 2 буквы, только буквы и пробелы, но не только пробелы).">
              <small class="form-text text-muted">Только буквы и пробелы, минимум 2 символа.</small>
            </div>

            <div class="form-group last mb-3">
              <label for="username">Логин</label>
              <input type="text" class="form-control" placeholder="Ваш логин" id="username" name="username"
                     required pattern="^[a-zA-Z0-9]{6,}$"
                     title="Логин должен содержать минимум 6 символов, только латинские буквы и цифры.">
              <small class="form-text text-muted">Минимум 6 символов, только латинские буквы и цифры.</small>
            </div>

            <div class="form-group first">
              <label for="email">Email</label>
              <input type="email" class="form-control" placeholder="Ваш email" id="email" name="email"
                     required pattern="^[^\s@]+@[^\s@]+\.[^\s@]+$"
                     title="Введите корректный email.">
              <small class="form-text text-muted">Введите корректный email (пример: user@example.com).</small>
            </div>

            <div class="form-group last mb-3">
              <label for="password">Пароль</label>
              <input type="password" class="form-control" placeholder="Ваш пароль" id="password" name="password"
                     required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                     title="Пароль должен содержать минимум 8 символов, включая хотя бы одну цифру, одну заглавную и одну строчную букву.">
              <small class="form-text text-muted">Минимум 8 символов, одна цифра, одна заглавная и одна строчная буква.</small>
            </div>

            <div class="d-flex mb-5 align-items-center">
              <span class="ml-auto"><a href="/login" class="forgot-pass">Войти</a></span>
            </div>

            <input type="submit" value="Зарегистрироваться" class="btn btn-block btn-dark">

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