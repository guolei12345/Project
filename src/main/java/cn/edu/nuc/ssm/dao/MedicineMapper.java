package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Medicine;

public interface MedicineMapper {
    int deleteByPrimaryKey(String id);

    int insert(Medicine record);

    int insertSelective(Medicine record);

    Medicine selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Medicine record);

    int updateByPrimaryKey(Medicine record);

	List<Medicine> selectAllMedicine();

	Medicine selectByUserID(String userid);
}