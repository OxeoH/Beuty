<#import "../common/base.ftlh" as base>
<#include "../common/security.ftlh">

<@base.page>
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

<body class="d-flex justify-content-center align-items-center vh-100 bg-light">
<div class="card p-4 shadow-lg" style="max-width: 400px; width: 100%;">
  <h3 class="text-center mb-3">Смена пароля</h3>
  <form action="/user/change-password/${resetCode}" method="POST" onsubmit="return validatePasswords()">
    <input type="hidden" name="token" value="{token}">

    <div class="mb-3">
      <label for="password" class="form-label">Новый пароль</label>
      <input type="password" class="form-control" id="password" name="password" required>
    </div>

    <div class="mb-3">
      <label for="confirmPassword" class="form-label">Подтвердите пароль</label>
      <input type="password" class="form-control" id="confirmPassword" required>
    </div>

    <div id="error-message" class="text-danger mb-3"></div>

    <button type="submit" class="btn btn-primary w-100">Сменить пароль</button>
  </form>
</div>
</@base.page>
