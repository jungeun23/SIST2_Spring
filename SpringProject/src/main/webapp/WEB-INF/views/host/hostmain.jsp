<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div id="myclass_content">
        <div class="class_manage_main_box class_user">
          <h1
            style="
              margin-bottom: 50px;
              color: rgb(119, 119, 119);
              font-size: 35px;
              font-weight: bold;
            "
          >
            안녕하세요.<br />${name} 호스트님
          </h1>
          <span id="edit_host_info"><a href="#!">개인정보수정</a></span>
          <span style="color: rgb(119, 119, 119); margin-top: 50px"
            ><a href="#!">하비러비 홈페이지 &gt;</a></span
          >
        </div>

        <div class="class_manage_main_box class_notice">
          <h3 style="padding-bottom: 10px; border-bottom: 4px solid #ccc">
            공지사항<span
              style="font-size: 15px; float: right; padding-top: 20px"
              ><a href="">더보기+</a></span
            >
          </h3>

          <a href=""
            ><div class="hobbylovey_notice">
              <div class="notice_category">공지</div>
              <div class="notice_title">공지사항 제목입니다. 환영합니다</div>
              <div class="notice_regdate">2021-08-23</div>
            </div></a
          >
          <a href=""
            ><div class="hobbylovey_notice">
              <div class="notice_category">이벤트</div>
              <div class="notice_title">
                공지사항 제목입니다. 환영합니다ㅇㅇㅇㅇㅇ
              </div>
              <div class="notice_regdate">2021-08-23</div>
            </div></a
          >

          <a href="">
            <div class="hobbylovey_notice">
              <div class="notice_category">분류</div>
              <div class="notice_title">공지사항 제목입니다. 환영합니다</div>
              <div class="notice_regdate">2021-08-23</div>
            </div>
          </a>
        </div>

        <div
          class="class_manage_main_box class_statistics_box"
          style="padding: 0px"
        >
          <div class="class_statistics">
            <div class="class_statistics_subject">클래스 수</div>
            <h3 class="class_statistics_count">20</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">신청자 수</div>
            <h3 class="class_statistics_count">20</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">총 신청자 수</div>
            <h3 class="class_statistics_count">20</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">남겨진 후기</div>
            <h3 class="class_statistics_count">20</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">평균 평점</div>
            <h3 class="class_statistics_count">4.5</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">??</div>
            <h3 class="class_statistics_count">20</h3>
          </div>
        </div>

        <div class="class_manage_main_box class_income_box" style="padding: 0">
          <div class="income_box">
            <span class="income_subject">이번달 매출액</span>
            <h3>1,000,000</h3>
          </div>

          <div class="income_box">
            <span class="income_subject">전체 매출액</span>
            <h3>2,000,000</h3>
          </div>
        </div>

        <div class="class_manage_main_box" style="padding: 0">
          <figure class="highcharts-figure">
            <div id="pie_chart"></div>
          </figure>
        </div>

        <div class="class_manage_main_box" style="padding: 0">
          <figure class="highcharts-figure">
            <div id="bar_chart"></div>
          </figure>
        </div>
      </div>
    </div>

    <script type="text/javascript">
      Highcharts.chart('bar_chart', {
        chart: {
          type: 'column',
        },
        title: {
          text: 'Monthly Average Rainfall',
        },
        subtitle: {
          text: 'Source: WorldClimate.com',
        },
        xAxis: {
          categories: [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'May',
            'Jun',
            'Jul',
            'Aug',
            'Sep',
            'Oct',
            'Nov',
            'Dec',
          ],
          crosshair: true,
        },
        yAxis: {
          min: 0,
          title: {
            text: 'Rainfall (mm)',
          },
        },
        tooltip: {
          headerFormat:
            '<span style="font-size:10px">{point.key}</span><table>',
          pointFormat:
            '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
          footerFormat: '</table>',
          shared: true,
          useHTML: true,
        },
        plotOptions: {
          column: {
            pointPadding: 0.2,
            borderWidth: 0,
          },
        },
        series: [
          {
            name: 'Tokyo',
            data: [
              49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4,
              194.1, 95.6, 54.4,
            ],
          },
          {
            name: 'New York',
            data: [
              83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5,
              106.6, 92.3,
            ],
          },
          {
            name: 'London',
            data: [
              48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3,
              51.2,
            ],
          },
          {
            name: 'Berlin',
            data: [
              42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8,
              51.1,
            ],
          },
        ],
      });
    </script>

    <script type="text/javascript">
      Highcharts.chart('pie_chart', {
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie',
        },
        title: {
          text: 'Browser market shares in January, 2018',
        },
        tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>',
        },
        accessibility: {
          point: {
            valueSuffix: '%',
          },
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
              format: '<b>{point.name}</b>: {point.percentage:.1f} %',
            },
          },
        },
        series: [
          {
            name: 'Brands',
            colorByPoint: true,
            data: [
              {
                name: 'Chrome',
                y: 61.41,
                sliced: true,
                selected: true,
              },
              {
                name: 'Internet Explorer',
                y: 11.84,
              },
              {
                name: 'Firefox',
                y: 10.85,
              },
              {
                name: 'Edge',
                y: 4.67,
              },
              {
                name: 'Safari',
                y: 4.18,
              },
              {
                name: 'Sogou Explorer',
                y: 1.64,
              },
              {
                name: 'Opera',
                y: 1.6,
              },
              {
                name: 'QQ',
                y: 1.2,
              },
              {
                name: 'Other',
                y: 2.61,
              },
            ],
          },
        ],
      });
    </script>