package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.DUserMapper;
import cn.edu.nuc.ssm.entity.DUser;
import cn.edu.nuc.ssm.service.interfaces.DUserService;

@Service
public class DUserServiceImpl implements DUserService {
	@Autowired
	private DUserMapper dUserMapper; 
	@Override
	public DUser login(String name, String pass) {
		
		return dUserMapper.login(name, pass);
	}
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return dUserMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(DUser record) {
		// TODO Auto-generated method stub
		return dUserMapper.insert(record);
	}
	@Override
	public int insertSelective(DUser record) {
		// TODO Auto-generated method stub
		return dUserMapper.insertSelective(record);
	}
	@Override
	public DUser selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return dUserMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(DUser record) {
		// TODO Auto-generated method stub
		return dUserMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateByPrimaryKey(DUser record) {
		// TODO Auto-generated method stub
		return dUserMapper.updateByPrimaryKey(record);
	}
	@Override
	public List<DUser> selectAllUser() {
		// TODO Auto-generated method stub
		return dUserMapper.selectAllUser();
	}
	@Override
	public List<DUser> selectUserByPar(String par) {
		// TODO Auto-generated method stub
		return dUserMapper.selectUserByPar(par);
	}
	@Override
	public DUser selectUserByID(String id) {
		// TODO Auto-generated method stub
		return dUserMapper.selectUserByID(id);
	}
	
}
