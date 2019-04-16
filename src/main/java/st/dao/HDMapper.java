package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.HD;
import st.bean.HDExample;

public interface HDMapper {
    long countByExample(HDExample example);

    int deleteByExample(HDExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HD record);

    int insertSelective(HD record);

    List<HD> selectByExampleWithST(HDExample example);
    
    HD selectByPrimaryKeyWithST(Integer id);
    
    
    List<HD> selectByExample(HDExample example);

    HD selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HD record, @Param("example") HDExample example);

    int updateByExample(@Param("record") HD record, @Param("example") HDExample example);

    int updateByPrimaryKeySelective(HD record);

    int updateByPrimaryKey(HD record);
}