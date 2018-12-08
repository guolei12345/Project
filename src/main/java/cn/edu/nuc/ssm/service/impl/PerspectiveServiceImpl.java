package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.dao.PerspectiveMapper;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.entity.Perspective;
import cn.edu.nuc.ssm.service.interfaces.PerspectiveService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Service
public class PerspectiveServiceImpl implements PerspectiveService {
	@Autowired
	private PerspectiveMapper perspectiveMapper;
	@Autowired
	private OpinionMapper opinionMapper;
	ControlUtil controlUtil = new ControlUtil();
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return perspectiveMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Perspective record) {
		// TODO Auto-generated method stub
		return perspectiveMapper.insert(record);
	}

	@Override
	public int insertSelective(Perspective record) {
		// TODO Auto-generated method stub
		return perspectiveMapper.insertSelective(record);
	}

	@Override
	public Perspective selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return perspectiveMapper.selectByPrimaryKey(id);
	}
	//
	@Override
	public int updateByPrimaryKeySelective(Perspective record) {
		// TODO Auto-generated method stub
		Opinion opinion = opinionMapper.selectByDempAndType("透视科", "透视类型");
		String str = controlUtil.getCompeny(record);
		opinion.setComp(str);
		opinionMapper.updateByPrimaryKeySelective(opinion);
		return perspectiveMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Perspective record) {
		// TODO Auto-generated method stub
		return perspectiveMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Perspective> selectAllPerspective() {
		// TODO Auto-generated method stub
		return perspectiveMapper.selectAllPerspective();
	}

	@Override
	public Perspective selectByUserID(String userid) {
		// TODO Auto-generated method stub
		return perspectiveMapper.selectByUserID(userid);
	}
}
