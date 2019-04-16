package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.stust;
import st.bean.stustExample;
import st.dao.stustMapper;

@Service
public class stustService {

	@Autowired
	stustMapper stustmapper;
	
	public List<stust> getssBysId(Integer sId){
		return stustmapper.selectdBysId(sId);
	}
	
	public List<stust> getssBystId(Integer stId){
		return stustmapper.selectdBystId(stId);
	}


	public void savestu(stust ss) {
		// TODO Auto-generated method stub
		stustmapper.insert(ss);
		
	}

	public void deletestust(stust st) {
		// TODO Auto-generated method stub
	stust ss  = stustmapper.selectdBystIdandsId(st);
	Integer id = ss.getId();	
	stustmapper.deleteByPrimaryKey(id);
		
	}
	
	public void agreeSQ_stustupdate(Integer sId,Integer stId) {
		stust ss = new stust();
		ss.setSuSid(sId);
		ss.setSuStid(stId);
		stustmapper.insert(ss);
	}
	
}
