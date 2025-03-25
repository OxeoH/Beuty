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

  <title>Восстановления пароля</title>
</head>
<body>
<div class="d-lg-flex half">
  <div class="bg order-1 order-md-2" style="background-image: url('/static/images/bg_reset_password.jpg');"></div>
  <div class="contents order-2 order-md-1">

    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7">
          <h3>Восстановление пароля в <strong>BeatuPlace</strong></h3>
          <form action="/user/send-reset-password" method="post">

            <div class="form-group last mb-3">
              <label for="email">Email</label>
              <input type="email" class="form-control" placeholder="Ваш email" id="email" name="email"
                     required title="Введите корректный email.">
              <small class="form-text text-muted">Введите корректный email (пример: user@example.com).</small>
            </div>

            <input type="submit" value="Восстановить" class="btn btn-block btn-dark">

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
