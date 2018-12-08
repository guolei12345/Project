package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.HealthyMapper;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;

@Service
public class HealthyServiceImpl implements HealthyService {
	@Autowired
	private HealthyMapper healthyMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return healthyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Healthy record) {
		// TODO Auto-generated method stub
		return healthyMapper.insert(record);
	}

	@Override
	public int insertSelective(Healthy record) {
		// TODO Auto-generated method stub
		return healthyMapper.insertSelective(record);
	}

	@Override
	public Healthy selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return healthyMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Healthy record) {
		// TODO Auto-generated method stub
		return healthyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Healthy record) {
		// TODO Auto-generated method stub
		return healthyMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Healthy> selectAllHealthy() {
		// TODO Auto-generated method stub
		return healthyMapper.selectAllHealthy();
	}

	@Override
	public List<Healthy> selectAllHealthyByDemp(String demp) {
		// TODO Auto-generated method stub
		return healthyMapper.selectAllHealthyByDemp(demp);
	}

	@Override
	public List<Healthy> getHealthType(String dep) {
		// TODO Auto-generated method stub
		return healthyMapper.getHealthType(dep);
	}

	@Override
	public Healthy getHealthName(String dep, String type) {
		// TODO Auto-generated method stub
		return healthyMapper.getHealthName(dep,type);
	}

	
}
