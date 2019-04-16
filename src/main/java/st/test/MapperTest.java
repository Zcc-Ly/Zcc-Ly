package st.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import st.bean.HD;
import st.bean.SQ;
import st.bean.SQExample;
import st.bean.stust;
import st.dao.AdminMapper;
import st.dao.HDMapper;
import st.dao.PitcureMapper;
import st.dao.SQMapper;
import st.dao.StudentMapper;
import st.dao.stustMapper;
import st.service.ClubService;
import st.service.HdService;
import st.service.SqService;
import st.service.StudentService;
import st.service.stustService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {
	
	private static final int Integer = 0;

	@Autowired
	StudentMapper studentMapper;
	
	@Autowired
	StudentService studnetService;
	
	@Autowired
	AdminMapper adminMapper;

	@Autowired
	SqService sqService;
	@Autowired
	SQMapper sqMapper;
	
	@Autowired
	HDMapper hdMapper;
	@Autowired
	PitcureMapper pcMapper;
	@Autowired
	stustMapper stustmapper;
	@Autowired
	StudentService studentService;
	@Autowired
	stustService stustservie;
	@Autowired
	HdService hdService;
	@Autowired
	ClubService clubService;
	@Test
	public void testCRUD() {
		List<stust> sslist = stustservie.getssBysId(1);
		List<Integer> dws = new ArrayList<>();
		System.out.println(sslist.size());
		for(int i=0;i<sslist.size();i++) {
			System.out.println(sslist.get(i).getSuStid());
			dws.add(sslist.get(i).getSuStid());
		}
		List<HD> list = hdService.getHdByhddawei(dws);
		System.out.println(list);
	}
	@Test
	public void testsq() {
		Integer sId = 1;
		Integer stId =1;
		SQExample example = new  SQExample();
		SQExample.Criteria criteria = example.createCriteria();
		criteria.andSqSidEqualTo(sId);
		criteria.andSqStidEqualTo(stId);
		List<SQ> sq2 = sqMapper.selectByExample(example);
		SQ sq3 = sq2.get(0);
		sq3.setZt(1);
		sqMapper.updateByPrimaryKey(sq3);
		System.out.println(sq3);
		
		
	}
	
	@Test
	public void testRandom() {
		Random ne = new Random();
		int x = ne.nextInt(30000)+10;
		System.out.println(x);
	}
	
	
	
	
	@Test
	public void TestSave() {
		List<Integer> ids = new ArrayList<>();
		ids.add(1);
		ids.add(2);
		System.out.println(ids);
		studentService.getStuBystId(ids);
		System.out.println(studentService.getStuBystId(ids));
		
	}
}
