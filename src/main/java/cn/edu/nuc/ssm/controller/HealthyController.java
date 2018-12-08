package cn.edu.nuc.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/healthy")
public class HealthyController {
	@Autowired
	private HealthyService healthyService;
	ControlUtil controlUtil = new ControlUtil();
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String regist2(Model model){
		return "healthy/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Healthy healthy, Model model){
		healthy.setId(controlUtil.getUUID());
		int rtn = healthyService.insertSelective(healthy);
		List<Healthy> listHealthy = healthyService.selectAllHealthy();
		model.addAttribute("listHelthy",listHealthy);
		String msg= ControlUtil.getMsg(rtn,1);
		model.addAttribute("msg",msg);
		return "healthy/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.GET)
	public String select2(Model model){
		List<Healthy> rtn = healthyService.selectAllHealthy();
		model.addAttribute("listHelthy",rtn);
		return "healthy/select";
	}
	
	@RequestMapping(value="/select1",method=RequestMethod.POST)
	public String select(String demp,Model model){
		System.out.println(demp);
		List<Healthy> rtn = new ArrayList<Healthy>();
		if(demp.equals("全部")){
			rtn = healthyService.selectAllHealthy();
		}else{
			rtn = healthyService.selectAllHealthyByDemp(demp);
		}		
		System.out.println(rtn);
		model.addAttribute("listHelthy",rtn);
		return "healthy/select";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		Healthy rtn = healthyService.selectByPrimaryKey(id);
		model.addAttribute("healthy",rtn);
		return "healthy/edit";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(@RequestBody Healthy healthy,Model model){
		int rtn = healthyService.updateByPrimaryKeySelective(healthy);
		List<Healthy> listHealthy = healthyService.selectAllHealthy();
		model.addAttribute("listHelthy",listHealthy);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "healthy/select";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		int rtn = healthyService.deleteByPrimaryKey(id);
		List<Healthy> listHealthy = healthyService.selectAllHealthy();
		model.addAttribute("listHelthy",listHealthy);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/healthy/select";
	}
}
