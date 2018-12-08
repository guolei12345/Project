package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Perspective;

public interface PerspectiveService {

	int deleteByPrimaryKey(String id);

    int insert(Perspective record);

    int insertSelective(Perspective record);

    Perspective selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Perspective record);

    int updateByPrimaryKey(Perspective record);

	List<Perspective> selectAllPerspective();

	Perspective selectByUserID(String userid);
}
