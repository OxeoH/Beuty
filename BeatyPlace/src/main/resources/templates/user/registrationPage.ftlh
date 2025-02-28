<!DOCTYPE html>
<html lang="">
<head>
  <title>Регистрация</title>
</head>
<body>
<h2>Регистрация</h2>
<script>
  <#if registrationError??>
  alert('${registrationError?string}')
  </#if>
</script>

<form action="/user/registrations" method="post">
  <label>Имя пользователя:</label>
  <label>
    <input type="text" name="fullName"/>
  </label>

  <label>Логин:</label>
  <label>
    <input type="text" name="username"/>
  </label>

  <label>Email:</label>
  <label>
    <input type="email" name="email"/>
  </label>

  <label>Пароль:</label>
  <label>
    <input type="password" name="password"/>
  </label>

  <button type="submit">Зарегистрироваться</button>
</form>
</body>
</html>
