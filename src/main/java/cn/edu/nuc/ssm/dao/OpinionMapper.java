package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Opinion;

public interface OpinionMapper {
    int deleteByPrimaryKey(String oid);

    int insert(Opinion record);

    int insertSelective(Opinion record);

    Opinion selectByPrimaryKey(String oid);

    int updateByPrimaryKeySelective(Opinion record);

    int updateByPrimaryKey(Opinion record);

	List<Opinion> selectAllOpinion();

	List<Opinion> selectAllOpinionByDep(String department);

	List<Opinion> selectByTypeOpinion(String department);

	Opinion selectByDempAndType(String department, String healthtype);
}