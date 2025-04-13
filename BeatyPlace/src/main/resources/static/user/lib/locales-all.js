[].push.apply(FullCalendar.globalLocales, function () {
  'use strict';

  var l26 = {
    code: 'eu',
    week: {
      dow: 1, // Monday is the first day of the week.
      doy: 7, // The week that contains Jan 1st is the first week of the year.
    },
    buttonText: {
      prev: 'Aur',
      next: 'Hur',
      today: 'Gaur',
      month: 'Hilabetea',
      week: 'Astea',
      day: 'Eguna',
      list: 'Agenda',
    },
    weekText: 'As',
    allDayText: 'Egun osoa',
    moreLinkText: 'gehiago',
    noEventsText: 'Ez dago ekitaldirik erakusteko',
  };

  var l60 = {
    code: 'ru',
    week: {
      dow: 1, // Monday is the first day of the week.
      doy: 4, // The week that contains Jan 4th is the first week of the year.
    },
    buttonText: {
      prev: 'Пред',
      next: 'След',
      today: 'Сегодня',
      month: 'Месяц',
      week: 'Неделя',
      day: 'День',
      list: 'Повестка дня',
    },
    weekText: 'Нед',
    allDayText: 'Весь день',
    moreLinkText: function(n) {
      return '+ ещё ' + n
    },
    noEventsText: 'Нет событий для отображения',
  };

  var localesAll = [ l60, l26,];

  return localesAll;

}());
