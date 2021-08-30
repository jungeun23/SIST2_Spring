<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../resources/images/sample4.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">

					<!-- 페이지에 맞게 수정 필요  -->
					<span class="mr-2"><a href="/hobbylovey/index.action">홈
							<i class="fa fa-chevron-right"></i>
					</a></span> <span>클래스 <i class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">클래스</h2>
			</div>
		</div>
	</div>
</section>
<div class="product-option-Wrapper gUYDhF">
	<header class="product-option-Header ifNQQr">
		<button class="product-option-backbtn eupWyQ" type="button"
			width="24px" height="24px">
			<img
				src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Cpath d='M0 0h24v24H0z'/%3E %3Cpath stroke='%23000' stroke-width='2' d='M12 19.071L4.929 12 12 4.929M5 12h15'/%3E %3C/g%3E %3C/svg%3E"
				alt="" class="Icon-sc-1n96qsy-0 dsjmCy">
		</button>
	</header>
	<div
		class="BodyScrollLockContainer__Container-sc-19uqzq5-0 jFvWc FullScreenWrapper__FullWrapper-sc-1w6pu30-1 dAMGt">
		<div class="product-OptionSelector kjwgkO">
			옵션 선택
			<button color="black" font-size="13"
				class="product-calendarbtn ktwSVi">달력에서 보기</button>
		</div>
		<div class="product-OptionSelectorContainer jMUtnM">
			<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
				<div class="product-SectionLabelWrapper gTdSym">
					<div font-size="13px" color="black"
						class="AccordionLabelWrapper-sc-1t4rj3d-0 AccordionLabel__ExtendedAccordionLabelWrapper-sc-13wkt9g-0 tuBNE">
						<div
							class="AccordionLabel__OptionAccordionPrefix-sc-13wkt9g-1 dTrFnu">일정</div>
						<div>2021년 8월 26일(목요일) 16:00</div>  <!-- 이건 자바 스크립트로 넣으면 됨 -->
					</div>
				</div>
				<div class="product-ContentWrapper">
					<div class="product-ItineraryWrapper cZOPBk">
						<div class="ItineraryDate ehtKbJ">2021년 8월 25일(수요일) 14:00</div>
						<div class="product-ItineraryQuantity coFIds">2 / 3명 | 신청 마감
							8월 25일 07:30</div>
					</div>
					<div class="product-ItineraryWrapper cZOPBk">
						<div class="ItineraryDate ehtKbJ">2021년 8월 26일(목요일) 16:00</div>
						<div class="product-ItineraryQuantity coFIds">2 / 3명 | 신청 마감
							8월 26일 07:30</div>
					</div>
				</div>

				<!-- 기본 옵션 -> 참가비 -->
				<div id="basicOptionbox"
					class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
					<div class="Accordion__SectionLabelWrapper-sc-11ajjas-2 gTdSym">
						<div font-size="13px" color="black"
							class="AccordionLabelWrapper-sc-1t4rj3d-0 AccordionLabel__ExtendedAccordionLabelWrapper-taznda-0 hxDbfJ">
							<div
								class="AccordionLabel__OptionAccordionPrefix-taznda-1 ePfssD">기본
								옵션</div>
							<div class="AccordionLabel__OptionTitle-taznda-2 flizwE">참가비 (1인)</div>
						</div>
						<div class="Accordion__ChevronWrapper-sc-11ajjas-1 ejNywc">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
								class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
						</div>
					</div>
					<div class="option-Accordion-Content impDuH">
						<div class="PurchaseOptionEntity__Wrapper-sc-1wtu7db-0 gHuwwM">
							<div
								class="PurchaseOptionEntity__OptionInfoWrapper-sc-1wtu7db-1 euRyuc">
								<div
									class="PurchaseOptionEntity__TitleContainer-sc-1wtu7db-2 gGNSVC">
									<div>참가비 (1인)</div>
									<div
										class="PurchaseOptionEntity__QuantityContainer-sc-1wtu7db-3 bYEAVu"></div>
								</div>
								<div
									class="PurchaseOptionEntity__PriceContainer-sc-1wtu7db-4 kwopjF">
									<div class="PurchaseOptionEntity__Price-sc-1wtu7db-6 fyTAsE">29,000원</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 선택한 날짜 + 옵션 카드 -->
				<div id="option-selectedCardbox"
					class="PurchaseSelectionList__PurchaseSelectionWrapper-c33klu-0 eWGqDX">
					<div class="PurchaseSelectionEntity__Wrapper-sc-1kgaoqw-0 eraMBI">
						<button
							class="Button-bqxlp0-0 eupWyQ PurchaseSelectionEntity__DeleteButton-sc-1kgaoqw-1 bsTkth"
							type="button" width="24px" height="24px">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Cpath d='M0 0h24v24H0z'/%3E %3Cpath stroke='%23000' stroke-width='2' d='M7.05 7.05l9.9 9.9M16.95 7.05l-9.9 9.9'/%3E %3C/g%3E %3C/svg%3E"
								alt="" class="Icon-sc-1n96qsy-0 dsjmCy">
						</button>
						<div
							class="PurchaseSelectionEntity__SelectionWrapper-sc-1kgaoqw-2 oXKzi">
							<div>2021년 8월 26일(목요일) 16:00</div>
							<div
								class="PurchaseSelectionEntity__OptionTitle-sc-1kgaoqw-5 iLdFCl">참가비
								(1인)</div>
						</div>
						<div class="PurchaseSelectionEntity__Footer-sc-1kgaoqw-3 cRdHst">
							<div class="PurchaseSelectionEntity__Price-sc-1kgaoqw-4 bqUmeu">29,000원</div>
							<div class="Counter__Wrapper-g6dtdl-0 hcNdoZ">
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="Counter__ControlButton-g6dtdl-1 kRIdGY"><input
									type="number" min="1" class="Counter__Value-g6dtdl-2 eYMAPn"
									value="1"><img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M11 7v8M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="Counter__ControlButton-g6dtdl-1 kRIdGY">
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>


		<div id="option-nextbtnbox"
			class="ButtonSection__ButtonWrapper-sc-1dzijoz-0 iOVwBV">
			<button class="Button-bqxlp0-0 dyxtJZ" width="100%" color="white"
				font-size="16px">다음</button>
		</div>


	</div>
</div>


<script type="text/javascript">
	$(function() {
		/* 		$('#basicOptionbox').hide();
		 $('.product-review-dropbtn').click(function(){
		 $('#myDropdown').slideToggle();
		 });
		
		 var img = $('.product-review-dropbtn').find('img');
		
		 $('#myDropdown').children().click(function(){
		 //alert($(this).hasClass('product-review-filterReview-active'));
		 $('#myDropdown').children().removeClass('product-review-filterReview-active');
		 $(this).addClass('product-review-filterReview-active');
		 $('.product-review-dropbtn').text($(this).text());
		 $('.product-review-dropbtn').append('<img src="../resources/images/arrow.svg" class="product-review-FilterReview esTgfk">');
		 }); */

		/* todo: document를 클릭하면 드롭다운 사라지도록.. 그 이후에 반응 제대로 하도록.. */

	});
</script>



