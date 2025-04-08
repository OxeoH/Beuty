<#include "security.ftlh">
<#macro page>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="/static/admin/img/apple-icon.png">
    <link rel="icon" type="image/png" href="/static/admin/img/logo.png">
    <title>
      Админ панель BeautyPlace
    </title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700,900"/>
    <link href="/static/admin/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="/static/admin/css/nucleo-svg.css" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <link id="pagestyle" href="/static/admin/css/material-dashboard.css?v=3.2.0" rel="stylesheet"/>
  </head>
  <body class="g-sidenav-show  bg-gray-100">
  <#include "navbar.ftlh"/>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-3 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Страницы</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Главная</li>
          </ol>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <label class="form-label">Поиск...</label>
              <input type="text" class="form-control">
            </div>
          </div>
          <ul class="navbar-nav d-flex align-items-center  justify-content-end">
            <li class="nav-item dropdown">
              <a href="#"  class="nav-link text-body p-0" id="notificationBell" data-bs-toggle="dropdown"
                 aria-expanded="false">
                <i class="material-symbols-rounded">notifications</i>
                <span id="notificationCount"
                      class="position-absolute"
                      style="width: 7px; height: 7px; background-color: red; border-radius: 50%;
                 display: none; top: -5px; right: 10px;">
                </span>
              </a>
              <ul id="notificationList" class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
                  aria-labelledby="dropdownMenuButton"
                  style="display: none; position: absolute; right: 0; max-height: 200px; overflow-y: auto; width: 200px;">
                <li><p class="text-muted">Нет новых уведомлений</p></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
      <#nested/>
  </main>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
  <script></script>
  <script src="/static/admin/js/core/popper.min.js"></script>
  <script src="/static/admin/js/core/bootstrap.min.js"></script>
  <script src="/static/admin/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="/static/admin/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="/static/admin/js/plugins/chartjs.min.js"></script>

  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <script src="/static/admin/js/material-dashboard.min.js?v=3.2.0"></script>
  <script>
    function downloadAndRedirect(event) {
      event.preventDefault();
      const iframe = document.createElement('iframe');
      iframe.style.display = 'none';
      iframe.src = '/admin/export/excel';
      document.body.appendChild(iframe);

      setTimeout(() => {
        document.body.removeChild(iframe);
      }, 1000);

      setTimeout(() => {
        window.location.href = '/admin/';
      }, 500);
    }
  </script>

  <script src="/static/user/js/sockjs.min.js"></script>
  <script src="/static/user/js/stomp.min.js"></script>
  <#if user?? && (isMaster || isAdmin)>
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

        function markAsRead(notificationId) {
          fetch(`http://localhost:8080/api/notifications/read/` + notificationId, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json'
            }
          })
          .then(response => {
            if (response.ok) {
              console.log(`Notification marked as read`);
            } else {
              console.error(`Failed to mark notification as read`);
            }
          })
          .catch(error => {
            console.error('Error marking notification as read:', error);
          });
        }

        function fetchUnreadNotifications() {
          const currentUserId = "${currentUserId?replace(' ', '')?replace(' ', '')}";

          fetch(`http://localhost:8080/api/notifications/unread/` + currentUserId)
          .then(response => response.json())
          .then(unreadNotifications => {
            if (unreadNotifications && unreadNotifications.length > 0) {
              const notifications = JSON.parse(localStorage.getItem('notifications')) || {};
              if (!notifications[currentUserId]) {
                notifications[currentUserId] = [];
              }

              unreadNotifications.forEach(notification => {
                notifications[currentUserId].push({...notification, isRead: false});
              });

              localStorage.setItem('notifications', JSON.stringify(notifications));
              updateNotificationCount(notifications[currentUserId].filter(n => !n.isRead).length);
              renderNotifications(notifications[currentUserId]);
            }
          })
          .catch(error => {
            console.error('Error fetching unread notifications:', error);
          });
        }

        stompClient.connect({}, function () {
          const currentUserId = "${currentUserId?replace(' ', '')?replace(' ', '')}";

          stompClient.subscribe('/user/' + currentUserId + '/topic/notifications', function (messageOutput) {
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
            markAsRead(parsedNotification.id);
            updateNotificationCount(notifications[currentUserId].length);
            renderNotifications(notifications[currentUserId]);
          });
          fetchUnreadNotifications();
        });

        notificationBell.addEventListener('click', function (event) {
          event.preventDefault();
          notificationList.style.display = notificationList.style.display === 'none' ? 'block' : 'none';
        });

        loadNotifications();
      });
    </script>
  </#if>
  </body>
  </html>
</#macro>