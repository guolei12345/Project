package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.FaceMapper;
import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.entity.Face;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.FaceService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Service
public class FaceServiceImpl implements FaceService {
	@Autowired
	private FaceMapper faceMapper;
	@Autowired
	private OpinionMapper opinionMapper;
	ControlUtil controlUtil = new ControlUtil();
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return faceMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Face record) {
		// TODO Auto-generated method stub
		return faceMapper.insert(record);
	}

	@Override
	public int insertSelective(Face record) {
		// TODO Auto-generated method stub
		return faceMapper.insertSelective(record);
	}

	@Override
	public Face selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return faceMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Face record) {
		// TODO Auto-generated method stub
		Opinion opinion = opinionMapper.selectByDempAndType("五官科", "五官科类型");
		String str = controlUtil.getCompeny(record);
		opinion.setComp(str);
		opinionMapper.updateByPrimaryKeySelective(opinion);
		return faceMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Face record) {
		// TODO Auto-generated method stub
		return faceMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Face> selectAllFace() {
		// TODO Auto-generated method stub
		return faceMapper.selectAllFace();
	}

	@Override
	public Face selectByUserID(String userid) {
		// TODO Auto-generated method stub
		return faceMapper.selectByUserID(userid);
	}
}
