package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Out;

public interface OutService {

	int deleteByPrimaryKey(String id);

    int insert(Out record);

    int insertSelective(Out record);

    Out selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Out record);

    int updateByPrimaryKey(Out record);

	Out selectByUserID(String userid);

	List<Out> selectAllOut();
}
