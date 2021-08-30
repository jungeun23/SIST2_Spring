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
            <div class="class_review_info">
              <h4 class="signup_class_subject">
                홍길동과 함께하는 댄스 클래스<span class="class_calssDate"
                  >2021-08-04 14:00 참석<!-- 참가일 --></span
                >
              </h4>

              <div class="class_review_box">
                <div class="signip_review_content">
                  Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                  Animi laboriosam, nulla a numquam distinctio, nostrum ea sunt
                  architecto in eos ut eum, excepturi placeat nemo! Numquam vel
                  soluta voluptatibus maiores! Id ab explicabo vero distinctio
                  laborum iusto consequuntur quod magnam eius corporis, facere
                  voluptas, tenetur ipsam exercitationem neque repellendus
                  voluptatem maxime natus reiciendis eligendi ea voluptates
                  soluta officia! Reprehenderit, nulla! Maxime accusantium quia
                  fugiat harum molestias, ipsum officiis totam distinctio ipsam,
                  quos corrupti. Odit porro odio eveniet doloribus. Corrupti
                  nihil facere corporis quia illum ipsum autem deserunt voluptas
                  expedita iusto!
                </div>
                <div class="signup_review_user">홍길동</div>
                <div class="signup_review_score">
                  <img src="images/star.svg" alt="" />
                  <img src="images/star.svg" alt="" />
                  <img src="images/star.svg" alt="" />
                  <img src="images/star.svg" alt="" />
                  <img src="images/star.svg" alt="" />
                </div>
                <div calss="signup_review_regdate">2021-08-09 14:00</div>
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

            <!-- ----------------------------------------------------- -->

            <div class="class_review_info">
              <h4 class="signup_class_subject">
                홍길동과 함께하는 댄스 클래스<span class="class_calssDate"
                  >2021-08-04 14:00 참석<!-- 참가일 --></span
                >
              </h4>

              <div class="class_review_box">
                <div class="signip_review_content">
                  Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                  Animi laboriosam, nulla a numquam distinctio, nostrum ea sunt
                  architecto in eos ut eum, excepturi placeat nemo! Numquam vel
                </div>
                <div class="signup_review_user">홍길동</div>
                <div class="signup_review_score">
                  <img src="images/star.svg" alt="" />
                </div>
                <div calss="signup_review_regdate">2021-08-09 14:00</div>
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