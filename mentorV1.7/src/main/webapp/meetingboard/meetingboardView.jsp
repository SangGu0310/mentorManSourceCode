<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form name="meetingboardViewForm">
<input type="hidden" name="seq" id="seq" value="${meetingboardDTO.meeting_seq}">
<input type="hidden" name="pg" id="pg" value="${pg}">
</form>

<div class="page navbar-fixed mentee_programs show">
	<div class="page-content" style="width: 800px; margin: auto;">
		<div class="block main-block">
		<%-- <c:if test="${memEmail == meetingboardDTO.email}"> --%>
			<div style="float: right; margin-bottom: 5px;">
				<button class="button" id="meetingboardModifyFormBtn" style="display: inline-block;">수정</button>
				<button class="button" id="meetingboardDeleteBtn" style="display: inline-block;">삭제</button>
			</div>
		<%-- </c:if> --%>
			<div>
				<img src="../image/job_code/${meetingboardDTO.job_code}.jpg" style="width: 100%; height: 500px;">
			</div>
			<h1 class="title" style="color: black;">${meetingboardDTO.title}</h1>
			<div class="description" style="font-size: 19px;">${meetingboardDTO.subtitle}</div>
		</div>
		<div class="block-title">기본정보</div>
		<div class="list basic-block">
			<ul>
				<li>
					<div class="item-inner">
						<div class="item-title">&nbsp;일시</div>
						<div class="item-schedule">
							<div class="item-after">
								${meetingboardDTO.day} ${meetingboardDTO.starthour} ~ ${meetingboardDTO.endhour}
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="item-inner">
						<div class="item-title">&nbsp;장소</div>
						<div class="item-after">${meetingboardDTO.buildingname}</div>
					</div>
				</li>
				<li>
					<div class="item-inner">
						<div class="item-title">&nbsp;모집인원</div>
						<div class="item-after">${meetingboardDTO.count}명</div>
					</div>
				</li>
				<li>
					<div class="item-inner">
						<div class="item-title">&nbsp;주최</div>
						<div class="item-after">${meetingboardDTO.host}</div>
					</div>
				</li>
				<li>
					<div class="item-inner">
						<div class="item-title">&nbsp;참가비</div>
						<div class="item-after">${meetingboardDTO.price}원</div>
					</div>
				</li>
			</ul>
		</div>

		<div class="block-title">참여멘토</div>
		<div class="mentor-block block block-strong">
			<div class="block mentor-info-block">
				<div class="mentor-image img-circle">
					<a target="_blank" type="external" href=""> <img width="150" height="150" src="">
					</a>
				</div>
				<div class="block mentor-info">
					<div class="name">
						<span class="mentor-name"> <a target="_blank" type="external" href="">멘토이름</a> <small>멘토</small>
						</span>
					</div>
					<div class="job">멘토잡</div>
					<div class="detail-block">
						<div class="mentoring-info">
							<div class="mentoring-type-block">
								<div class="chip chip-outline no-border-radius mentor-index">
									<div class="chip-label">
										<span>답변율 <strong class="highlight">!!!!!수정</strong></span>
									</div>
								</div>

								<div class="chip chip-outline no-border-radius mentor-index">
									<div class="chip-label">
										<span>답변수 <strong class="highlight">!!!!!수정</strong></span>
									</div>
								</div>

								<div class="chip chip-outline no-border-radius mentor-index">
									<div class="chip-label">
										<span>뱃지 <strong class="highlight">!!!!!수정</strong></span>
									</div>
								</div>

								<div class="chip chip-outline no-border-radius mentor-index">
									<div class="chip-label">
										<span>팔로워 <strong class="highlight">!!!!!수정</strong></span>
									</div>
								</div>
							</div>
						</div>

						<div class="mentoring-info">
							<div class="title text-decoration-underline">대표 멘토링 분야</div>
							<div class="mentoring-type-block">!!!!!수정</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="block mentor-detail-block">
			<h4 class="title">멘토 소개</h4>
			<div>멘토소개가져오기</div>
			<h4 class="title">주요 경력</h4>
			<div>경력사항가져오기</div>
		</div>
		<div class="block-title">프로그램 내용</div>
		<div class="block block-strong trix-content froala-content">
			${meetingboardDTO.content}
		</div>
		<div class="block-title">안내사항</div>
		<div class="block block-strong">
			<ul>
				<c:forEach items="${guideList}" var="item">
					<li><i class="fas fa-check"></i>${item.guide_content}</li>
				</c:forEach>
			</ul>
		</div>
		<div class="block-title location">장소</div>
		<div class="block block-strong">
	        <div>
	          	${meetingboardDTO.buildingname}
	        </div>
	
	        <div class="block-footer">
	          <div>
	            ${meetingboardDTO.address}, ${meetingboardDTO.buildingname}
	          </div>
	          <br>
	          <div id="meetingboardViewMap" style="width: 757px; height: 300px; margin: auto;"></div>
	        </div>
	      </div>
		<div class="block button-block">
		<c:if test="${meetingboardDTO.state == 0}">
	      <a class="button button-big button-fill" type="external" href="">신청하기</a>
	    </c:if>
	    <c:if test="${meetingboardDTO.state == 1}">
	      <div class="button button-big button-fill color-gray">모집완료</div>	  
	    </c:if>
	    <c:if test="${meetingboardDTO.state == 2}">
			<div class="button button-big button-fill color-gray">종료</div>	    
		</c:if>
	    </div>
	</div>
</div>
<script src="../js/meetingboard.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=89c3afe322de0763fb20750b2bf6b62a&libraries=services"></script>
<script type="text/javascript">
	var address_x = ${meetingboardDTO.address_x};	// 경도
	var address_y = ${meetingboardDTO.address_y};	// 위도
	var buildingname = '${meetingboardDTO.buildingname}'; // 건물이름
	
	var mapContainer = document.getElementById('meetingboardViewMap'), // 지도를 표시할 div 
    	mapOption = { 
        	center: new kakao.maps.LatLng(address_y, address_x), // 지도의 중심좌표
        	level: 2 // 지도의 확대 레벨
    	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition = new kakao.maps.LatLng(address_y, address_x);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition,
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">${meetingboardDTO.buildingname}</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(address_y, address_x), //인포윈도우 표시 위치입니다
    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성하고 지도에 표시합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent
	});
    
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker);
</script>