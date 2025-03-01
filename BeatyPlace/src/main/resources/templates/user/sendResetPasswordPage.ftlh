<!DOCTYPE html>
<html lang="">
<head>
  <title>Восстановления пароля</title>
</head>
<body>
<h2>Восстановления пароля</h2>

<form action="/user/send-reset-password" method="post">

  <label>Email:</label>
  <label>
    <input type="email" name="email"/>
  </label>

  <button type="submit">Восстановить</button>
</form>
</body>
</html>
