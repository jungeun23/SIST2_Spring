<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
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
					<span class="mr-2"> <a href="/hobbylovey/index.action">홈
							<i class="fa fa-chevron-right"></i>
					</a>
					</span> <span> 클래스 <i class="fa fa-chevron-right"></i>
					</span>
				</p>
				<h2 class="mb-0 bread">클래스</h2>
			</div>
		</div>
	</div>
</section>


<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<button type="button" id="productlist-categorybig">
					${category} <img id="productlist-arrow" src="../resources/images/arrow.svg">
				</button>
				<div class="productlist-categorysmall">
					<span class="productlist-active">전체</span> <span class="">댄스</span>
					<span class="">클라이밍</span> <span class="">실내다이빙</span> <span
						class="">라켓스포츠</span> <span class="">구기스포츠</span> <span class="">무도</span>
					<span class="">수영</span> <span class="">사격ㆍ양궁</span> <span class="">스키ㆍ보트</span>
				</div>
				<div class="row mb-4">
					<div
						class="col-md-12 d-flex justify-content-between align-items-center">

						<h4 class="product-select">인기 스포츠 ${fn:length(list)}</h4>
					</div>
				</div>
				<div id="productlist" class="row">

					
					<c:forEach items="${list}" var="dto">
					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url('../resources/images/classimage/${dto.classImage}');">
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#"
											class="d-flex align-items-center justify-content-center"><span
											class="flaticon-heart"></span></a> <a
											href="/hobbylovey/class/detail.action?classSeq=${dto.classSeq}"
											class="d-flex align-items-center justify-content-center"><span
											class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<!-- <span class="sale">신규</span>  -->
<%-- 							<span class="list-rate">
									<img class="list-star" src="../resources/images/bxs-star-orange.svg">
									${dto.score}
								</span> --%>
								<h2>${dto.title}</h2>
								<p class="mb-0">
									<span class="price">${dto.price}원</span> 
								</p>
							</div>
						</div>
					</div>
					</c:forEach>
				
					
				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="sidebar-box ftco-animate">
					<div class="productlist-categories">
						<div id="filter-big">
							<h3>필터</h3>
							<a href="#!">전체 초기화</a>
						</div>
						<hr>
						<div class="filter-small">정렬</div>
						<button type="button" id="btn-sort" class="productfilter-sort"
							style="display: flex; align-items: center; padding-left: 0px; padding-right: 0px;">
							<div class="filter-sort">
								<span class="glyphicon glyphicon-thumbs-up sort-img"
									aria-hidden="true"></span><span> 인기순</span>
							</div>
						</button>
						<button type="button" class="productfilter-sort"
							style="display: flex; align-items: center; padding-left: 0px; padding-right: 0px;">
							<div class="filter-sort">
								<span class="glyphicon glyphicon-star-empty sort-img"
									aria-hidden="true"></span><span> 평점순</span>
							</div>
						</button>
						<button type="button" class="productfilter-sort"
							style="display: flex; align-items: center; padding-left: 0px; padding-right: 0px;">
							<div class="filter-sort">
								<span class="glyphicon glyphicon-sort-by-attributes sort-img"
									aria-hidden="true"></span> <span> 가격 낮은순</span>
							</div>
						</button>
						<button type="button" class="productfilter-sort"
							style="display: flex; align-items: center; padding-left: 0px; padding-right: 0px;">
							<div class="filter-sort">
								<span
									class="glyphicon glyphicon-sort-by-attributes-alt sort-img"
									aria-hidden="true"></span> <span> 가격 높은순</span>
							</div>
						</button>

						<hr>
						<div class="filter-small">평점</div>
						<div class="filter-ratewrap">
							<button class="filter-ratebtn" type="button" name="star" value="1" ></button>
							<button class="filter-ratebtn" type="button" name="star" value="2"></button>
							<button class="filter-ratebtn" type="button" name="star" value="3"></button>
							<button class="filter-ratebtn" type="button" name="star" value="4"></button>
							<button class="filter-ratebtn" type="button" name="star" value="5"></button>
						</div>
						<hr>
						<div class="filter-small">가격</div>
						<div id="sort-cost" >
							<label for="range">
							      <input type="range" name="range" id="sort-range" min="1" max="100" step="5" value="175"/>
							</label>
							
						</div>
						<div><output for="range" class="output" id="sort-costout"></output></div>
						<hr>
						<h3>지도</h3>
						<div class="productlist-map_box" id="map"overflow:hidden;"></div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				<h2>카테고리</h2>
				<div class="close-modal">&times;</div>
			</div>
			<div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/sport.svg');"></div>
						<h3>스포츠</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/music.svg');"></div>
						<h3>음악</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/drawing.svg');"></div>
						<h3>드로잉</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/cooking.svg');"></div>
						<h3>쿠킹</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/play.svg');"></div>
						<h3>체험</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img"
							style="background-image: url('../resources/images/handmade.svg');"></div>
						<h3>핸드메이드</h3>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>


