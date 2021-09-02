<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

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
            ><a href="/hobbylovey/index.action">하비러비 홈페이지 &gt;</a></span
          >
        </div>

        <div class="class_manage_main_box class_notice">
          <h3 style="padding-bottom: 10px; border-bottom: 4px solid #ccc">
            공지사항<span
              style="font-size: 15px; float: right; padding-top: 20px"
              ><a href="">더보기+</a></span
            >
          </h3>

			<c:forEach items="${nlist}" var="dto">
          <a href=""
            ><div class="hobbylovey_notice">
              <div class="notice_category">${dto.category }</div>
              <div class="notice_title">${dto.title }</div>
              <div class="notice_regdate">${dto.regdate.substring(0,10)}</div>
            </div></a
          >
          </c:forEach>
         
        </div>

        <div
          class="class_manage_main_box class_statistics_box"
          style="padding: 0px"
        >
          <div class="class_statistics">
            <div class="class_statistics_subject">클래스 수</div>
            <h3 class="class_statistics_count">${classCount}</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">이번달 신청자 수</div>
            <h3 class="class_statistics_count">${thisMonthParticipant}</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">총 신청자 수</div>
            <h3 class="class_statistics_count">${allParticipant}</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">남겨진 후기</div>
            <h3 class="class_statistics_count">${reviewCount}</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject">평균 평점</div>
            <h3 class="class_statistics_count">${avgScore}</h3>
          </div>
          <div class="class_statistics">
            <div class="class_statistics_subject"></div>
            <h3 class="class_statistics_count"></h3>
          </div>
        </div>

        <div class="class_manage_main_box class_income_box" style="padding: 0">
          <div class="income_box">
            <span class="income_subject">이번달 매출액</span>
            <h3><fmt:formatNumber value="${thisMonthSales}" groupingUsed="true"/></h3>
          </div>

          <div class="income_box">
            <span class="income_subject">전체 매출액</span>
            <h3><fmt:formatNumber value="${allSales}" groupingUsed="true"/></h3>
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
          text: '2021년 월별 매출',
        },
        xAxis: {
          categories: [
            '1월',
            '2월',
            '3월',
            '4월',
            '5월',
            '6월',
            '7월',
            '8월',
            '9월',
            '10월',
            '11월',
            '12월',
          ],
          crosshair: true,
        },
        yAxis: {
          min: 0,
          title: {
            text: '단위(원)',
          },
        },
        tooltip: {
          headerFormat:
            '<span style="font-size:10px">{point.key}</span><table>',
          pointFormat:
            '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y}</b>원</td></tr>',
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
            name: '매출',
            data: [
            	${map.Jan}, ${map.Feb}, ${map.Mar}, ${map.Apr}, ${map.May}, ${map.Jun}, ${map.Jul}, ${map.Aug}, ${map.Sep},
                ${map.Oct}, ${map.Nov}, ${map.Dec}
            ],
          }       
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
          text: '나의 클래스 성별 비율',
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
            name: 'gender',
            colorByPoint: true,
            data: [
              {
                name: '남성',
                y: ${manPer},
                sliced: true,
                selected: true,
              },
              {
                name: '여성',
                y: ${womanPer},
              },
            ],
          },
        ],
      });
    </script>