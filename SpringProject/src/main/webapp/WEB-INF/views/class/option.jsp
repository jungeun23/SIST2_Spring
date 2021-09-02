<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>

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
				<h2 class="mb-0 bread">클래스 선택</h2>
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
			<div id="procut-OptionBox" class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
				<div class="product-SectionLabelWrapper gTdSym">
					<div font-size="13px" color="#9b9b9b"
						class="product-LabelWrapper eXwobX">
						<div>일정</div>
						<!-- <div style="color: black;">2021년 8월 25일(수요일) 14:00</div> -->
					</div>
					<div class="Accordion__ChevronWrapper-sc-11ajjas-1 ejNywc">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
							class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
					</div>
				</div>
				<div class="product-ContentWrapper">
				
					<c:forEach items="${list}" var="dto">
					<div class="product-ItineraryWrapper cZOPBk">
						
						<div class="ItineraryDateBox">
						<div class="ItineraryDate ehtKbJ">${dto.classdate}</div>
						<div class="product-ItineraryQuantity coFIds">${dto.signup} / ${dto.personnel}명 | 신청 마감
							${dto.deadline} 08:00</div>
						</div>
						<div class="ItineraryPrice"><div class="ItineraryPrice-option">${dto.classoption}</div> <div class="ItineraryPrice-price"> ${dto.price}원</div></div>
					<input type="hidden" class="classOptionSeq" id="optionseq" name="optionseq" value="${dto.classOptionSeq}">
					</div>
					<div style="clear: both;"></div>
					</c:forEach>
					
				</div>


				<!-- 선택한 날짜 + 옵션 카드 -->
<!-- 				<div id="option-selectedCardbox"
					class="option-PurchaseSelectionWrapper eWGqDX">
					<div class="PurchaseSelectionEntity-Wrapper eraMBI">
						<button id="option-select-cancelbtn"
							class="Button-bqxlp0-0 eupWyQ PurchaseSelectionEntity__DeleteButton-sc-1kgaoqw-1 bsTkth"
							type="button" width="24px" height="24px">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Cpath d='M0 0h24v24H0z'/%3E %3Cpath stroke='%23000' stroke-width='2' d='M7.05 7.05l9.9 9.9M16.95 7.05l-9.9 9.9'/%3E %3C/g%3E %3C/svg%3E"
								alt="" class="Icon-sc-1n96qsy-0 dsjmCy">
						</button>
						<div
							class="PurchaseSelectionEntity-SelectionWrapper oXKzi">
							<div class="PurchaseSelectionEntity-date">$(this).find("div.ItineraryDate").text()</div>
							<div
								class="PurchaseSelectionEntity-OptionTitle iLdFCl">$(this).find("div.ItineraryPrice-option").text()</div>
						</div>
						<div class="PurchaseSelectionEntity-Footer cRdHst">
							<div class="PurchaseSelectionEntity-Price bqUmeu">$(this).find("div.ItineraryPrice-price").text()</div>
							<div class="option-Counter-Wrapper hcNdoZ">
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="option-Counter-ControlButton kRIdGY">
								<input type="number" min="1" class="option-Counter-Value eYMAPn" value="1" readonly>
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M11 7v8M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="option-Counter-ControlButton kRIdGY">
							</div>
						</div>
					</div>
				</div> -->


			</div>
		</div>


		<div id="option-nextbtnbox"
			class="option-ButtonSection-ButtonWrapper iOVwBV">
			<button class="option-ButtonNext dyxtJZ" width="100%" color="white"
				font-size="16px">결제</button>
		</div>


	</div>
</div>


<script type="text/javascript">
			 let classOptionSeq;
			 
		$('.product-ItineraryWrapper').click(function(){
			
			classOptionSeq = $(this).find("#optionseq").attr("value");
			
			alert(classOptionSeq);
			
			if($('#option-selectedCardbox').length <= 0){
				$('#procut-OptionBox').append('<div id="option-selectedCardbox" class="option-PurchaseSelectionWrapper eWGqDX"><div class="PurchaseSelectionEntity-Wrapper eraMBI"><button id="option-select-cancelbtn" class="Button-bqxlp0-0 eupWyQ PurchaseSelectionEntity__DeleteButton-sc-1kgaoqw-1 bsTkth" type="button" width="24px" height="24px"><img src="data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E %3Cg fill=\'none\' fill-rule=\'nonzero\'%3E %3Cpath d=\'M0 0h24v24H0z\'/%3E %3Cpath stroke=\'%23000\' stroke-width=\'2\' d=\'M7.05 7.05l9.9 9.9M16.95 7.05l-9.9 9.9\'/%3E %3C/g%3E %3C/svg%3E" alt="" class="Icon-sc-1n96qsy-0 dsjmCy"></button><div class="PurchaseSelectionEntity-SelectionWrapper oXKzi"><div>' + $(this).find("div.ItineraryDate").text() + '</div><div class="PurchaseSelectionEntity-OptionTitle iLdFCl">'+ $(this).find("div.ItineraryPrice-option").text() + '</div></div><div class="PurchaseSelectionEntity-Footer cRdHst"><div class="PurchaseSelectionEntity-Price bqUmeu">' + $(this).find("div.ItineraryPrice-price").text() + '</div><div class="option-Counter-Wrapper hcNdoZ"><img src="data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'22\' height=\'22\' viewBox=\'0 0 22 22\'%3E %3Cg fill=\'none\' fill-rule=\'nonzero\' stroke=\'%23DDD\'%3E %3Crect width=\'21\' height=\'21\' x=\'.5\' y=\'.5\' rx=\'10.5\'/%3E %3Cpath stroke-linecap=\'square\' d=\'M15 11H7\'/%3E %3C/g%3E %3C/svg%3E"disabled="" class="option-Counter-ControlButton kRIdGY"><input type="number" min="1" class="option-Counter-Value eYMAPn" value="1" readonly><img src="data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'22\' height=\'22\' viewBox=\'0 0 22 22\'%3E %3Cg fill=\'none\' fill-rule=\'nonzero\' stroke=\'%23DDD\'%3E %3Crect width=\'21\' height=\'21\' x=\'.5\' y=\'.5\' rx=\'10.5\'/%3E %3Cpath stroke-linecap=\'square\' d=\'M11 7v8M15 11H7\'/%3E %3C/g%3E %3C/svg%3E" disabled="" class="option-Counter-ControlButton kRIdGY"></div></div></div></div>');
			}
		});
				
		/* 삭제 버튼 안먹음;;  */
		$('#option-select-cancelbtn').click(function(){
			
			alert();
			$('div.option-PurchaseSelectionWrapper').remove();
			
		});
		
		$('.option-ButtonNext').click(function(){
			
			//alert(classOptionSeq);
			location.href="/hobbylovey/class/optionok.action?classSeq=" + ${classSeq} + "&classOptionSeq=" +classOptionSeq;
		});
		
		
		
</script>



