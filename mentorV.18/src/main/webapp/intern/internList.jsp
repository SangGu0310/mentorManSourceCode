<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" type="text/css" href="../css/intern.css">

<div class="page mentee_programs show" style="margin-top:120px;margin-left:400px;">
		<!-- 체크로 알아보는 -->
		<form id="srchFrm" name="srchFrm" action="/mentor/intern/getInternList" method="post">
		<!-- <input type="hidden" name="srchLocation" id="srchLocation" value="#mounth">
		<input type="hidden" name="empSeqno" id="empSeqno" value="">
		<input type="hidden" name="sortField" id="sortField" value="comnm">
		<input type="hidden" name="sortOrderBy" id="sortOrderBy" value="ASC">
		<input type="hidden" name="sortOrderByCloseDt" id="sortOrderByCloseDt" value="">
		<input type="hidden" name="sortOrderByDATE" id="sortOrderByDATE" value="">
		<input type="hidden" name="sortOrderByComnm" id="sortOrderByComnm" value="ASC">
		<input type="hidden" name="keyWord" id="keyWord" value=""> -->
		<!-- 지역워크넷을 위한 파라미터 : header를 보여줄지 여부를 설정 한다 -->
		<!-- <input type="hidden" id="isEmptyHeader" name="isEmptyHeader" value=""> -->
		<input type="hidden" name="pageIndex" id="pageIndex" value="1">
					<h3>공채정보 간편검색</h3>
					<div class="board-view mb30" id="curEmpList">
						<div class="info-head">
							
							<div class="head-cell">
								<div class="img-area"><img src="../image/info_head3.png" alt=""></div>
								<h4>기업형태</h4>
							</div>

							<div class="head-cell">
								<div class="img-area"><img src="../image/info_head4.png" alt=""></div>
								<h4>경력사항</h4>
							</div>

							<div class="head-cell">
								<div class="img-area"><img src="../image/info_head5.png" alt=""></div>
								<h4>학력</h4>
							</div>

							<div class="head-cell">
								<div class="img-area"><img src="../image/info_head6.png" alt=""></div>
								<h4>근무형태</h4>
							</div>
						</div>

						<div class="info-body">
							
							<div class="body-cell">
								<div class="label-wrap">
									<span class="full"><input type="checkbox" id="enterPriseGbn01" name="coClcd" value="10"><label for="enterPriseGbn01">대기업</label></span>&nbsp;
									<span class="full"><input type="checkbox" id="enterPriseGbn02" name="coClcd" value="20"><label for="enterPriseGbn02">공기업</label></span>&nbsp;
									<span class="full"><input type="checkbox" id="enterPriseGbn03" name="coClcd" value="30"><label for="enterPriseGbn03">공공기관</label></span>&nbsp;
									<span class="full"><input type="checkbox" id="enterPriseGbn04" name="coClcd" value="40"><label for="enterPriseGbn04">중견기업</label></span>&nbsp;
									<span class="full"><input type="checkbox" id="enterPriseGbn05" name="coClcd" value="50"><label for="enterPriseGbn05">외국계기업</label></span>&nbsp;
													
								</div>
							</div>

							<div class="body-cell">
								<div class="label-wrap">
									<span class="full"><input type="checkbox" id="empWantedCareerCd01" name="empWantedCareerCd" value="10"><label for="empWantedCareerCd01">무관</label></span>
									<span class="full"><input type="checkbox" id="empWantedCareerCd02" name="empWantedCareerCd" value="20"><label for="empWantedCareerCd02">경력</label></span>
									<span class="full"><input type="checkbox" id="empWantedCareerCd03" name="empWantedCareerCd" value="30"><label for="empWantedCareerCd03">신입</label></span>
									<span class="full"><input type="checkbox" id="empWantedCareerCd04" name="empWantedCareerCd" value="40"><label for="empWantedCareerCd03">인턴</label></span>
								</div>
							</div>

							<div class="body-cell">
								<div class="label-wrap">
								    <span class="full"><input type="checkbox" id="academicGbn01" name="empWantedEduCd" value="10"><label for="academicGbn01">고등학교졸업</label></span>
									<span class="full"><input type="checkbox" id="academicGbn04" name="empWantedEduCd" value="20"><label for="academicGbn04">대졸(2,3)</label></span>
									<span class="full"><input type="checkbox" id="academicGbn05" name="empWantedEduCd" value="30"><label for="academicGbn05">대졸</label></span>
									<span class="full"><input type="checkbox" id="academicGbn06" name="empWantedEduCd" value="40"><label for="academicGbn06">석사</label></span>
									<span class="full"><input type="checkbox" id="academicGbn07" name="empWantedEduCd" value="50"><label for="academicGbn07">박사</label></span>
									<span class="full"><input type="checkbox" id="academicGbn08" name="empWantedEduCd" value="99"><label for="academicGbn08">학력무관</label></span>
							    </div>
							</div>

							<div class="body-cell">
								<div class="label-wrap">
									<span class="full"><input type="checkbox" id="employGbn01" name="empWantedTypeCd" value="10"><label for="employGbn01">정규직</label></span>
									<span class="full"><input type="checkbox" id="employGbn02" name="empWantedTypeCd" value="20"><label for="employGbn02">정규직 전환형</label></span>
									<span class="full"><input type="checkbox" id="employGbn03" name="empWantedTypeCd" value="30"><label for="employGbn03">비정규직</label></span>
									<span class="full"><input type="checkbox" id="employGbn04" name="empWantedTypeCd" value="40"><label for="employGbn04">기간제</label></span>
									<span class="full"><input type="checkbox" id="employGbn05" name="empWantedTypeCd" value="50"><label for="employGbn05">시간선택제</label></span>
									<span class="full"><input type="checkbox" id="employGbn06" name="empWantedTypeCd" value="60"><label for="employGbn06">기타</label></span>
								</div>
							</div>

						
						</div>
						<script>
						/* $(document).ready(function(){
							$('input[type="checkbox"]').click(function(){
								var selTxt = $(this).closest('span').text(); // 체크한 텍스트
								
								if($(this).is(':checked') == true) {
									var html = '';
									html += '<div><span>';
									html += selTxt;
									html += '</span><button type="button" class="btn-del" onclick="f_delSelVal(this);">삭제</button>';
									html += '</div>';
									
									$('#sel_items').append(html); 
								}else{
									$('.list div').each(function(){
										var saveTxt = $(this).text().replace('삭제', '');
										alert(saveTxt);
										if(selTxt == saveTxt) $(this).remove();
									}) ;
								}
							});
						
							$('input[name="workRegion"]').each(function(){
								f_addSrchList(this);
							});
				
							$('input[name="enterPriseGbn"]').each(function(){
								f_addSrchList(this);
							});
				
							$('input[name="empWantedCareerCd"]').each(function(){
								f_addSrchList(this);
							});
				
							$('input[name="academicGbn"]').each(function(){
								f_addSrchList(this);
							});
				
							$('input[name="employGbn"]').each(function(){
								f_addSrchList(this);
							});
							
							$('input[name="blindYn"]').each(function(){
								f_addSrchList(this);
							});
						});
				
						function f_addSrchList(obj){
							var selTxt = '';
							var html = '';
							if($(obj).is(':checked') == true){
								alert('f_addSrchList');
								selTxt = $(obj).closest('span').text();
								html = '';
								html += '<div><span>';
								html += selTxt;
								html += '</span><button type="button" class="btn-del" onclick="f_delSelVal(this);">삭제</button>';
								html += '</div>';
								$('#sel_items').append(html);
							}
						} */
						</script>		
				       <div class="condition"><!-- 2018-10-24 -->
							<div class="search-chk-tag">
								<div class="list" id="sel_items">
									<div><strong>선택조건 : </strong></div><!-- 2018-10-24 -->
									
								</div>
							</div>							
							<div class="right-btn-area"><!-- 2018-10-24 -->
								<a href="#f_removeAll" class="button small navy" onclick="f_removeAll();return false;">선택초기화</a>
								<!-- <button type="button" name="" class="button small blue" onclick="f_removeAll();return false;">선택초기화</button> -->
								<button type="button" name="" class="button small blue" onclick="f_search();">선택 조건으로 검색</button>
							</div>
						</div>
					</div>
		</form>
		
		
		
		<table id="internTable">
	        <colgroup>
	            <col style="width:240px">
	            <col>
	            <col style="width:170px">
	            <col style="width:100px">
	            <col style="width:100px">
	        </colgroup>
	        	<tr class="table-tr">
	        		<th>이미지</th>
	        		<th width="400px">내용</th>
	        		<th>소속</th>
	        		<th>기간</th>
	        		<th>남은 일수</th>
	        	</tr>
	        <tbody id="inputIntern" class="table-tbody">
	        	
	        </tbody>
    	</table>
    	
    	<div>
		</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/internList.js"></script>


