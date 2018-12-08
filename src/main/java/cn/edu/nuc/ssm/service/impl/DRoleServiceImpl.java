package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.DRoleMapper;
import cn.edu.nuc.ssm.entity.DRole;
import cn.edu.nuc.ssm.service.interfaces.DRoleService;

@Service
public class DRoleServiceImpl implements DRoleService {
	@Autowired
	private DRoleMapper dRoleMapper; 
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return dRoleMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(DRole record) {
		// TODO Auto-generated method stub
		return dRoleMapper.insert(record);
	}
	@Override
	public int insertSelective(DRole record) {
		// TODO Auto-generated method stub
		return dRoleMapper.insertSelective(record);
	}
	@Override
	public DRole selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return dRoleMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(DRole record) {
		// TODO Auto-generated method stub
		return dRoleMapper.updateByPrimaryKey(record);
	}
	@Override
	public int updateByPrimaryKey(DRole record) {
		// TODO Auto-generated method stub
		return dRoleMapper.updateByPrimaryKey(record);
	}
	@Override
	public List<DRole> getAllRole() {
		// TODO Auto-generated method stub
		return dRoleMapper.getAllRole();
	}
	
}
