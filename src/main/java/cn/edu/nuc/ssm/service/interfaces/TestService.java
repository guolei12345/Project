package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Test;

public interface TestService {

	int deleteByPrimaryKey(String id);

    int insert(Test record);

    int insertSelective(Test record);

    Test selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Test record);

    int updateByPrimaryKey(Test record);

	List<Test> selectAllTest();

	Test selectByUserID(String userid);
}
