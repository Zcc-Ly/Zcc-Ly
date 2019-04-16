package st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.STExample.Criteria;
import st.bean.Student;
import st.bean.StudentExample;
import st.dao.StudentMapper;

@Service
public class StudentService {

	@Autowired
	StudentMapper studentMapper;
	
	/*
	 * 查询所有学生
	 */
	public List<Student> getAll(){
	
		return studentMapper.selectByExampleWithST(null);
	}
	
	/*
	 *学生保存
	 */
	public void saveStu(Student student) {
		studentMapper.insertSelective(student);
	}

	public boolean checkUser(Integer sId) {
		// TODO Auto-generated method stub
		StudentExample example = new StudentExample();
		st.bean.StudentExample.Criteria criteria = example.createCriteria();
		criteria.andSIdEqualTo(sId);
		long count = studentMapper.countByExample(example);
		return count == 0;
	}

	public Student getStu(Integer id) {
		// TODO Auto-generated method stub
		
		return studentMapper.selectByPrimaryKey(id);
	}
	
	/*
	 * 学生更新
	 * 
	 */
	public void upadateStu(Student student) {
		studentMapper.updateByPrimaryKeySelective(student);
		
	}

	public void deleteEmp(Integer id) {
		// TODO Auto-generated method stub
		studentMapper.deleteByPrimaryKey(id);
		
	}

	public List<Student> getStuByc_id(Integer id) {
		// TODO Auto-generated method stub
	 return	studentMapper.getStuByc_id(id);
	
	}

	public List<Student> getStuBystId(List<Integer> ids) {
		// TODO Auto-generated method stub
		StudentExample example = new StudentExample();
		st.bean.StudentExample.Criteria criteria = example.createCriteria();
		criteria.andIdIn(ids);
		List<Student> list =	studentMapper.selectByExample(example);
		return list;
	}


	public Student getStuBys_id(Integer id) {
		// TODO Auto-generated method stub
		return	studentMapper.getStuBys_id(id);
	}
	
	
	public Student getstuBys_id(Integer id) {
		return studentMapper.getStuBys_id(id);
	}
	
	
	public String getpwdBys_id(Integer id) {
		Student st = new Student();
		st = studentMapper.getStuBys_id(id);
		String pwd =st.getPwd();
		return pwd;
	}

	public List<Student> getstuBys_id(List<Integer> sIds) {
		// TODO Auto-generated method stub
		StudentExample example = new StudentExample();
		st.bean.StudentExample.Criteria criteria = example.createCriteria();
		criteria.andSIdIn(sIds);
		List<Student> list =	studentMapper.selectByExample(example);
		return list;
	}
	
	
	
	
	
	
	
	
	
}
