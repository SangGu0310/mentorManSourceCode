<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="page navbar-fixed questions new" data-name="questions-new">
	<div class="page-content">
		<div class="mentor-block">
			<div class="block mentor-info-block">
				<div class="mentor-image img-circle">
					<a type="external" href="/mentors/26668">
					  <c:if test="${mentorDTO.member_profile != 'profile.jpg'}">
			            <img width="100" height="100" src="../storage/${mentorDTO.mentor_email}/${mentorDTO.member_profile}">
			          </c:if>
			          <c:if test="${mentorDTO.member_profile == 'profile.jpg'}">
			            <img width="100" height="100" src="../image/profile.jpg">
			          </c:if>
					</a>
				</div>
				<div class="block mentor-info">
					<div class="name">
						<span class="mentor-name">
						${mentorDTO.member_name} <small>멘토</small>
						</span>
						<a class="button col js-bookmark mentor_${mentorDTO.mentor_seq}" id="followA" data-params="followed_id=26668" data-disable-with="..." type="external" data-remote="true" rel="nofollow" data-method="post" href="/relationships">
						팔로우 </a>
					</div>
					<div class="job">
						${mentorDTO.mentor_company} · ${mentorDTO.mentor_department}
					</div>
					<div class="detail-block">
						<div class="mentoring-info">
							<div class="title text-decoration-underline">
								 대표 멘토링 분야
							</div>
							<div class="mentoring-type-block">
								 ${mentorDTO.mentor_represent}
							</div>
						</div>
						<div class="mentoring-info">
							<div class="title">
								 멘토링 분야
							</div>
							<div class="mentoring-type-block">
					              <div class="chip chip-outline no-border-radius" style="border-radius: 5px;">
					                <div class="chip-label">
					                 	 ${mentorDTO.job_type}
					                </div>
					              </div>
							<c:forEach var="array" items="${list}">
								<div class="chip chip-outline no-border-radius" style="border-radius: 5px;">
									<div class="chip-label">
										${array.mentoring_type }
									</div>
								</div>
							</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<div class="block block-strong question-block">
  <div class="block hero-title">
    <h1 class="title">
      멘토에게 질문하기
    </h1>

    <p class="description">멘토님께 궁금한 점을 질문해 보세요. 우수 멘토링 콘텐츠는 멋지게 편집해서 익명으로 콘텐츠에 등록됩니다.</p>
  </div>

  <div class="block">
   		 <form class="simple_form new_question" id="question_form" novalidate="novalidate" action="/mentor/mentor/mentorQuestionsSuccess" accept-charset="UTF-8" method="post">
	      <div class="list form-list no-hairlines">
		        <ul>
		          <li class="item-content item-input">
		            <div class="item-inner">
		              <div class="item-input-wrap">
		                <input class="string required" placeholder="고민 한줄 요약" type="text" name="question_title" id="question_title" value="${questionDTO.question_title }">
		              </div>
		              <div id="question_title_error"></div>
		            </div>
		          </li>
		        </ul>

		        <div class="block-footer">
		          <strong>질문을 구체적으로 작성해 주세요.</strong>
		          <li>
		            <span>예)</span> 영업 직무 취업을 목표로 3개월 계획을 세웠습니다.
		          </li>
		
		          <li>
		            <span>예)</span> 외국계 기업에서 좋은 조건으로 인터뷰를 제안하였습니다.
		          </li>
		        </div>
      		</div>

     		 <div class="list form-list no-hairlines">
		        <ul>
		          <li class="item-content item-input">
		            <div class="item-inner">
		              <div class="item-input-wrap">
		                <textarea class="text required" name="question_content" id="question_content">${questionDTO.question_content}</textarea>
		              </div>
		              <div id="question_content_error"></div>
		            </div>
		          </li>
		        </ul>

       				<div class="block-footer">
			        
     				</div>
     				<c:if test="${questionDTO==null}">
      					<input type="button" id="save_btn" name="submit_btn" value="보내기" class="btn button button-big button-fill">
  					</c:if>
     				<c:if test="${questionDTO!=null}">
      					<input type="button" id="modify_btn" name="submit_btn" value="수정하기" class="btn button button-big button-fill">
  					</c:if>
  					</div>
					<input type="hidden" id="mentor_seq" name="mentor_seq" value="${seq}">
					<input type="hidden" id="question_seq" name="question_seq" value="${questionDTO.question_seq}">
					<input type="hidden" id="pg" name="pg" value="${pg}">
  					<input type="hidden" id="followVal" name="followVal" value="${follow}">
  					<!-- 소켓 알림으로 사용 -->
  					<input type="hidden" id="memNickname" name="memNickname" value="${memNickname}">
  					<input type="hidden" id="member_nickname" name="member_nickname" value="${mentorDTO.member_nickname}">
  					
  					<input type="hidden" id="followed_email" name="followed_email" value="${mentorDTO.mentor_email}">
  				</form>
			</div>
  		</div>
	</div>
</div>
<script src="../js/mentor.js"></script>
<script>


</script>