<#import "common/base.ftlh" as base>

<@base.page>
  <div class="container-fluid py-2">
    <div class="row">
      <div class="ms-3">
        <h3 class="mb-0 h4 font-weight-bolder">Главная</h3>
        <p class="mb-4">
          Статистика по записям салона.
        </p>
      </div>
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
          <div class="card-header p-2 ps-3">
            <div class="d-flex justify-content-between">
              <div>
                <p class="text-sm mb-0 text-capitalize">Заработано сегодня</p>
                <h4 class="mb-0">BYN ${totalEarnToday}</h4>
              </div>
              <div class="icon icon-md icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-lg">
                <i class="material-symbols-rounded opacity-10">weekend</i>
              </div>
            </div>
          </div>
          <hr class="dark horizontal my-0">
          <div class="card-footer p-2 ps-3">
            <p class="mb-0 text-sm"><span class="text-success font-weight-bolder">+55% </span>чем на прошлой неделе</p>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
          <div class="card-header p-2 ps-3">
            <div class="d-flex justify-content-between">
              <div>
                <p class="text-sm mb-0 text-capitalize">Клиентов сегодня</p>
                <h4 class="mb-0">${clientToday}</h4>
              </div>
              <div class="icon icon-md icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-lg">
                <i class="material-symbols-rounded opacity-10">person</i>
              </div>
            </div>
          </div>
          <hr class="dark horizontal my-0">
          <div class="card-footer p-2 ps-3">
            <p class="mb-0 text-sm"><span class="text-success font-weight-bolder">+3% </span>чем в прошлом месяца</p>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
          <div class="card-header p-2 ps-3">
            <div class="d-flex justify-content-between">
              <div>
                <p class="text-sm mb-0 text-capitalize">Клиентов за прошлый месяц</p>
                <h4 class="mb-0">${clientLastMonth}</h4>
              </div>
              <div class="icon icon-md icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-lg">
                <i class="material-symbols-rounded opacity-10">leaderboard</i>
              </div>
            </div>
          </div>
          <hr class="dark horizontal my-0">
          <div class="card-footer p-2 ps-3">
            <p class="mb-0 text-sm"><span class="text-danger font-weight-bolder">-2% </span>чем в прошлом месяце</p>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6">
        <div class="card">
          <div class="card-header p-2 ps-3">
            <div class="d-flex justify-content-between">
              <div>
                <p class="text-sm mb-0 text-capitalize">Заработано за месяц</p>
                <h4 class="mb-0">BYN ${totalEarnLastMonth}</h4>
              </div>
              <div class="icon icon-md icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-lg">
                <i class="material-symbols-rounded opacity-10">weekend</i>
              </div>
            </div>
          </div>
          <hr class="dark horizontal my-0">
          <div class="card-footer p-2 ps-3">
            <p class="mb-0 text-sm"><span class="text-success font-weight-bolder">+5% </span>чем в прошлом месяце</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4 col-md-6 mt-4 mb-4">
        <div class="card">
          <div class="card-body">
            <h6 class="mb-0 ">Посещение салона по дням недели</h6>
            <p class="text-sm ">Текущая статистика</p>
            <div class="pe-2">
              <div class="chart">
                <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
              </div>
            </div>
            <hr class="dark horizontal">
            <div class="d-flex ">
              <i class="material-symbols-rounded text-sm my-auto me-1">schedule</i>
              <p class="mb-0 text-sm">Обновлено 1 день назад </p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mt-4 mb-4">
        <div class="card ">
          <div class="card-body">
            <h6 class="mb-0 "> Клиентов по месяцам </h6>
            <p class="text-sm "> (<span class="font-weight-bolder">+15%</span>) рост от прошлого года. </p>
            <div class="pe-2">
              <div class="chart">
                <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
              </div>
            </div>
            <hr class="dark horizontal">
            <div class="d-flex ">
              <i class="material-symbols-rounded text-sm my-auto me-1">schedule</i>
              <p class="mb-0 text-sm"> обновлено 3 месяца назад </p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mt-4 mb-3">
        <div class="card">
          <div class="card-body">
            <h6 class="mb-0 ">Количество обращений</h6>
            <p class="text-sm ">За прошлый год</p>
            <div class="pe-2">
              <div class="chart">
                <canvas id="chart-line-tasks" class="chart-canvas" height="170"></canvas>
              </div>
            </div>
            <hr class="dark horizontal">
            <div class="d-flex ">
              <i class="material-symbols-rounded text-sm my-auto me-1">schedule</i>
              <p class="mb-0 text-sm">Обновлено 3 месяца назад</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row mb-4">
      <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
        <div class="card">
          <div class="card-header pb-0">
            <div class="row">
              <div class="col-lg-6 col-7">
                <h6>Записи по процедурам</h6>
                <p class="text-sm mb-0">
                  <i class="fa fa-check text-info" aria-hidden="true"></i>
                  <span class="font-weight-bold ms-1"></span> в этом месяце
                </p>
              </div>
              <div class="col-lg-6 col-5 my-auto text-end">
                <div class="dropdown float-lg-end pe-4">
                  <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-ellipsis-v text-secondary"></i>
                  </a>
                  <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                    <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                    <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                    <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="card-body px-0 pb-2">
            <div class="table-responsive">
              <table class="table align-items-center mb-0">
                <thead>
                <tr>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Процедура</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Мастера</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Сумма</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Процент от плана
                  </th>
                </tr>
                </thead>
                <tbody>
                <#list categoryList as category>
                    <#assign appointmentSize = category.appointments?size/>
                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="/static/admin/img/small-logos/category.svg" class="avatar avatar-sm me-3" alt="xd">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${category.name}</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                        <#if category.masters?size gt 0>
                          <div class="avatar-group mt-2">
                              <#list category.masters as master>
                                <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip"
                                   data-bs-placement="bottom" title="${master.fullName}">
                                  <img src="/static/admin/img/small-logos/master.svg" alt="team1">
                                </a>
                              </#list>
                          </div>
                        <#else>
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">Мастеров нет</h6>
                          </div>
                        </#if>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="text-xs font-weight-bold"> BYN ${category.price * appointmentSize} </span>
                    </td>
                    <td class="align-middle">
                        <#assign randomValue = randomSupplier.get()/>
                      <div class="progress-wrapper w-75 mx-auto">
                        <div class="progress-info">
                          <div class="progress-percentage">
                            <span class="text-xs font-weight-bold"><#if appointmentSize gt 0>${randomValue}<#else>0</#if>%</span>
                          </div>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-gradient-info w-<#if appointmentSize gt 0>${randomValue}<#else>0</#if>"
                               role="progressbar"
                               aria-valuenow="${randomValue}" aria-valuemin="0"
                               aria-valuemax="100"></div>
                        </div>
                      </div>
                    </td>
                  </tr>
                </#list>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="card h-100">
          <div class="card-header pb-0">
            <h6>Последние записи</h6>
            <p class="text-sm">
              <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
              <span class="font-weight-bold">24%</span> в этом месяце
            </p>
          </div>
          <div class="card-body p-3">
            <div class="timeline timeline-one-side">
                <#list lastAppointment as appointment>
                  <div class="timeline-block mb-3">
                  <span class="timeline-step">
                    <i class="material-symbols-rounded text-info text-gradient">shopping_cart</i>
                  </span>
                    <div class="timeline-content">
                      <h6 class="text-dark text-sm font-weight-bold mb-0">${appointment.client.fullName}</h6>
                      <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">${appointment.workSchedule.date}</p>
                    </div>
                  </div>
                </#list>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="/static/admin/js/core/popper.min.js"></script>
  <script src="/static/admin/js/core/bootstrap.min.js"></script>
  <script src="/static/admin/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="/static/admin/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="/static/admin/js/plugins/chartjs.min.js"></script>
  <script>
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["П", "В", "С", "Ч", "П", "СБ", "ВС"],
        datasets: [{
          label: "Посещений",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "#43A047",
          data: [33, 44, 55, 11, 22, 77, 88],
          barThickness: 'flex'
        },],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: '#e5e5e5'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                lineHeight: 2
              },
              color: "#737373"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#737373',
              padding: 10,
              font: {
                size: 14,
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx2 = document.getElementById("chart-line").getContext("2d");

    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ["ЯН", "ФВ", "МТ", "AР", "M", "ИН", "ИЛ", "АВ", "СТ", "ОК", "НБ", "ДК"],
        datasets: [{
          label: "Клиентов",
          tension: 0,
          borderWidth: 2,
          pointRadius: 3,
          pointBackgroundColor: "#43A047",
          pointBorderColor: "transparent",
          borderColor: "#43A047",
          backgroundColor: "transparent",
          fill: true,
          data: [671, 566, 411, 521, 765, 875, 222, 986, 1123, 1091, 897, 314],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          },
          tooltip: {
            callbacks: {
              title: function (context) {
                const fullMonths = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь",
                  "Ноябрь", "Декабрь"];
                return fullMonths[context[0].dataIndex];
              }
            }
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [4, 4],
              color: '#e5e5e5'
            },
            ticks: {
              display: true,
              color: '#737373',
              padding: 10,
              font: {
                size: 12,
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#737373',
              padding: 10,
              font: {
                size: 12,
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

    new Chart(ctx3, {
      type: "line",
      data: {
        labels: ["Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"],
        datasets: [{
          label: "Обращений",
          tension: 0,
          borderWidth: 2,
          pointRadius: 3,
          pointBackgroundColor: "#43A047",
          pointBorderColor: "transparent",
          borderColor: "#43A047",
          backgroundColor: "transparent",
          fill: true,
          data: [34, 12, 32, 44, 9, 55, 35, 66, 24],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [4, 4],
              color: '#e5e5e5'
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#737373',
              font: {
                size: 14,
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [4, 4]
            },
            ticks: {
              display: true,
              color: '#737373',
              padding: 10,
              font: {
                size: 14,
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <script src="/static/admin/js/material-dashboard.min.js?v=3.2.0"></script>
</@base.page>