package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;

@Service
public class OpinionServiceImpl implements OpinionService {
	@Autowired
	private OpinionMapper opinionMapper;

	@Override
	public int deleteByPrimaryKey(String department) {
		// TODO Auto-generated method stub
		return opinionMapper.deleteByPrimaryKey(department);
	}

	@Override
	public int insert(Opinion record) {
		// TODO Auto-generated method stub
		return opinionMapper.insert(record);
	}

	@Override
	public int insertSelective(Opinion record) {
		// TODO Auto-generated method stub
		return opinionMapper.insertSelective(record);
	}

	@Override
	public Opinion selectByPrimaryKey(String department) {
		// TODO Auto-generated method stub
		return opinionMapper.selectByPrimaryKey(department);
	}

	@Override
	public int updateByPrimaryKeySelective(Opinion record) {
		// TODO Auto-generated method stub
		return opinionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Opinion record) {
		// TODO Auto-generated method stub
		return opinionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Opinion> selectAllOpinion() {
		// TODO Auto-generated method stub
		return opinionMapper.selectAllOpinion();
	}

	@Override
	public List<Opinion> selectAllOpinionByDep(String department) {
		// TODO Auto-generated method stub
		return opinionMapper.selectAllOpinionByDep(department);
	}

	@Override
	public List<Opinion> selectByTypeOpinion(String department) {
		// TODO Auto-generated method stub
		return opinionMapper.selectByTypeOpinion(department);
	}

	@Override
	public Opinion selectByDempAndType(String department, String healthtype) {
		// TODO Auto-generated method stub
		return opinionMapper.selectByDempAndType(department,healthtype);
	}
}
