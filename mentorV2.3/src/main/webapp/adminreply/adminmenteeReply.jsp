<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel" style="height: 600px;">
			<div class="x_title">
				<h2>멘티게시판 댓글</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
				<div class="clearfix"></div>
			</div> <!-- x_title 끝 -->
			<div class="x_content">
				<div class="table-responsive" style="overflow:hidden;">
					<div class="row">
						<div class="col-sm-12">
							<table class="table">
								<thead>
									<tr>
										<th><input type="checkbox" id="all"></th>
										<th scope="col">번호</th>
										<th scope="col">회원 이름</th>
										<th scope="col">회원 닉네임</th>
										<th scope="col">회원 메일</th>
										<th scope="col">댓글 내용</th>
										<th scope="col">작성날짜 </th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="menteeReplyDTO" items="${list }">
								<fmt:formatDate var = "date" value="${menteeReplyDTO.menteeboardReply_logtime}" pattern="yyyy.MM.dd" />
									<tr>
										<c:if test="${menteeReplyDTO.menteeboardReply_flag eq '0'}">
										<td><input type="checkbox" class="check"value="${menteeReplyDTO.menteeboardReply_seq }"></td>
										<td>${menteeReplyDTO.menteeboardReply_seq }</td>
										<c:if test="${menteeReplyDTO.member_profile != 'profile.jpg'}">
        									<td><img src="../storage/${menteeReplyDTO.menteeboardReply_email}/${menteeReplyDTO.member_profile}" width="30" height="30" style="border-radius: 50%;">${menteeReplyDTO.member_name }</td>
										</c:if>
										<c:if test="${menteeReplyDTO.member_profile == 'profile.jpg'}">
											<td><img src="../image/profile.jpg" width="30" height="30" style="border-radius: 50%;">${menteeReplyDTO.member_name }</td>
										</c:if>
										<td>${menteeReplyDTO.member_nickname }</td>
										<td>${menteeReplyDTO.menteeboardReply_email }</td>
										<td>
											<c:choose>
												<c:when test="${fn:length(menteeReplyDTO.menteeboardReply_content) gt 50}">
													<a href="/mentor/adminreply/menteeReplyView?seq=${menteeReplyDTO.menteeboardReply_seq }" style="cursor:pointer;">
														<c:out value='${fn:substring(menteeReplyDTO.menteeboardReply_content.replaceAll("\\\<.*?\\\>|&nbsp;",""), 0, 40)}'/>...
													</a>
												</c:when>
												<c:otherwise>
													<a href="/mentor/adminreply/menteeReplyView?seq=${menteeReplyDTO.menteeboardReply_seq }" style="cursor:pointer;">
														<c:out value="${menteeReplyDTO.menteeboardReply_content}"/>
													</a>
												</c:otherwise>
											</c:choose>
										</td>
										<td>${date }</td>
										</c:if>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div> <!-- table row 끝-->
					<div class="row a1">
						<div class="col-sm-12 searchPage">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item">${adminreplyPaging.pagingHTML }</li>
								</ul>
							</nav>                                                           
						</div>
					</div> <!-- 버튼 row끝 -->
				</div> <!-- table 감싸는 div-->
				<div class="ln_solid"></div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<button type="button" class="btn btn-danger btn-sm btn_menteeReply_delete">댓글삭제</button>
					</div>
				</div>
			</div><!-- xcontent -->
		</div><!--x_panel-->
	</div>
</div><!-- row -->
<script type="text/javascript" src="../adminjs/adminReply.js"></script>