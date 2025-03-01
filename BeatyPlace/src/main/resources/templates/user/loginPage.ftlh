<!DOCTYPE html>
<html lang="">
<head>
  <title>Авторизация</title>
</head>
<body>
<h2>Авторизация</h2>
<#if message??>
  <p style="color: red;">${message}</p>
</#if>
<#if errorMessage??>
  <p style="color: red;">${errorMessage}</p>
</#if>

<#if disabledMessage??>
  <p style="color: red;">${disabledMessage}</p>
</#if>

<#if blockedMessage??>
  <p style="color: red;">${blockedMessage}</p>
</#if>
<#if resetPasswordMessage??>
  <p style="color: red;">${resetPasswordMessage}</p>
</#if>
<#if tokenResetError??>
  <p style="color: red;">${tokenResetError}</p>
</#if>

<form action="/login" method="post">
  <label>Логин или Email:</label>
  <input type="text" name="username"/>

  <label>Пароль:</label>
  <input type="password" name="password"/>

  <button type="submit">Войти</button>
</form>

</body>
</html>
