package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.dao.OutMapper;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.entity.Out;
import cn.edu.nuc.ssm.service.interfaces.OutService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Service
public class OutServiceImpl implements OutService {
	@Autowired
	private OutMapper outMapper;
	@Autowired
	private OpinionMapper opinionMapper;
	ControlUtil controlUtil = new ControlUtil();
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return outMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Out record) {
		// TODO Auto-generated method stub
		return outMapper.insert(record);
	}

	@Override
	public int insertSelective(Out record) {
		// TODO Auto-generated method stub
		return outMapper.insertSelective(record);
	}

	@Override
	public Out selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return outMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Out record) {
		// TODO Auto-generated method stub
		Opinion opinion = opinionMapper.selectByDempAndType("外科", "外科类型");
		String str = controlUtil.getCompeny(record);
		opinion.setComp(str);
		opinionMapper.updateByPrimaryKeySelective(opinion);
		return outMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Out record) {
		// TODO Auto-generated method stub
		return outMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Out> selectAllOut() {
		// TODO Auto-generated method stub
		return outMapper.selectAllOut();
	}

	@Override
	public Out selectByUserID(String userid) {
		// TODO Auto-generated method stub
		return outMapper.selectByUserID(userid);
	}
}
