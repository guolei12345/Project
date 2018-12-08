package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Out;

public interface OutMapper {
    int deleteByPrimaryKey(String id);

    int insert(Out record);

    int insertSelective(Out record);

    Out selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Out record);

    int updateByPrimaryKey(Out record);

	List<Out> selectAllOut();

	Out selectByUserID(String userid);
}