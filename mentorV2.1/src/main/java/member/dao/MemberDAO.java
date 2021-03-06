package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.CustomUserDetails;
import member.bean.MemberDTO;
import mentee.bean.MenteeDTO;
import mentor.bean.MentorDTO;

public interface MemberDAO {

	public MemberDTO writeNicknamecheck(String member_nickname);

	public MemberDTO writeEmailCheck(String member_email);

	public void write(Map<String, String> map);

	public MemberDTO login(Map<String, String> map);

	public MemberDTO setsetmemberpwd(Map<String, String> map);

	public MemberDTO newPwdCommit(Map<String, String> map);

	public List<MentorDTO> getQandA(Map<String, String> map);

	public int getTotalA(String member_email);

	public MentorDTO getMentor_info(Map<String, String> map);

	public List<MentorDTO> getMentoring_type(Map<String, String[]> arrayMap);

	public int getMentor_seq(String member_email);

	public int getMember_flag(String member_email);

	public List<MentorDTO> getMemtee_question(int mentor_seq);

	public String getMember_email(int qsseq);

	public void answerSave(Map<String, String> map);

	public MentorDTO getMentor_auswer(int qsseq);

	public void questionDelete(int question_seq);

	public MemberDTO getMemberByEmail(String member_email);

	public void createAuthKey(String string, String authKey);

	public MemberDTO checkAuthKey(MemberDTO memberDTO);

	public void updateMemberAuthState(MemberDTO memberDTO);

	public void answerModify(Map<String, String> map);





}
