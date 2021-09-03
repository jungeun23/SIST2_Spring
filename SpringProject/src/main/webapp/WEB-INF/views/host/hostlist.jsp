<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div id="myclass_content">
        <h3 class="class_manage_title">내 클래스</h3>
        <div
          style="
            background-color: white;
            width: 100%;
            height: 100%;
            padding: 50px;
          "
        >
        
        <c:forEach items="${list}" var="dto">
          <div class="myclass_info_box">
          <a href="/hobbylovey/class/detail.action?classSeq=${dto.classSeq}">
            <div
              class="myclass_info_image"
              style="background-image: url('/hobbylovey/resources/images/classimage/${dto.classImage}')"
            ></div>
            </a>
            <div class="myclass_info_text">
              <div class="myclassList_classTitle">
                ${dto.title}
              </div>
              <div class="myclassList_classCategory">${dto.categoryBig}:${dto.categorySmall}</div>

              <div class="myclassList_classLocation">
                ${dto.location}
              </div>
            </div>
            <div class="myclass_button_box">
              <input
                type="button"
                class="btn btn-outline-danger myclass_option_add_btn"
                value="옵션추가"
                data-option-seq="${dto.classSeq}"
              />

              <div>
                <input
                  type="button"
                  class="btn btn-outline-success myclass_option_edit_btn"
                  value="수정"
                  data-edit-seq="${dto.classSeq}"
                />
              </div>
            </div>
          </div>
          </c:forEach>
          <!-- ---------------------------------------------------- -->
          
        </div>
      </div>
    </div>

    <div id="myclass_modal" style="display: none">
      <form action="/hobbylovey/host/addoption.action" id="myclass_option_add" method="POST">
        <h3>일정관리</h3>
        <div id="myclass_modal_option_box">
          <div id="myclass_option_buy" class="myclass_option_info">
            <div class="myclass_option_subject">구매옵션</div>

            <div class="myclass_option_input" id="option_list">
              <button
                type="button"
                class="btn btn-outline-primary"
                style="position: absolute; right: 10px; top: 10px; width: 80px"
                id="option_add_btn"
              >
                추가
              </button>
              <button
                type="button"
                class="btn btn-outline-danger"
                style="position: absolute; right: 10px; top: 50px; width: 80px"
                id="option_del_btn"
              >
                삭제
              </button>

              <div style="display: flex; margin-bottom: 10px">
                <input
                  type="text"
                  class="form-control"
                  name="classOption"
                  placeholder="옵션명"
                  style="width: 350px; margin-right: 30px"
                />

                <input
                  type="number"
                  name="price"
                  class="form-control"
                  style="text-align: right; width: 150px"
                  placeholder="가격"
                  min="0"
                  maxlength="8"
                /><span
                  style="
                    margin-top: 7px;
                    margin-left: 10px;
                    font-size: 20px;
                    font-weight: bold;
                  "
                  >원</span
                >
              </div>
            </div>
          </div>
          <div id="myclass_option_count" class="myclass_option_info">
            <div class="myclass_option_subject">모집인원</div>
            <div class="myclass_option_input" style="display: flex">
              <input
                style="width: 100px"
                type="text"
                name="personnel"
                class="form-control"
                min="0"
              />
              <span
                style="
                  margin-top: 7px;
                  margin-left: 10px;
                  font-size: 20px;
                  font-weight: bold;
                "
                >명</span
              >
            </div>
          </div>
          <div id="myclass_option_date" class="myclass_option_info">
            <div class="myclass_option_subject">일정</div>
            <div class="myclass_option_input" style="display: flex">
              <input
                name="date"
                type="date"
                class="form-control"
                id="date"
                required
                style="width: 300px; margin-right: 30px"
              /><input
                type="time"
                class="form-control"
                id="time"
                required
                style="width: 300px"
              />
            </div>
          </div>
          <div style="text-align: center">
            <input
              type="button"
              value="작성하기"
              id="myclass_option_submit"
              class="btn btn-success"
              style="width: 400px; font-size: 30px"
            />
          </div>
        </div>
        <input type="hidden" name="classSeq" id="classSeq" />
        <input type="hidden" name="classDate" id="classDate" />
        <div id="modal_off_btn">&times;</div>
      </form>
    </div>

    <script>
      var cnt = 1;

      $('#option_add_btn').click(function () {
        if (cnt < 3) {
          $('#option_list').append(
            '<div style="display: flex; margin-bottom: 10px;"><input type="text" class="form-control" name="classOption" placeholder="옵션명" style="width: 350px; margin-right: 30px;"><input type="number" name="price" class="form-control" style="text-align: right; width: 150px;" placeholder="가격"><span style="margin-top: 7px;margin-left: 10px;font-size: 20px;font-weight: bold;">원</span></div>'
          );
          cnt++;
        }
      });

      $('#option_del_btn').click(function () {
        if (cnt > 1) {
          $('#option_list div:last-child').remove();
          cnt--;
        }
      });

      //submit 하기전 더하기
      $('#myclass_option_submit').click(function () {
        if (
          $('#myclass_option_add input[name=classOption]').val() == '' ||
          $('#myclass_option_add input[name=classOption]').val() == null
        ) {
          $('#myclass_option_add input[name=classOption]').focus();
        } else if (
          $('#myclass_option_add input[name=price]').val() == '' ||
          $('#myclass_option_add input[name=price]').val() == null
        ) {
          $('#myclass_option_add input[name=price]').focus();
        } else if (
          $('#myclass_option_add input[name=personnel]').val() == '' ||
          $('#myclass_option_add input[name=personnel]').val() == null
        ) {
          $('#myclass_option_add input[name=personnel]').focus();
        } else if ($('#date').val() == '' || $('#date').val() == null) {
          $('#date').focus();
        } else if ($('#time').val() == '' || $('#time').val() == null) {
          $('#time').focus();
        } else {
          $('#classDate').val(
            $('#date').val() + ' ' + $('#time').val() + ':00'
          );
          alert('옵션이 추가되었습니다.');
          this.form.submit();
        }
      });

      $('.myclass_option_add_btn').click(function () {
        $('#myclass_modal').css('top', $(window).scrollTop());
        $('#classSeq').val($(this).data('optionSeq'));

        $('#myclass_modal').css('display', 'block');
        $('body').css('overflow', 'hidden');
      });

      $('#modal_off_btn').click(function () {
        $('#myclass_modal').css('display', 'none');
        $('body').css('overflow', 'unset');

        $('#myclass_option_add input[name=classOption]').val('');
        $('#myclass_option_add input[name=price]').val('');
        $('#myclass_option_add input[name=personnel]').val('');
        $('#myclass_option_add input[name=date]').val('');
        $('#myclass_option_add input[name=time]').val('');
      });

      let year = new Date().getFullYear(); // 년도
      let month = new Date().getMonth() + 1 + ''; // 월
      if (month.length == 1) {
        month = '0' + month;
      }
      let date = new Date().getDate(); // 날짜
      $('#date').attr('min', year + '-' + month + '-' + date);
    </script>