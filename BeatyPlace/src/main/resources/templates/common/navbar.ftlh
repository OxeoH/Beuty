<#include "security.ftlh">

<header class="site-navbar py-1" role="banner">
  <div class="container-fluid">
    <div class="row align-items-center">

      <div class="col-6 col-xl-2" data-aos="fade-down">
        <h1 class="mb-0"><a href="/" class="text-black h2 mb-0">BeautyPlace</a></h1>
      </div>
      <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
        <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

          <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
            <li>
              <a href="/">Главная</a>
            </li>
            <li class="has-children">
              <a href="#">Процедуры</a>
              <ul class="dropdown">
                  <#if categoryList??>
                      <#list categoryList as category>
                        <li><a href="/appointment/category/${category.id}">${category.getName()}</a></li>
                      </#list>
                  </#if>
              </ul>
            </li>
              <#if user??>
                <li>
                  <a href="/appointment/">Ваши записи</a>
                </li>
              </#if>
            <li><a href="/services">Процедуры</a></li>
            <li><a href="/about">О нас</a></li>
            <li><a href="/contactus">Контакты</a></li>
          </ul>
        </nav>
      </div>

      <div class="col-6 col-xl-2 text-left" data-aos="fade-down">
        <div class="d-none d-xl-inline-block">
          <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
              <#if !user??>
                <li>
                  <a href="/login" class="pl-3 pr-3 text-black"><span class="icon-user-circle" style="font-size: 24px;"></span></a>
                </li>
              </#if>
              <#if user??>
                <li>
                  <form action="/logout" method="post">
                    <button type="submit" class="border-0 bg-transparent p-0">
                      <span class="icon-exit_to_app" style="font-size: 24px;"></span>
                    </button>
                  </form>
                </li>
                  <#if isMaster>
                    <li class="nav-item dropdown">
                      <a href="#" id="notificationBell" class="pl-2 pr-2 text-black position-relative">
                        <span class="icon-notifications" style="font-size: 24px;"></span>

                        <!-- Красная точка -->
                        <span id="notificationCount"
                              class="position-absolute"
                              style="width: 7px; height: 7px; background-color: red; border-radius: 50%;
                 display: none; top: -5px; right: 10px;">
    </span>
                      </a>

                      <!-- Выпадающий список уведомлений -->
                      <ul id="notificationList" class="dropdown-menu p-2 shadow"
                          style="display: none; position: absolute; right: 0; max-height: 200px; overflow-y: auto; width: 200px;">
                        <li><p class="text-muted">Нет новых уведомлений</p></li>
                      </ul>
                    </li>

                  </#if>
              </#if>
          </ul>
        </div>

        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#"
                                                                                                            class="site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a></div>


      </div>

    </div>
  </div>

  <script src="/static/js/sockjs.min.js"></script>
  <script src="/static/js/stomp.min.js"></script>
    <#if user?? && isMaster>
      <script>
        document.addEventListener('DOMContentLoaded', function () {
          const socket = new SockJS('/ws');
          const stompClient = Stomp.over(socket);

          const notificationBell = document.getElementById('notificationBell');
          const notificationCountElement = document.getElementById('notificationCount');
          const notificationList = document.getElementById('notificationList');

          const currentUserId = document.getElementById('notificationCount').getAttribute('data-user-id');

          function updateNotificationCount(count) {
            if (count > 0) {
              notificationCountElement.style.display = 'block';
            } else {
              notificationCountElement.style.display = 'none';
            }
          }

          function loadNotifications() {
            const notifications = JSON.parse(localStorage.getItem('notifications')) || {};
            const userNotifications = notifications[currentUserId] || [];
            updateNotificationCount(userNotifications.length);
            renderNotifications(userNotifications);
          }

          function renderNotifications(notifications) {
            notificationList.innerHTML = '';

            if (notifications.length === 0) {
              notificationList.innerHTML = '<li><p style="font-size: 10px; font-weight: bold" class="text-muted">Нет новых уведомлений</p></li>';
            } else {
              notifications.forEach((notification, index) => {
                const li = document.createElement('li');
                li.innerHTML = "<p style='font-size: 10px; font-weight: bold' class='dropdown-item'>" + notification.message
                    + "</p>";

                li.addEventListener("click", function () {
                  notifications.splice(index, 1);
                  saveNotifications(notifications);
                  updateNotificationCount(notifications.length);
                  renderNotifications(notifications);
                });

                notificationList.appendChild(li);
              });
            }
          }

          function saveNotifications(notifications) {
            const allNotifications = JSON.parse(localStorage.getItem('notifications')) || {};
            allNotifications[currentUserId] = notifications;
            localStorage.setItem('notifications', JSON.stringify(allNotifications));
          }

          stompClient.connect({}, function () {
            stompClient.subscribe(`/user/${currentUserId}/topic/notifications`, function (messageOutput) {
              const notification = messageOutput.body;

              let parsedNotification;
              try {
                parsedNotification = JSON.parse(notification);
              } catch (e) {
                parsedNotification = notification;
              }

              const notifications = JSON.parse(localStorage.getItem('notifications')) || {};
              if (!notifications[currentUserId]) {
                notifications[currentUserId] = [];
              }

              notifications[currentUserId].push(parsedNotification);
              localStorage.setItem('notifications', JSON.stringify(notifications));

              updateNotificationCount(notifications[currentUserId].length);
              renderNotifications(notifications[currentUserId]);
            });
          });

          notificationBell.addEventListener('click', function (event) {
            event.preventDefault();
            notificationList.style.display = notificationList.style.display === 'none' ? 'block' : 'none';
          });

          loadNotifications();
        });

      </script>
    </#if>
</header>