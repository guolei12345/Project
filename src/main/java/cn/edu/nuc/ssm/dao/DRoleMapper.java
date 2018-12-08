package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.DRole;

public interface DRoleMapper {
    int deleteByPrimaryKey(String roleid);

    int insert(DRole record);

    int insertSelective(DRole record);

    DRole selectByPrimaryKey(String roleid);

    int updateByPrimaryKeySelective(DRole record);

    int updateByPrimaryKey(DRole record);
    
    List<DRole> getAllRole();
}