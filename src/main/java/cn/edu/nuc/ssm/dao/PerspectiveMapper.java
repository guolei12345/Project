package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Perspective;

public interface PerspectiveMapper {
    int deleteByPrimaryKey(String id);

    int insert(Perspective record);

    int insertSelective(Perspective record);

    Perspective selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Perspective record);

    int updateByPrimaryKey(Perspective record);

	List<Perspective> selectAllPerspective();

	Perspective selectByUserID(String userid);
}