<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div id="myclass_content">
        <h3 class="class_manage_title">후기 관리</h3>
        <div
          style="
            background-color: white;
            width: 100%;
            height: 100%;
            padding: 50px;
          "
        >
          <div class="class_review_container">
          
          <c:forEach items="${rlist}" var="dto">
            <div class="class_review_info">
              <h4 class="signup_class_subject">
                ${dto.title}<span class="class_calssDate"
                  >${dto.classDate.substring(0,16)} 참석<!-- 참가일 --></span
                >
              </h4>

              <div class="class_review_box">
                <div class="signip_review_content">
                  ${dto.content}
                </div>
                <div class="signup_review_user">${dto.nickname}</div>
                <div class="signup_review_score">
                <c:forEach begin="1" end="${dto.score}" step="1" var="i">
                  <img src="../resources/images/star.svg" alt="" />
                </c:forEach>
                </div>
                <div calss="signup_review_regdate">${dto.regdate.substring(0,10)} 작성</div>
                <!-- 작성일 -->
              </div>
              <div style="display: flex"></div>
              <form action="#!" method="POST" class="review_reply_form">
                <textarea
                  class="reviewReply"
                  name="content"
                  cols="10"
                  rows="10"
                  placeholder="후기에 댓글을 달아주세요."
                ></textarea>
                <input type="hidden" name="classReviewSeq" value="후기번호" />

                <button type="button" class="btn btn-success review_reply_btn">
                  작성하기
                </button>
              </form>
            </div>
			</c:forEach>
            <!-- ----------------------------------------------------- -->

            
          </div>
        </div>
      </div>
    </div>

    <script>
      $('.review_reply_btn').click(function () {

        if($(this).siblings('textarea').val() != null && $(this).siblings('textarea').val() != ''){
          this.form.submit();


        }

      });
    </script>