<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a59ab72fe6eb98f4d9b891ada5aaa375"></script>
<script type="text/javascript">


	 /* 모달 창 */
	 
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("productlist-categorybig");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close-modal")[0];

	// When the user clicks on the button, open the modal
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	
	/* 카테고리 소 클릭 */
	$('.productlist-categorysmall span').click(function(){
		$('.productlist-categorysmall span').removeClass("productlist-active");
		$(this).addClass("productlist-active");
		
		var categorySmall = $(this).text();
		var categoryBig = '${category}';
		alert(categoryBig +','+categorySmall);
		$.ajax({
			type: 'GET',
			url: '/hobbylovey/class/list_cgsmall.action',
			data: 'categoryBig='+ categoryBig +'&categorySmall=' + categorySmall +'&classseq=1&title=ㅁㄴㅇ&latitude=123&longitude=42&price=12222&classImage=ㄴㅁㅇㄻ&recommend=223',
			dataType: 'json',
			success: function(list){
				
				$('#productlist').html('');
				
				$(list).each(function (index, dto) {
					
					console.log(dto.classImage+', ' + dto.price +', ' + dto.title);
					
					$('#productlist').append('<div class="col-md-4 d-flex"><div class="product ftco-animate"><div class="img d-flex align-items-center justify-content-center" style="background-image: url(\'../resources/images/classimage/'+ dto.classImage +'\');"><div class="desc"><p class="meta-prod d-flex"><a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a> <a href="/hobbylovey/class/detail.action" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a></p></div></div><div class="text text-center"><h2>'+ dto.title +'</h2><p class="mb-0"><span class="price">'+ dto.price +'원</span></p></div></div></div>');
					
					
				});
				
				var length = $(list).length;
				
				
				$('.product-select').text('인기 '+ categorySmall + ' ' + length);
				
				
			},
			error: function(a,b,c){
				console.log(a,b,c);
			}
			
		});
		
		
		
	});
	
	 
	 /* 정렬 필터 클릭 */
	$('.productfilter-sort').click(function() {
	
		$('.productfilter-sort').removeClass("active-sort");
		$('.productfilter-sort').find('span').css({
			"color" : "#666"
		});
		if ($(this).hasClass("active-sort")) {
			$(this).removeClass("active-sort");
			$(this).find('span').css({
				"color" : "#666"
			});
		} else {
			$(this).addClass("active-sort");
			$(this).find('span').css("color", "#FFF");
		}
	});
	
    /* 별점 */
    $('.filter-ratebtn').click(function(){
    	$(this).parent().children("button").removeClass("ratebtn-active");
    	$(this).addClass("ratebtn-active").prevAll("button").addClass("ratebtn-active");
    });
	
	
	/* 가격 range 값 */
	$('#sort-range').on("input", function() {
    $('.output').val("0 ~ "+ this.value +",000  ￦" );
    }).trigger("change");
	

	/* 지도  */
		
	var container = document.getElementById('map'); // 지도 태그 선택
	
	var options = {
		center: new daum.maps.LatLng(37.551415, 126.981086), // 지도의 중앙 좌표
		level: 9 // 지도의 레벨(확대,축소)
	};
	
	var map = new daum.maps.Map(container, options); //지도 생성
	
	
       var positions = [
       	<c:forEach items="${list}" var="dto" varStatus="status">
           {
               title: '${dto.title}', 
               content: '<div>${dto.title}</div>', 
               latlng: new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude})
           }
           
           <c:if test="${list.size()-1 > status.index}">
           ,
           </c:if>
           </c:forEach>
       ];
       
       var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
        
        for (var i = 0; i < positions.length; i ++) {
            
            // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(24, 35); 
            
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
            
            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지 
            });
            
            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new kakao.maps.InfoWindow({
                content: positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        }
        
     // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
        function makeOverListener(map, marker, infowindow) {
            return function() {
                infowindow.open(map, marker);
            };
        }

        // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
        function makeOutListener(infowindow) {
            return function() {
                infowindow.close();
            };
        }
        

        
        
        
        
</script>