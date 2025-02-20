<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <title>Notifications</title>
  <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.6.1/dist/sockjs.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/stompjs@2.3.3/lib/stomp.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      if (typeof SockJS === 'undefined' || typeof Stomp === 'undefined') {
        console.error('SockJS or Stomp is not loaded. Check network or CDN.');
        return;
      }

      const savedNotifications = JSON.parse(localStorage.getItem('notifications') || '[]');
      const notificationList = document.getElementById('notificationList');
      savedNotifications.forEach(notification => {
        const li = document.createElement('li');
        li.textContent = notification;
        notificationList.appendChild(li);
      });

      const socket = new SockJS('http://localhost:8080/notifications');
      const stompClient = Stomp.over(socket);

      stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/notifications', function (message) {
          const notification = message.body;
          const li = document.createElement('li');
          li.textContent = notification;
          notificationList.appendChild(li);

          const notifications = JSON.parse(localStorage.getItem('notifications') || '[]');
          notifications.push(notification);
          localStorage.setItem('notifications', JSON.stringify(notifications.slice(-100))); // Ограничим до 100 записей
        });
      });

      socket.onclose = function () {
        console.log('Disconnected');
      };

      socket.onerror = function (error) {
        console.error('Error: ' + error);
      };
    });
  </script>
</head>
<body>
<h1>Notifications</h1>
<ul id="notificationList"></ul>
</body>
</html>