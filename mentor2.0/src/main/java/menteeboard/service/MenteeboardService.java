package menteeboard.service;

import java.util.List;
import java.util.Map;

import menteeboard.bean.MenteeboardDTO;
import menteeboard.bean.MenteeboardLikeDTO;

public interface MenteeboardService {

	public List<MenteeboardDTO> getMenteeboardList(Map<String, Integer> map);

	public int getTotalA();

	public void menteeboardWrite(Map<String, String> map);

	public List<MenteeboardDTO> getMenteeboardListJob(Map<String, Object> map);

	public int getTotalAJob(String job_code);

	public MenteeboardDTO getMenteeboard(int menteeboard_seq);

	public void menteeboardHit(int menteeboard_seq);

	public void menteeboardDelete(int menteeboard_seq);

	public void menteeboardModify(Map<String, String> map);

	public void menteeboardLikeDelete(MenteeboardLikeDTO menteeboardLikeDTO);

	public void menteeboardLikeInsert(MenteeboardLikeDTO menteeboardLikeDTO);

	public int menteeboardSelect(MenteeboardLikeDTO menteeboardLikeDTO);
	
	
}
