package cn.edu.nuc.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/opinion")
public class OpinionController {
	@Autowired
	private OpinionService opinionService;
	@Autowired
	private HealthyService healthyService;
	ControlUtil controlUtil = new ControlUtil();
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String regist2(Model model){
		return "opinion/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Opinion opinion, Model model){
		System.out.println(opinion);
		Opinion opin = opinionService.selectByDempAndType(opinion.getDepartment(),opinion.getHealthtype());
		int rtn = 0;
		int type = 0;
		if(opin!=null){
			opin.setComp(opinion.getComp());
			rtn = opinionService.updateByPrimaryKeySelective(opin);
			type = 4;
		}else{
			opinion.setOid(controlUtil.getUUID());
			rtn = opinionService.insertSelective(opinion);
			type = 1;
		}
		List<Opinion> listOpinion = opinionService.selectAllOpinion();
		model.addAttribute("listOpinion", listOpinion);
		String msg= ControlUtil.getMsg(rtn,type);
		model.addAttribute("msg",msg);
		return "opinion/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String oid,Model model){
		Opinion opinion = opinionService.selectByPrimaryKey(oid);
		model.addAttribute("opinion", opinion);
		return "opinion/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Opinion opinion,Model model){
		System.out.println(opinion);
		int rtn = opinionService.updateByPrimaryKeySelective(opinion);
		List<Opinion> listOpinion = opinionService.selectAllOpinion();
		model.addAttribute("listOpinion", listOpinion);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "opinion/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Opinion> rtn = opinionService.selectAllOpinion();
		model.addAttribute("listOpinion", rtn);
		return "opinion/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Opinion> rtn = new ArrayList<Opinion>();
		if(department.equals("全部")){
			rtn = opinionService.selectAllOpinion();
		}else{
			rtn = opinionService.selectAllOpinionByDep(department);
		}
		model.addAttribute("listOpinion", rtn);
		return "opinion/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String oid,Model model){
		int rtn = opinionService.deleteByPrimaryKey(oid);
		List<Opinion> listOpinion = opinionService.selectAllOpinion();
		model.addAttribute("listOpinion",listOpinion);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/opinion/select";
	}
	
	@ResponseBody
	@RequestMapping(value="/healthtype",method=RequestMethod.POST)
	public List<Healthy> delete(String dep){
		//int rtn = opinionService.deleteByPrimaryKey(oid);
		List<Healthy> rtn =  healthyService.getHealthType(dep);
		return rtn;
	}
	@ResponseBody
	@RequestMapping(value="/healthyname",method=RequestMethod.POST)
	public Healthy search(String dep,String type){
		//int rtn = opinionService.deleteByPrimaryKey(oid);
		Healthy rtn =  healthyService.getHealthName(dep,type);
		return rtn;
	}
	
}
