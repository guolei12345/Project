package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Healthy;

public interface HealthyMapper {
    int deleteByPrimaryKey(String id);

    int insert(Healthy record);

    int insertSelective(Healthy record);

    Healthy selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Healthy record);

    int updateByPrimaryKey(Healthy record);

	List<Healthy> selectAllHealthy();

	List<Healthy> selectAllHealthyByDemp(String demp);

	List<Healthy> getHealthType(String dep);

	Healthy getHealthName(String dep, String type);
}