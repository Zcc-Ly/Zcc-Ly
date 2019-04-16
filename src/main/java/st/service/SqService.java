package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.SQ;
import st.bean.SQExample;
import st.dao.SQMapper;

@Service
public class SqService {

	
	@Autowired
	SQMapper sqMapper;
	
	public void sqinsert(Integer sqsId,Integer sqStid) {
		SQ sq = new SQ();
		sq.setSqSid(sqsId);
		sq.setSqStid(sqStid);
		sq.setZt(0);
		sqMapper.insert(sq);
	}
	
	public List<SQ> getsqBystId(Integer stId) {
		return sqMapper.selectBystId(stId);
	}
	
	public void agreeSQ(Integer sId,Integer stId) {
		SQExample example = new  SQExample();
		SQExample.Criteria criteria = example.createCriteria();
		criteria.andSqSidEqualTo(sId);
		criteria.andSqStidEqualTo(stId);
		List<SQ> sq = sqMapper.selectByExample(example);
		SQ sq2 = sq.get(0);
		sq2.setZt(1);
		sqMapper.updateByPrimaryKey(sq2);
	}
	
}
