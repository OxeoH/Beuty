<#import "../common/base.ftlh" as base>
<#include "../common/security.ftlh">

<@base.page>
  <h2>Восстановления пароля</h2>

  <form action="/user/send-reset-password" method="post">

    <label>Email:</label>
    <label>
      <input type="email" name="email"/>
    </label>

    <button type="submit">Восстановить</button>
  </form>
</@base.page>
