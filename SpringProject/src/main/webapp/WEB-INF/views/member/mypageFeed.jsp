<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('resources/images/sample4.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">

					<!-- 페이지에 맞게 수정 필요  -->
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span>마이페이지 <span><i
						class="fa fa-chevron-right"></i> 피드</span>
				</p>
				<h2 class="mb-0 bread">내가 남긴 피드</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row d-flex">

			<div id="customer_info">
				<div class="CustomerInfo__Wrapper-wiqp5v-0 jersza">
					<div class="CustomerInfo__InfoWrapper-wiqp5v-1 fSUxZv">
						<div class="CustomerInfo__MetaData-wiqp5v-2 hYJTCm">
							<div class="CustomerInfo__Name-wiqp5v-3 hLhGnd">
								<a class="CustomerInfo__NameTextLink-wiqp5v-4 JiXdX" href="#!">아이디</a>
								<a href="/more"><img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='59' height='20' viewBox='0 0 59 20'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Crect width='58' height='19' x='.5' y='.5' stroke='%23333' rx='9.5'/%3E %3Cpath fill='%23333' fill-rule='nonzero' d='M28.811 14.869V4.903h-1.133v3.531h-2.662v.935h2.662v5.5h1.133zm-6.985-2.431c.968 0 1.767-.022 2.398-.066.697-.051 1.375-.14 2.035-.264l-.11-.913c-.601.11-1.217.187-1.848.231-.55.037-1.258.059-2.123.066V6.751h3.377v-.924h-4.51v6.611h.781zm17.353 1.199v-.935H35.23V10.7h2.915V5.574h-1.122v1.672h-4.708V5.574h-1.122V10.7h2.904v2.002h-3.916v.935h8.998zm-2.156-3.85h-4.708V8.159h4.708v1.628zm10.973 5.06V4.914h-1.133v9.933h1.133zm-7.524-1.771c1.628-.792 2.82-1.815 3.575-3.069.352-.587.612-1.228.781-1.925.161-.653.242-1.36.242-2.123h-4.708v.924h3.542c-.103 1.166-.473 2.178-1.111 3.036-.667.887-1.643 1.639-2.926 2.255l.605.902z'/%3E %3Cpath fill='%23333' d='M14.3 6.002l1.522.879-.334 1.13c.174.23.314.483.416.751l1.11.266-.03 1.809-1.118.303c-.056.134-.121.267-.196.397-.075.13-.158.253-.247.368l.297 1.12-1.551.931-.785-.828c-.284.045-.573.051-.86.015l-.81.855-1.522-.879.334-1.13c-.175-.23-.314-.483-.416-.751L9 10.972l.03-1.809 1.119-.303c.055-.135.12-.267.195-.397.075-.13.158-.253.246-.368l-.296-1.12 1.551-.931.785.828c.284-.045.572-.051.859-.015l.812-.855zM13.008 9c-.552 0-1 .448-1 1s.448 1 1 1 1-.448 1-1-.448-1-1-1z'/%3E %3C/g%3E %3C/svg%3E"
									alt="더보기" class="CustomerInfo__MoreButton-wiqp5v-5 gqCwlj"></a>
							</div>
							<div class="CustomerInfo__AccountType-wiqp5v-6 louFxa">이메일
								계정</div>
						</div>
						<label class="ImageProfile__Wrapper-i59a6p-0 bwVeRo"> <input
							type="file" accept=".jpg, .jpeg, .png">
							<div
								class="Image__Wrapper-v97gyx-0 gDuKGF ImageProfile__StyledImage-i59a6p-3 khIEaS">
								<div class="Ratio " style="display: block;">
									<div class="Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII="
												alt="프로필 이미지" class="Image__DefaultImage-v97gyx-3 hVNKgp">
										</div>
									</div>
								</div>
							</div> <img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3E %3Cg fill='none' fill-rule='evenodd' transform='translate(3.68 3)'%3E %3Cellipse cx='11.52' cy='12' fill='%23E5E7EA' stroke='%23FFF' stroke-width='3' rx='13.02' ry='13.5'/%3E %3Cpath fill='%238E97A3' fill-rule='nonzero' d='M15.638 5.904l2.716 2.715-1.415 1.415-2.715-2.716 1.414-1.414zm-2.464 2.465l2.715 2.715-6.988 6.988-2.855.14.14-2.856 6.988-6.987z'/%3E %3C/g%3E %3C/svg%3E"
							alt="수정 아이콘" class="ImageProfile__Icon-i59a6p-4 isqgAm">
						</label>
					</div>
					<div class="CustomerInfo__MembershipCard-wiqp5v-7 iqShOY">
						<div class="CustomerInfoBox__Wrapper-sc-68qvux-0 gVkstK">
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="#!">
									<div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										스크랩<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0
								</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="#!"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										나의 문의글<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>1</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageReview.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										후기<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageFeed.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										피드<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageCourseDetail.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										수강내역<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
						</div>
					</div>
				</div>


				<hr height="10" class="Hr-sc-4qqq6q-0 tQdWD">
			</div>

			<div class="SocialFeedPage_Wrapper"
				style="display: flex; flex-direction: column; width: 100%; max-width: 768px; margin: 0px auto;">
				<div class="SocialFeedPage_Header"
					style="display: flex; align-items: center; padding: 20px; border-bottom: 1px solid rgb(238, 238, 238);">
					<span class="SocialFeedPage_Title"
						style="color: rgb(51, 61, 75); font-weight: bold; font-size: 24px;">하비러비
						피드</span>
					<button class="SocialFeedPage_TooltipButton"
						style="cursor: pointer; vertical-align: super; margin-left: 10px; border-style: none; background-color: transparent;">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='17' height='17' viewBox='0 0 17 17'%3E %3Cpath fill='%23CCC' d='M8.5 0C13.194 0 17 3.806 17 8.5S13.194 17 8.5 17 0 13.194 0 8.5 3.806 0 8.5 0zm0 1.5c-3.866 0-7 3.134-7 7s3.134 7 7 7 7-3.134 7-7-3.134-7-7-7zm-.09 9.22c.613 0 .92.32.92.96 0 .64-.307.96-.92.96-.607 0-.91-.32-.91-.96 0-.64.303-.96.91-.96zm.15-5.95c.627 0 1.123.157 1.49.47.393.333.59.81.59 1.43 0 .313-.09.62-.27.92-.073.113-.163.24-.27.38l-.47.54c-.053.06-.1.12-.14.18-.107.133-.19.26-.25.38-.16.293-.223.597-.19.91H7.77c-.053-.367-.01-.717.13-1.05.053-.133.13-.273.23-.42.073-.113.167-.24.28-.38l.56-.68c.173-.247.26-.473.26-.68 0-.547-.283-.82-.85-.82-.38 0-.75.187-1.11.56l-.81-.74c.273-.313.58-.553.92-.72.367-.187.76-.28 1.18-.28z'/%3E %3C/svg%3E"
							alt="하비러비 피드란?"
							style="border-style: none; vertical-align: middle;" />
					</button>
				</div>
				<div class="Fade_Wrapper"
					style="opacity: 1; display: block; width: auto; height: auto; min-width: 0px; min-height: 1px; transition: opacity 200ms ease-in-out 0s;">
					<div>
						<div class="SocialFeedList_FeedListWrapper"
							style="display: flex; flex-wrap: wrap; overflow-x: hidden; justify-content: space-between;">
							<div class="CardFeed_Wrapper"
								style="max-width: 385px; width: 100%; padding: 30px 20px; border-bottom: 1px solid rgb(238, 238, 238); border-left: 1px solid rgb(238, 238, 238); margin-left: -1px;">
								<div class="Profile_Wrapper"
									style="margin-bottom: 15px; display: flex; justify-content: space-between;">
									<div class="Profile_UserProfileWrapper" style="display: flex;">
										<div class="Profile_ProfileImageWrapper"
											style="width: 36px; height: 36px; margin-right: 10px;">
											<div class="Image_Wrapper" style="min-height: 1px;">
												<img
													src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,h_36,q_auto,r_36,w_36/15325A1B-1A55-4E9A-A615-3423BF5135C9_zqx5u3"
													alt="" class="Image_StyledImageLoader" width="36"
													height="36" style="display: none !important" />
												<div class="Fade_Wrapper"
													style="opacity: 1; display: block; width: auto; height: auto; min-width: 0px; min-height: 1px; transition: opacity 200ms ease-in-out 0s;">
													<div class="Ratio" style="display: block;">
														<div class="Ratio-ratio"
															style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
															<div class="Ratio-content"
																style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																<img
																	src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,h_36,q_auto,r_36,w_36/15325A1B-1A55-4E9A-A615-3423BF5135C9_zqx5u3"
																	alt="" class="Image_StyledImage" width="36" height="36" />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="Profile_UserTextWrapper"
											style="display: flex; flex-direction: column; justify-content: space-around;">
											<p class="Profile_Name"
												style="font-size: 14px; line-height: 14px; font-weight: 500; color: rgb(78, 89, 104);">하하하</p>
											<div class="Profile_Time"
												style="font-size: 12px; line-height: 12px; color: rgb(142, 151, 163);">9시간전</div>
										</div>
									</div>
									<button class="Profile_MoreButton"
										style="cursor: pointer; justify-items: flex-end; border-style: none; background-color: transparent;">
										<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='4' height='17' viewBox='0 0 4 17'%3E %3Cpath fill='%23999' fill-rule='evenodd' d='M1.57 14a1.5 1.5 0 110 3 1.5 1.5 0 010-3zm0-7a1.5 1.5 0 110 3 1.5 1.5 0 010-3zm0-7a1.5 1.5 0 110 3 1.5 1.5 0 010-3z'/%3E %3C/svg%3E"
											alt="더보기" style="border-style: none; vertical-align: middle;" />
									</button>
								</div>
								<div class="Ratio ImageBanner_Wrapper"
									style="display: block; border-radius: 20px; overflow: hidden; background-color: rgb(242, 243, 246); cursor: pointer; backface-visibility: hidden; transform: translate3d(0px, 0px, 0px)">
									<div class="Ratio-ratio"
										style="height: 0px; position: relative; width: 100%; padding-top: 100%; padding-bottom: initial;">
										<div class="Ratio-content"
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%; padding-bottom: initial;">
											<div class="FeedImage_Wrapper"
												style="padding-bottom: initial;">
												<div class="FeedImage_ImageLoaderWrapper"
													style="padding-bottom: initial; display: none;">
													<img
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,f_auto,q_auto,w_344/39FAB266-E2BD-4027-8E4B-CDBE4BA7B17C_tahowy"
														alt=""
														style="width: 100%; border-style: none; vertical-align: middle;" />
												</div>
												<div class="Fade_Wrapper"
													style="opacity: 1; display: block; padding-bottom: initial; width: auto; height: auto; min-width: 0px; min-height: 1px; transition: opacity 200ms ease-in-out 0s;">
													<div>
														<img
															src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_344/39FAB266-E2BD-4027-8E4B-CDBE4BA7B17C_tahowy"
															alt="" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<a href="" class="ProductLink_Wrapper"
									style="margin-top: 10px; display: flex; justify-content: space-between; align-items: center; height: 45px; font-size: 13px; font-weight: 500; color: rgb(5, 116, 230); padding: 0px 20px; border: 1px solid rgb(229, 231, 234); border-radius: 20px; cursor: pointer;">
									<div class="ProductLink_Text"
										style="display: block; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
										<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='14' viewBox='0 0 12 14'%3E %3Cg fill='%230574E6'%3E %3Cpath d='M0 .708v12.584c0 .181.08.372.21.5A.728.728 0 00.716 14c.185-.008.377-.067.507-.206a.73.73 0 00.21-.5v-.337-.918-1.351-1.655V7.22 5.398v-1.7-1.443-1.037V.73.708a.732.732 0 00-.21-.5A.728.728 0 00.716 0C.532.009.34.068.21.207a.732.732 0 00-.21.5z' transform='translate(.104)'/%3E %3Cpath d='M10.108 2.339c0-.192.078-.362.198-.5a.674.674 0 01.479-.207.668.668 0 01.478.206c.122.129.198.32.198.501v.013c.004.281 0 .564 0 .846V9.29c0 .383-.311.707-.676.707h-.017c-.351.004-.704 0-1.056 0H6.587a.71.71 0 01-.533-.27l-.463-.54-.88-1.026.479.206H.678c-.366 0-.676-.325-.676-.707v-.013c-.004-.281 0-.564 0-.846V5.066 3.06v-1.66-.69c0-.383.31-.707.676-.707h.018c.362-.004.724 0 1.087 0h3.393c.192.003.383.08.513.232l.434.506.941 1.098-.479-.206h4.2c.184 0 .346.079.478.206.133.129.19.318.198.501a.732.732 0 01-.198.5.688.688 0 01-.478.207h-.017c-.351.005-.704 0-1.056 0H6.587a.71.71 0 01-.533-.27A22157517.325 22157517.325 0 004.71 1.21c.16.068.32.137.479.207H.678l.676-.708v.013c.004.281 0 .564 0 .846v6.093l-.676-.707h.018c.362-.006.724 0 1.087 0h3.393c.192.003.383.08.513.232l.434.506.941 1.098c-.16-.068-.319-.137-.479-.207h4.2l-.677.708v-.013c-.004-.281 0-.564 0-.846V6.696 4.69v-1.66-.69z' transform='translate(.104)'/%3E %3C/g%3E %3C/svg%3E"
											alt="[청년공방] 감성 네온사인 만들기 DIY 올인원키트"
											style="margin-right: 10px; border-style: none; vertical-align: middle;" />[청년공방]
										감성 네온사인 만들기 DIY 올인원키트
									</div> <img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='7' height='11' viewBox='0 0 7 11'%3E %3Cpath fill='none' fill-rule='evenodd' stroke='%230574E6' stroke-width='1.5' d='M298 71L291 71 291 64' transform='scale(-1 1) rotate(45 221.84 -319.597)'/%3E %3C/svg%3E"
									alt="[청년공방] 감성 네온사인 만들기 DIY 올인원키트"
									style="border-style: none; vertical-align: middle;" />
								</a>
								<div class="Description_Wrapper"
									style="margin-top: 18px; margin-bottom: 21px; letter-spacing: -0.4px; font-size: 16px; color: rgb(78, 89, 104); white-space: pre-line;">
									<span class="SpanLineClamp"
										style="display: -webkit-box; overflow: hidden; text-overflow: ellipsis; -webkit-line-clamp: 2; -webkit-box-orient: vertical; max-height: 58px;">생각보다
										만들기 쉬웠어요! 처음에 선 잘못 잘라서 노가다 하다가 결국 만족스럽게 완성했습니당👍🏻 시간은 2시간 정도
										걸렸고, 아쉬운점은 배송이 1주일 뒤에 와서 좀 아쉽네요ㅠㅠ</span>
									<button class="Description_ExpandButton"
										style="padding: 0px; color: rgb(171, 182, 196); cursor: pointer; background-color: transparent; border-style: none; font-size: 1em; margin: 0;">더보기</button>
								</div>
								<div class="ActionGroup_Wrapper"
									style="display: flex; -webkit-box-align: center; align-items: center; font-size: 14px; line-height: 14px; font-weight: 500; color: rgb(78, 89, 104);">
									<button class="ActionGroup_LikeButton"
										style="-webkit-appearance: button; height: 24px; display: flex; -webkit-box-align: center; align-items: center; padding: 0px; margin-right: 20px; cursor: pointer; border-style: none; background-color: transparent; font-size: 1em;">
										<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='21' height='18' viewBox='0 0 21 18'%3E %3Cpath fill='none' stroke='%234E5968' stroke-width='1.5' d='M15.657.75c-1.226 0-2.379.485-3.246 1.365l-1.91 1.94-1.912-1.94C7.722 1.235 6.57.75 5.343.75s-2.378.485-3.245 1.365C1.198 3.028.75 4.227.75 5.425c0 1.199.448 2.398 1.348 3.31l8.425 8.504 8.379-8.504c.9-.912 1.348-2.111 1.348-3.31 0-1.198-.448-2.397-1.347-3.31-.867-.88-2.02-1.365-3.246-1.365z'/%3E %3C/svg%3E"
											alt="좋아요" style="border: 0px; vertical-align: middle;" /> <span
											style="margin-left: 8px;">0</span>
									</button>
									<a href="" class="ActionGroup_ReplyLink"
										style="display: flex; -webkit-box-align: center; align-items: center; cursor: pointer;">
										<img
										src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='21' height='18' viewBox='0 0 21 18'%3E %3Cpath fill='none' stroke='%234E5968' stroke-width='1.5' d='M20.25.75H.75v11.818h3.842v4.015l5.9-4.015h9.758V.75z'/%3E %3C/svg%3E"
										alt="댓글"
										style="border-style: none; vertical-align: middle; cursor: pointer;" />
										<span style="margin-left: 8px;">0</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>