package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.DUser;

public interface DUserService {

	int deleteByPrimaryKey(String id);

    int insert(DUser record);

    int insertSelective(DUser record);

    DUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DUser record);

    int updateByPrimaryKey(DUser record);
	
	DUser login(String name,String pass);

	List<DUser> selectAllUser();

	List<DUser> selectUserByPar(String par);

	DUser selectUserByID(String id);
}
