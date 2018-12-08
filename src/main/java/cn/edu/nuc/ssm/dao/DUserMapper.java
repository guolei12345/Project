package cn.edu.nuc.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.ssm.entity.DUser;

public interface DUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(DUser record);

    int insertSelective(DUser record);

    DUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DUser record);

    int updateByPrimaryKey(DUser record);
    
    DUser login(@Param("name") String name,@Param("pass") String pass);

	List<DUser> selectAllUser();

	List<DUser> selectUserByPar(@Param("name") String par);

	DUser selectUserByID(String id);
}