<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공지사항 리스트 -->

<link rel="stylesheet" href="../admincss/member.css">    
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel" style="height: 600px;">
			<div class="x_title">
				<h2>공지사항 게시판</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
				<div class="clearfix"></div>
			</div> <!-- x_title 끝 -->
			<c:if test="${list != null }">
			<div class="x_content">
				<div class="table-responsive" style="overflow:hidden;">
					<div class="row">
						<div class="col-sm-12 memberSearch">
							<input type="text"  placeholder="찾기">
							<button type="button" class="btn btn-success btn-sm">찾기</button>
						</div>
					</div> <!-- 검색 row끝 -->
					<div class="row">
						<div class="col-sm-6">
							<div><label>Show 
								<select class="form-control" >
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="50">50</option>
									<option value="100">100</option>
									<option value="-1">All</option>
								</select> entries</label>
							</div>
						</div>
					<div class="col-sm-6"></div>
					</div><!-- 셀렉트박스 row끝-->
					<div class="row">
						<div class="col-sm-12">
							<table class="table">
								<thead>
									<tr>
										<th><input type="checkbox"></th>
										<th scope="col">글 번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">조회수</th>
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="adminnoticeboardDTO" items="${list }">
									<tr>
										<td><input type="checkbox"></td>
										<td>${adminnoticeboardDTO.seq }</td>
										<td>${adminnoticeboardDTO.title }</td>
										<td>관리자</td>
										<td>${adminnoticeboardDTO.hit }</td>
										<td>${adminnoticeboardDTO.logtime}</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div> <!-- table row 끝-->
					<div class="row a1">
						<div class="col-sm-5">
							<div class="dataTables_info a1-left">Showing 0 to 0 of 0 entries</div>
						</div>
						<div class="col-sm-7 searchPage">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav>                                                           
						</div>
					</div> <!-- 버튼 row끝 -->
				</div> <!-- table 감싸는 div-->
				<div class="ln_solid"></div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<button type="button" class="btn btn-success btn-sm">선택승인</button>
						<button type="button" class="btn btn-warning btn-sm" >선택미승인</button>
						<button type="button" class="btn btn-danger btn-sm" ><i class="fa fa-trash-o"></i> 선택삭제</button>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="pull-right">
							<button type="button" class="btn btn-success btn-sm" onclick="dataAdd()"><i class="fa fa-plus"></i> 등록</button>
						</div>
					</div>
				</div>
			</div><!-- xcontent -->
			 </c:if> 
		</div><!--x_panel-->
	</div>
</div><!-- row -->