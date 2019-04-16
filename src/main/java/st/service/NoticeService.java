package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.Notice;
import st.dao.NoticeMapper;

@Service
public class NoticeService {

	@Autowired
	NoticeMapper noticeMapper;
	
	public List<Notice> getAll() {
		// TODO Auto-generated method stub
		return  noticeMapper.selectByExample(null);
	}

	public void saveNotice(Notice nt) {
		// TODO Auto-generated method stub
		noticeMapper.insertSelective(nt);
		
	}

	public Notice getNt(Integer id) {
		// TODO Auto-generated method stub
		return noticeMapper.selectByPrimaryKey(id);
	}

	public void updateNt(Notice nt) {
		// TODO Auto-generated method stub
		noticeMapper.updateByPrimaryKeySelective(nt);
		
	}

	public void delteNt(Integer id) {
		// TODO Auto-generated method stub
		noticeMapper.deleteByPrimaryKey(id);
	}

}
