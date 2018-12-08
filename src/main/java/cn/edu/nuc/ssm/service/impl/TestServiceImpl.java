package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.dao.TestMapper;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.entity.Test;
import cn.edu.nuc.ssm.service.interfaces.TestService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Service
public class TestServiceImpl implements TestService {
	@Autowired
	private TestMapper testMapper;
	@Autowired
	private OpinionMapper opinionMapper;
	ControlUtil controlUtil = new ControlUtil();
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return testMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Test record) {
		// TODO Auto-generated method stub
		return testMapper.insert(record);
	}

	@Override
	public int insertSelective(Test record) {
		// TODO Auto-generated method stub
		return testMapper.insertSelective(record);
	}

	@Override
	public Test selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return testMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Test record) {
		// TODO Auto-generated method stub
		Opinion opinion = opinionMapper.selectByDempAndType("化验科", "化验类型");
		String str = controlUtil.getCompeny(record);
		opinion.setComp(str);
		opinionMapper.updateByPrimaryKeySelective(opinion);
		return testMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Test record) {
		// TODO Auto-generated method stub
		return testMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Test> selectAllTest() {
		// TODO Auto-generated method stub
		return testMapper.selectAllTest();
	}

	@Override
	public Test selectByUserID(String userid) {
		// TODO Auto-generated method stub
		return testMapper.selectByUserID(userid);
	}
}
