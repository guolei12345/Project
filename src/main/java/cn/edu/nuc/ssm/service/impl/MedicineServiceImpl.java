package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.MedicineMapper;
import cn.edu.nuc.ssm.dao.OpinionMapper;
import cn.edu.nuc.ssm.entity.Medicine;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.MedicineService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Service
public class MedicineServiceImpl implements MedicineService {
	@Autowired
	private MedicineMapper medicineMapper;
	@Autowired
	private OpinionMapper opinionMapper;
	ControlUtil controlUtil = new ControlUtil();
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return medicineMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Medicine record) {
		// TODO Auto-generated method stub
		return medicineMapper.insert(record);
	}

	@Override
	public int insertSelective(Medicine record) {
		// TODO Auto-generated method stub
		return medicineMapper.insertSelective(record);
	}

	@Override
	public Medicine selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return medicineMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Medicine record) {
		// TODO Auto-generated method stub
		Opinion opinion = opinionMapper.selectByDempAndType("内科", "内科类型");
		String str = controlUtil.getCompeny(record);
		opinion.setComp(str);
		opinionMapper.updateByPrimaryKeySelective(opinion);
		return medicineMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Medicine record) {
		// TODO Auto-generated method stub
		return medicineMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Medicine> selectAllMedicine() {
		// TODO Auto-generated method stub
		return medicineMapper.selectAllMedicine();
	}

	@Override
	public Medicine selectByUserID(String userid) {
		// TODO Auto-generated method stub
		return medicineMapper.selectByUserID(userid);
	}
}
