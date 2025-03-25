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
<script>
  function validatePasswords() {
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;
    const errorMessage = document.getElementById("error-message");

    if (password !== confirmPassword) {
      errorMessage.textContent = "Пароли не совпадают!";
      return false;
    }

    if (password.length < 8) {
      errorMessage.textContent = "Пароль должен содержать минимум 8 символов!";
      return false;
    }

    return true;
  }
</script>

<div class="d-lg-flex half">
  <div class="bg order-1 order-md-2" style="background-image: url('/static/images/bg_reset_password_form.jpg');"></div>
  <div class="contents order-2 order-md-1">

    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7">
          <h3>Смена пароля в <strong>BeatuPlace</strong></h3>
          <form action="/user/change-password/${resetCode}" method="POST" onsubmit="return validatePasswords()">

            <div class="form-group first">
              <label for="newPass">Новый пароль</label>
              <input required type="password" class="form-control" placeholder="Новый пароль" id="newPass" name="password"
                     pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                     title="Пароль должен содержать минимум 8 символов, включая хотя бы одну цифру, одну заглавную и одну строчную букву.">
              <small class="form-text text-muted">Минимум 8 символов, одна цифра, одна заглавная и одна строчная буква.</small>
            </div>

            <div class="form-group last mb-3">
              <label for="confirmPassword">Подтвердите пароль</label>
              <input required type="password" class="form-control" placeholder="Подтвердите пароль" id="confirmPassword">
              <small class="form-text text-muted" id="passwordError" style="color: red; display: none;">Пароли не совпадают.</small>
            </div>


            <input type="submit" value="Сменить пароль" class="btn btn-block btn-dark">

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
