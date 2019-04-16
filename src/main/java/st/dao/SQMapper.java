package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.SQ;
import st.bean.SQExample;

public interface SQMapper {
    long countByExample(SQExample example);

    int deleteByExample(SQExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SQ record);

    int insertSelective(SQ record);

    List<SQ> selectByExample(SQExample example);

    SQ selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SQ record, @Param("example") SQExample example);

    int updateByExample(@Param("record") SQ record, @Param("example") SQExample example);

    int updateByPrimaryKeySelective(SQ record);

    int updateByPrimaryKey(SQ record);

	List<SQ> selectBystId(Integer stId);

	int selectBysIdAndstId(SQ sq);
}