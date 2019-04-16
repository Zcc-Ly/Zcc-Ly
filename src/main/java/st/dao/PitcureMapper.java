package st.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import st.bean.Pitcure;
import st.bean.PitcureExample;

public interface PitcureMapper {
    long countByExample(PitcureExample example);

    int deleteByExample(PitcureExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Pitcure record);

    int insertSelective(Pitcure record);

    List<Pitcure> selectBysId(Integer sId);
    
    List<Pitcure> selectByExample(PitcureExample example);

    Pitcure selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Pitcure record, @Param("example") PitcureExample example);

    int updateByExample(@Param("record") Pitcure record, @Param("example") PitcureExample example);

    int updateByPrimaryKeySelective(Pitcure record);

    int updateByPrimaryKey(Pitcure record);

	List<Pitcure> selectByhId(Integer hId);
}