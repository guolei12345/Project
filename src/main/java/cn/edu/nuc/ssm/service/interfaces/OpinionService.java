package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Opinion;

public interface OpinionService {

	int deleteByPrimaryKey(String department);

    int insert(Opinion record);

    int insertSelective(Opinion record);

    Opinion selectByPrimaryKey(String department);

    int updateByPrimaryKeySelective(Opinion record);

    int updateByPrimaryKey(Opinion record);

	List<Opinion> selectAllOpinion();

	List<Opinion> selectAllOpinionByDep(String department);

	List<Opinion> selectByTypeOpinion(String department);

	Opinion selectByDempAndType(String department, String healthtype);
}
