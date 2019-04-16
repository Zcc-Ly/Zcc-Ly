package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.stust;
import st.bean.stustExample;

public interface stustMapper {
    long countByExample(stustExample example);

    int deleteByExample(stustExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(stust record);

    int insertSelective(stust record);

    List<stust> selectByExample(stustExample example);

    stust selectByPrimaryKey(Integer id);
    
    stust selectdBystIdandsId(stust st);

    List <stust> selectdBysId(Integer sId);
    
    List <stust> selectdBystId(Integer sId);
    
    int updateByExampleSelective(@Param("record") stust record, @Param("example") stustExample example);

    int updateByExample(@Param("record") stust record, @Param("example") stustExample example);

    int updateByPrimaryKeySelective(stust record);

    int updateByPrimaryKey(stust record);
}