package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.HD;
import st.bean.HDExample;
import st.dao.HDMapper;

@Service
public class HdService {

	@Autowired
	HDMapper hdMapper;
	
	public List<HD> getAll() {
		// TODO Auto-generated method stub
		return hdMapper.selectByExampleWithST(null);
	}

	public void saveHd(HD hd) {
		// TODO Auto-generated method stub
		hdMapper.insertSelective(hd);
		
	}

	public HD getHd(Integer id) {
		// TODO Auto-generated method stub
		return hdMapper.selectByPrimaryKeyWithST(id);
	}

	public void updateHd(HD hd) {
		// TODO Auto-generated method stub
		System.out.println(hd);
		hdMapper.updateByPrimaryKeySelective(hd);
		
	}

	public void deleteHd(Integer id) {
		// TODO Auto-generated method stub
		hdMapper.deleteByPrimaryKey(id);
	}
	
	
	public List<HD> getHdByhddawei(List<Integer> dws){
		HDExample example = new HDExample();
		HDExample.Criteria criteria = example.createCriteria();
		criteria.andHddanweiIn(dws);
		List<HD> list = hdMapper.selectByExampleWithST(example);
		return list;
		
		
	}

}
