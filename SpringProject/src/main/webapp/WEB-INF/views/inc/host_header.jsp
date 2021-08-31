<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar myclass_header"
      id="ftco-navbar"
    >
      <div style="width: 100%">
        <a class="navbar-brand" href="/hobbylovey/index.action" style="color: green"
          >하비<span style="color: #b7472a">러비</span></a
        >
        <a href="/hobbylovey/host/hostmain.action" id="host_manage_page"><span>호스트 관리 페이지</span></a>
      </div>
    </nav>

    <div style="display: flex">
      <nav id="side_nav">
        <div class="class_manage_box">
          <h3 class="class_manage_title">클래스 관리</h3>
          <div>
            <div class="class_menu">
              <a href="/hobbylovey/host/classenroll.action">클래스 만들기</a>
            </div>
            <div class="class_menu">
              <a href="/hobbylovey/host/hostlist.action">내 클래스</a>
            </div>
          </div>
        </div>
        <div class="class_manage_box">
          <h3 class="class_manage_title">대원 관리</h3>
          <div>
            <div class="class_menu">
              <a href="/hobbylovey/host/hostreview.action">후기 관리</a>
            </div>
          </div>
        </div>
        <div class="class_manage_box">
          <h3 class="class_manage_title">지원 센터</h3>
          <div>
            <div class="class_menu">
              <a href="#">공지사항</a>
            </div>
            <div class="class_menu">
              <a href="#">자주 묻는 질문</a>
            </div>
          </div>
        </div>
        <a href="/hobbylovey/auth/logout.action" class="myclass_logout"><span>로그아웃</span></a>
      </nav>
      <div style="margin-left: 292px"></div>