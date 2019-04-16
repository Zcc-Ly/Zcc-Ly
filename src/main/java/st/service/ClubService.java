package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.ST;
import st.bean.STExample;
import st.dao.STMapper;

@Service
public class ClubService {
	
	@Autowired
	STMapper stMapper;
	
	/*
	 * 查询所有社团信息
	 */
	public List<ST> getAll(){
		return stMapper.selectByExample(null);
	}

	public void saveClub(ST club) {
		// TODO Auto-generated method stub
		stMapper.insertSelective(club);
		
	}

	public ST getClub(Integer id) {
		// TODO Auto-generated method stub
		return stMapper.selectByPrimaryKey(id);
	}

	public void deleteClub(Integer id) {
		// TODO Auto-generated method stub
		stMapper.deleteByPrimaryKey(id);
	}

	
	public void updateClub(ST club) {
		// TODO Auto-generated method stub
		stMapper.updateByPrimaryKeySelective(club);
		System.out.println(club);
		
	}

	
	public List<ST> getclubBysId(List<Integer> ids){
		STExample example = new STExample();
		STExample.Criteria criteria = example.createCriteria();
		criteria.andStnoIn(ids);
		List<ST> list = stMapper.selectByExample(example);
		return list;
	}
	
}
