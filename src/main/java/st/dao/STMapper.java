package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.ST;
import st.bean.STExample;

public interface STMapper {
    long countByExample(STExample example);

    int deleteByExample(STExample example);

    int deleteByPrimaryKey(Integer stno);

    int insert(ST record);

    int insertSelective(ST record);

    List<ST> selectByExample(STExample example);

    ST selectByPrimaryKey(Integer stno);

    int updateByExampleSelective(@Param("record") ST record, @Param("example") STExample example);

    int updateByExample(@Param("record") ST record, @Param("example") STExample example);

    int updateByPrimaryKeySelective(ST record);

    int updateByPrimaryKey(ST record);
}