package cn.edu.nuc.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.nuc.ssm.entity.DUser;
import cn.edu.nuc.ssm.entity.Test;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.service.interfaces.TestService;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/test")
public class TestController {
	@Autowired
	private TestService testService;
	@Autowired
	private DUserService userService;
	@Autowired
	private HealthyService healthyService;
	@Autowired
	private OpinionService opinionService;
	ControlUtil controlUtil = new ControlUtil();
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String regist2(Model model){
		List<DUser> listUser = userService.selectAllUser();
		model.addAttribute("listUser", listUser);
		List<Healthy> listHealthy = healthyService.selectAllHealthyByDemp("化验科");
		model.addAttribute("listHealthy", listHealthy);
		return "test/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Test test, Model model,HttpSession session){
		System.out.println(test);
		DUser user = (DUser) session.getAttribute("user");
		Opinion opinion = controlUtil.GetOpinion("化验科",user.getId());
		Test f = testService.selectByUserID(test.getUserid());
		int r = 0;
		int t = 0;
		if(f!=null && !f.getId().equals("")){
			test.setId(f.getId());
			t = testService.updateByPrimaryKeySelective(test);
			r= 4;
		}else{
			
			test.setId(controlUtil.getUUID());
			t = testService.insertSelective(test);
			String str = controlUtil.getCompeny(test);
			opinion.setComp(str);
			opinionService.insertSelective(opinion);
			r = 1;
		}
		List<Test> listTest = testService.selectAllTest();
		System.out.println(listTest);
		model.addAttribute("listTest", listTest);
		String msg= ControlUtil.getMsg(t,r);
		model.addAttribute("msg",msg);
		return "test/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		System.out.println(id);
		Test test = testService.selectByPrimaryKey(id);
		model.addAttribute("test", test);
		return "test/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Test test,Model model){
		System.out.println(test);
		int rtn = testService.updateByPrimaryKeySelective(test);
		List<Test> listTest = testService.selectAllTest();
		model.addAttribute("listTest", listTest);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "test/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Test> listTest = testService.selectAllTest();
		model.addAttribute("listTest", listTest);
		return "test/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Test> listTest = testService.selectAllTest();
		model.addAttribute("listTest", listTest);
		return "test/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		System.out.println(id);
		int rtn = testService.deleteByPrimaryKey(id);
		List<Test> listTest = testService.selectAllTest();
		model.addAttribute("listTest",listTest);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/test/select";
	}
}
