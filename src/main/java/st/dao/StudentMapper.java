package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.Student;
import st.bean.StudentExample;

public interface StudentMapper {
    long countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    //带条件的查询
    List<Student> selectByExample(StudentExample example);

    //根据主键查询
    Student selectByPrimaryKey(Integer id);
    
    List<Student> selectByExampleWithST(StudentExample example);

    Student selectByPrimaryKeyWithST(Integer id);
    

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

	List<Student> getStuByc_id(Integer id);

	Student getStuBys_id(Integer id);

	String getpwdByns_id(Integer s_id);
}