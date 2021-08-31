<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<div id="myclass_content">
        <h3 class="class_manage_title">클래스 만들기</h3>
        <div
          style="
            background-color: white;
            width: 100%;
            height: 100%;
            padding: 50px;
          "
        >
          <main id="classEnroll">
            <form action="/hobbylovey/host/classenrollok.action" method="POST" enctype="multipart/form-data"><!-- enctype="multipart/form-data" -->
              <table class="table">
                <tr>
                  <th>제목</th>
                  <td>
                    <input
                      style="width: 680px"
                      name="title"
                      type="text"
                      class="form-control"
                      autocomplete="off"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>카테고리</th>
                  <td id="category_box">
                    <select
                      name="categoryBig"
                      id="bCategory"
                      class="form-control"
                      required
                    >
                      <option value="스포츠">스포츠</option>
                      <option value="음악">음악</option>
                      <option value="드로잉">드로잉</option>
                      <option value="쿠킹">쿠킹</option>
                      <option value="체험">체험</option>
                      <option value="핸드메이드">핸드메이드</option>
                    </select>

                    <select
                      name="categorySmall"
                      id="sCategory"
                      class="form-control"
                      required
                    ></select>
                  </td>
                </tr>
                <tr>
                  <th>일정</th>
                  <td id="schedule_box">
                    <input
                      type="date"
                      class="form-control"
                      id="date"
                      required
                    /><input
                      type="time"
                      class="form-control"
                      id="time"
                      required
                    />
                  </td>
                </tr>

                <tr>
                  <th>옵션</th>
                  <td id="option_box" style="display: flex">
                    <input
                      name="classOption"
                      type="text"
                      class="form-control"
                      id="classOption"
                      required
                      style="width: 400px; margin-right: 40px"
                    /><input
                      type="text"
                      name="personnel"
                      class="form-control"
                      id="personnel"
                      required
                      style="text-align: right; width: 100px"
                      placeholder="모집인원"
                    /><span
                      style="
                        margin-top: 10px;
                        margin-left: 10px;
                        font-size: 20px;
                        font-weight: bold;
                      "
                      >명</span
                    >
                  </td>
                </tr>
                <tr>
                  <th>지역</th>
                  <td style="position: relative; display: flex">
                    <input
                      id="location"
                      type="text"
                      class="form-control"
                      readonly
                    />
                    <input
                      type="text"
                      id="location_detail"
                      class="form-control"
                      placeholder="상세주소"
                      style="width: 350px"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>가격</th>
                  <td style="display: flex">
                    <input
                      name="price"
                      type="number"
                      class="form-control"
                      maxlength="9"
                      required
                    /><span
                      style="
                        margin-top: 10px;
                        margin-left: 10px;
                        font-size: 20px;
                        font-weight: bold;
                      "
                      >원</span
                    >
                  </td>
                </tr>
                <tr>
                  <th>썸네일</th>
                  <td style="display: flex;">
                      <input type="text" class="form-control" value="" id="thumbnail_name" style="width: 300px; margin-right: 10px;"/>
                       <input type="file"
                        id="thumbnail_upload" name="classThumb" style="display: none;" multiple="multiple" accept=".gif, .jpg, .png">

                      <button type="button" class="btn btn-secondary" id="class_thumbnail">이미지 찾기</button>
        
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <textarea
                      cols="80"
                      id="editor1"
                      name="content"
                      rows="40"
                      data-sample-short
                      required
                    >
                    </textarea>
                  </td>
                </tr>

                <input type="hidden" name="classDate" id="classDate" />
                <input type="hidden" name="latitude" id="latitude" />
                <input type="hidden" name="longitude" id="longitude" />
                <input type="hidden" name="location" />
              </table>
              <div style="float: right; padding-right: 50px">
                <input
                  type="button"
                  value="작성하기"
                  class="btn btn-success"
                  id="enroll_submit"
                />
                <input
                  type="button"
                  value="취소"
                  class="btn btn-secondary"
                  onclick="history.back()"
                />
              </div>
            </form>
          </main>
        </div>
      </div>
    </div>

    <script>
      $('#email_sel').change(function () {
        $('#email_sel option:selected').each(function () {
          if ($(this).val() == '1') {
            //직접입력일 경우
            $('#email2').val('');
            //값 초기화
          } else {
            //직접입력이 아닐경우
            $('#email2').val($(this).text());
            //선택값 입력
          }
        });
      });

      $('#email2').keyup(function () {
        if ($('#email_sel option:selected').val() != $(this).val()) {
          $('#email_sel option').each(function () {
            $(this).attr('selected', false);
            if ($(this).val() == '1') {
              $(this).attr('selected', true);
            }
          });
        }
      });

      $('#signup_submit').click(function () {
        $('#email').val($('#email1').val() + '@' + $('#email2').val());
      });

      $('#auth_1').click(function () {
        $('#authRadio_1').attr('checked', true);
        $('#authRadio_2').attr('checked', false);

        $('#auth_2').removeClass('chose');
        $(this).addClass('chose');
      });

      $('#auth_2').click(function () {
        $('#authRadio_1').attr('checked', false);
        $('#authRadio_2').attr('checked', true);
        $('#auth_1').removeClass('chose');
        $(this).addClass('chose');
      });

      $('#auth_' + $('input[id*=authRadio]:checked').val()).click();
      let year = new Date().getFullYear(); // 년도
      let month = new Date().getMonth() + 1 + ''; // 월
      if (month.length == 1) {
        month = '0' + month;
      }
      let date = new Date().getDate(); // 날짜
      $('#date').attr('min', year + '-' + month + '-' + date);

      let sport = [
        '댄스',
        '클라이밍',
        '수영',
        '구기스포츠',
        '사격',
        '스키',
        '기타 스포츠',
      ];
      let music = ['보컬', '피아노', '작사·작곡', '프로듀싱', '기타 악기'];
      let drawing = [
        '소묘',
        '수채화',
        '펜화',
        '캘리그라피',
        '동양화',
        '서양화',
        '일러스트',
        '기타 드로잉',
      ];
      let play = ['체험'];
      let cooking = [
        '베이킹',
        '요리',
        '디저트',
        '음료',
        '바리스타',
        '기타 쿠킹',
      ];
      let handmade = [
        '캔들·디퓨저',
        '향수',
        '비누',
        '액세서리',
        '도자기',
        '목공',
        '기타 공예',
      ];

      let category = [];
      if ($('#bCategory option:selected').val() == '스포츠') {
        category = sport;
      } else if ($('#bCategory option:selected').val() == '음악') {
        category = music;
      } else if ($('#bCategory option:selected').val() == '드로잉') {
        category = drawing;
      } else if ($('#bCategory option:selected').val() == '쿠킹') {
        category = cooking;
      } else if ($('#bCategory option:selected').val() == '체험') {
        category = play;
      } else if ($('#bCategory option:selected').val() == '핸드메이드') {
        category = handmade;
      }

      var str = '';
      category.forEach(function (item, index) {
        str += '<option value="' + item + '">' + item + '</option>';
      });

      $('#sCategory').html(str);

      category = [];
      $('#bCategory').change(function () {
        if ($('#bCategory option:selected').val() == '스포츠') {
          category = sport;
        } else if ($('#bCategory option:selected').val() == '음악') {
          category = music;
        } else if ($('#bCategory option:selected').val() == '드로잉') {
          category = drawing;
        } else if ($('#bCategory option:selected').val() == '쿠킹') {
          category = cooking;
        } else if ($('#bCategory option:selected').val() == '체험') {
          category = play;
        } else if ($('#bCategory option:selected').val() == '핸드메이드') {
          category = handmade;
        }

        var str = '';
        category.forEach(function (item, index) {
          str += '<option value="' + item + '">' + item + '</option>';
        });

        $('#sCategory').html(str);
      });

      $('#location').click(function () {
        window.open(
          '/hobbylovey/kakaomap.action',
          'map',
          'top=10, left=10, width=1100, height=620, status=no, menubar=no, toolbar=no, resizable=no'
        );
      });

      $('#enroll_submit').click(function () {
        if (
          $('input[name=title]').val() == '' ||
          $('input[name=title]').val() == null
        ) {
          $('input[name=title]').focus();
        } else if (
          $('#bCategory').val() == '' ||
          $('#bCategory').val() == null
        ) {
          $('#bCategory').focus();
        } else if (
          $('#sCategory').val() == '' ||
          $('#sCategory').val() == null
        ) {
          $('#sCategory').focus();
        } else if ($('#date').val() == '' || $('#date').val() == null) {
          $('#date').focus();
        } else if ($('#time').val() == '' || $('#time').val() == null) {
          $('#time').focus();
        } else if (
          $('#classOption').val() == '' ||
          $('#classOption').val() == null
        ) {
          $('#classOption').focus();
        } else if (
          $('#personnel').val() == '' ||
          $('#personnel').val() == null
        ) {
          $('#personnel').focus();
        } else if ($('#location').val() == '' || $('#location').val() == null) {
          $('#location').focus();
        } else if (
          $('#location_detail').val() == '' ||
          $('#location_detail').val() == null
        ) {
          $('#location_detail').focus();
        } else if (
          $('input[name=price]').val() == '' ||
          $('input[name=price]').val() == null
        ) {
          $('input[name=price]').focus();
        } else if ($('#editor1').val() == '' || $('#editor1').val() == null) {
          $('#editor1').focus();
        } else {
        	
          $('input[name=location]').val($('#location').val()+' '+$('#location_detail').val());
          $('#classDate').val($('#date').val() +' '+$('#time').val()+':00');
          
          this.form.submit();
        }
      });

      $('#class_thumbnail').click(function() {

      $('#thumbnail_upload').click();
      });

      $('#thumbnail_upload').change(
        function() {
          $('#thumbnail_name').val(
              $('#thumbnail_upload').val().substr(
                  $('#thumbnail_upload').val().lastIndexOf('\\') + 1));
        });
    </script>
    <script>
      CKEDITOR.addCss('.cke_editable { font-size: 15px; padding: 2em; }');

      CKEDITOR.replace('editor1', {
        filebrowserUploadUrl: '/hobbylovey/host/imageUpload.action',
      });
    </script>/html>