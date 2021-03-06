<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="navbar">
	<div class="navbar-inner">
		<div class="left">
			<a class="logo" type="external" href="/mentor/main/index">
				<img src="../image/logo.png" />
			</a>
		</div>
		<form class="searchbar" id="searchbar-autocomplete" action="/searchs">
			<div class="searchbar-inner">
				<!-- <div class="searchbar-input-wrap">
					<input type="search" name="q" value=""
						placeholder="직무, 회사, 멘토, 제목" autocomplete="off">
						<i class="searchbar-icon"></i> <span class="input-clear-button"></span>
				</div> -->
			</div>
		</form>
		<div class="right">
			<a class="button button-big" type="external" href="/mentor/noticeboard/noticeboardList">공지사항</a>
			<a class="button button-big" type="external" href="/mentor/mentor/mentorfindForm?pg=1">멘토 찾기</a>
			<a class="button button-big" type="external" href="/mentor/essayboard/essayboardList">에세이</a>
			<a class="button button-big" type="external" href="/mentor/meetingboard/meetingboardList">모임</a>
			<a class="button button-big" type="external" href="/mentor/menteeboard/menteeboardList">멘티 게시판</a>
			<c:if test="${memDTO!=null}">
			<a class="button button-big" type="external" href="/mentor/mentor/mentorapplyForm">멘토 지원하기</a>
			</c:if>
			<c:if test="${memDTO.member_email == null}">
			<a class="button button-big" type="external" href="/mentor/member/writeForm">회원가입</a>
			<a class="button button-big" type="external" href="/mentor/member/loginForm?status=true">로그인</a>
			</c:if>

			<c:if test="${memDTO.member_email != null}">


			<a class="button button-big" type="external" href="/mentor/member/myAlarm" style="color : rgba(0,0,0,0.84);">
			<i class="fa fa-bell myBell" id="my_bell" style="font-size:24px; width:36px;"></i>
			<span id="alarmCountSpan" class=""></span>
			</a>

			<a type="internal" class="button button-big popover-open me-profile" data-popover=".js-me-popover" onclick="clickHeader()">
				<c:if test="${memDTO.member_profile == 'profile.jpg'}">
				<img src="../image/profile.jpg" width="28" height="28">
				</c:if>
				<c:if test="${memDTO.member_profile != 'profile.jpg'}">
				<img src="../storage/${memDTO.member_email}/${memDTO.member_profile}" width="28" height="28">
				</c:if>
			</a>
			<div class="popover popover-flat me-popover js-me-popover">
				<div class="popover-inner">
					<div class="popover-angle on-top"></div>
					<div class="menu-list">
						<div class="list links-list no-hairlines-between">
							<ul>

								<c:if test="${memDTO.member_nickname == 'admin'}">
								<li><a type="external" href="/mentor/admin/adminMain">관리자 페이지</a></li>
								</c:if>

								<li><a type="external" href="/mentor/noticeboard/noticeboardList">공지사항</a></li>

								<li><a type="external" href="/mentor/mentor/mentorfindForm?pg=1">멘토찾기</a></li>
								<li><a type="external" href="/mentor/essayboard/essayboardList">에세이</a></li>
								<li><a type="external" href="/mentor/meetingboard/meetingboardList">모임</a></li>
								<li><a type="external" href="/mentor/mentor/mentorapplyForm">멘토지원하기</a></li>
							</ul>
						</div>
						<hr style="background-color: #c8c7cc;">
						<div class="list links-list no-hairlines-between">
							<ul>
								<c:if test="${memDTO.member_flag == 1}">
								<li><a type="external" href="/mentor/essayboard/essayboardWriteForm">에세이 쓰기</a></li>
								</c:if>
								<li><a type="external" href="/mentor/menteeboard/menteeboardList">멘티 게시판</a></li>
								<li><a type="external" href="/mentor/intern/internMain">공채 정보</a></li>
								<li><a type="external" href="/mentor/member/myQandA?pg=1">나의 질문/답변 <span class="badge color-red alim" id="myQandA_count" style="margin: auto;"></span></a></li>
								<li><a type="external" href="/mentor/essayboard/essayboardAttention">관심에세이</a></li>
								<li><a type="external" href="/mentor/mentor/mentorAttention">관심멘토</a></li>
							</ul>
						</div>
						<hr style="background-color: #c8c7cc;">
						<div class="list links-list no-hairlines-between">
							<ul>
								<li><a type="external" href="/mentor/mentee/menteeUserForm">내 정보</a></li>
								<li><a type="external" href="/mentor/participation/order">모임 바구니</a></li>
								<li><a type="external" href="/mentor/member/logout">로그아웃</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			</c:if>
	</div>
	</div>
</div>

<style>
.bell-badge{
    padding: 3px 5px 2px;
    position: absolute;
    top: 22px;
    right: 6px;
    display: inline-block;
    min-width: 10px;
    font-size: 12px;
    font-weight: bold;
    color: #ffffff;
    line-height: 1;
    vertical-align: baseline;
    white-space: nowrap;
    text-align: center;
    border-radius: 10px;
}
.bell-badge-danger {
    background-color: #db5565;
}
</style>

<script>
function clickHeader(){
	$.ajax({
		type: 'post',
		url: '/mentor/member/headerNotification',
		dataType: 'text',
		success: function(data){
			if(data == 0){
				$('#myQandA_count').removeClass('badge color-red alim');
			}else{
				$('#myQandA_count').text(data);				
			}
		},
		error: function(data){
			
		}
	});
}
</script>
