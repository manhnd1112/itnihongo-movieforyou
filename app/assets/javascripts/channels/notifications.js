$(document).ready(function() {
  (function() {
    App.notifications = App.cable.subscriptions.create({
        channel: 'NotificationsChannel'
      },
      {
        connected: function() {},
        disconnected: function() {},
        received: function(data) {
          $('.notification-counter').html(data.counter);
          $('#list-notifications').prepend('<li class="list-group-item row notify"' + 'id=' + data.id +'>' + data.content + '</li>');
        }
      });
  }).call(this);
});
