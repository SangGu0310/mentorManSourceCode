package meetingboard.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import meetingboard.bean.GuideDTO;
import meetingboard.bean.MeetingboardDTO;
import meetingboard.dao.MeetingboardDAO;

@Service
public class MeetingboardServiceImpl implements MeetingboardService {
	@Autowired
	private MeetingboardDAO meetingboardDAO;
	
	@Override
	public void meetingboardWrite(MeetingboardDTO meetingboardDTO) {
		meetingboardDAO.meetingboardWrite(meetingboardDTO);
	}

	@Override
	public List<MeetingboardDTO> getMeetingboardList(Map<String, Integer> map) {
		return meetingboardDAO.getMeetingboardList(map);
	}

	@Override
	public MeetingboardDTO getMeetingboard(int meeting_seq) {
		return meetingboardDAO.getMeetingboard(meeting_seq);
	}

	@Override
	public int getTotalA() {
		return meetingboardDAO.getTotalA();
	}

	@Override
	public void meetingboardModify(MeetingboardDTO meetingboardDTO) {
		meetingboardDAO.meetingboardModify(meetingboardDTO);
	}

	@Override
	public void meetingboardDelete(int meeting_seq) {
		meetingboardDAO.meetingboardDelete(meeting_seq);
	}
	
	@Override
	public List<GuideDTO> getGuideList() {
		return meetingboardDAO.getGuideList();
	}
}
