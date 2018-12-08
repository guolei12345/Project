package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Face;

public interface FaceMapper {
    int deleteByPrimaryKey(String id);

    int insert(Face record);

    int insertSelective(Face record);

    Face selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Face record);

    int updateByPrimaryKey(Face record);

	List<Face> selectAllFace();

	Face selectByUserID(String userid);
}