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
import cn.edu.nuc.ssm.entity.Out;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.service.interfaces.OutService;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/out")
public class OutController {
	@Autowired
	private OutService outService;
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
		List<Healthy> listHealthy = healthyService.selectAllHealthyByDemp("外科");
		model.addAttribute("listHealthy", listHealthy);
		return "out/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Out out, Model model,HttpSession session){
		System.out.println(out);
		DUser user = (DUser) session.getAttribute("user");
		Opinion opinion = controlUtil.GetOpinion("外科",user.getId());
		Out f = outService.selectByUserID(out.getUserid());
		int r = 0;
		int t = 0;
		if(f!=null && !f.getId().equals("")){
			out.setId(f.getId());
			t = outService.updateByPrimaryKeySelective(out);
			r= 4;
		}else{
			
			out.setId(controlUtil.getUUID());
			t = outService.insertSelective(out);
			String str = controlUtil.getCompeny(out);
			opinion.setComp(str);
			opinionService.insertSelective(opinion);
			r = 1;
		}
		List<Out> listOut = outService.selectAllOut();
		System.out.println(listOut);
		model.addAttribute("listOut", listOut);
		String msg= ControlUtil.getMsg(t,r);
		model.addAttribute("msg",msg);
		return "out/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		System.out.println(id);
		Out out = outService.selectByPrimaryKey(id);
		model.addAttribute("out", out);
		return "out/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Out out,Model model){
		System.out.println(out);
		int rtn = outService.updateByPrimaryKeySelective(out);
		List<Out> listOut = outService.selectAllOut();
		model.addAttribute("listOut", listOut);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "out/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Out> listOut = outService.selectAllOut();
		model.addAttribute("listOut", listOut);
		return "out/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Out> listOut = outService.selectAllOut();
		model.addAttribute("listOut", listOut);
		return "out/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		System.out.println(id);
		int rtn = outService.deleteByPrimaryKey(id);
		List<Out> listOut = outService.selectAllOut();
		model.addAttribute("listOut",listOut);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/out/select";
	}
}
