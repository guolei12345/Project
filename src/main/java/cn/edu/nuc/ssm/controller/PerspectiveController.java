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
import cn.edu.nuc.ssm.entity.Perspective;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.service.interfaces.PerspectiveService;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/perspective")
public class PerspectiveController {
	@Autowired
	private PerspectiveService perspectiveService;
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
		List<Healthy> listHealthy = healthyService.selectAllHealthyByDemp("透视科");
		model.addAttribute("listHealthy", listHealthy);
		return "perspective/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Perspective perspective, Model model,HttpSession session){
		System.out.println(perspective);
		DUser user = (DUser) session.getAttribute("user");
		Opinion opinion = controlUtil.GetOpinion("透视科",user.getId());
		Perspective f = perspectiveService.selectByUserID(perspective.getUserid());
		int r = 0;
		int t = 0;
		if(f!=null && !f.getId().equals("")){
			perspective.setId(f.getId());
			t = perspectiveService.updateByPrimaryKeySelective(perspective);
			r= 4;
		}else{
			perspective.setId(controlUtil.getUUID());
			t = perspectiveService.insertSelective(perspective);
			String str = controlUtil.getCompeny(perspective);
			opinion.setComp(str);
			opinionService.insertSelective(opinion);
			r = 1;
		}
		List<Perspective> listPerspective = perspectiveService.selectAllPerspective();
		System.out.println(listPerspective);
		model.addAttribute("listPerspective", listPerspective);
		String msg= ControlUtil.getMsg(t,r);
		model.addAttribute("msg",msg);
		return "perspective/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		System.out.println(id);
		Perspective perspective = perspectiveService.selectByPrimaryKey(id);
		model.addAttribute("perspective", perspective);
		return "perspective/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Perspective perspective,Model model){
		System.out.println(perspective);
		int rtn = perspectiveService.updateByPrimaryKeySelective(perspective);
		List<Perspective> listPerspective = perspectiveService.selectAllPerspective();
		model.addAttribute("listPerspective", listPerspective);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "perspective/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Perspective> listPerspective = perspectiveService.selectAllPerspective();
		model.addAttribute("listPerspective", listPerspective);
		return "perspective/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Perspective> listPerspective = perspectiveService.selectAllPerspective();
		model.addAttribute("listPerspective", listPerspective);
		return "perspective/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		System.out.println(id);
		int rtn = perspectiveService.deleteByPrimaryKey(id);
		List<Perspective> listPerspective = perspectiveService.selectAllPerspective();
		model.addAttribute("listPerspective",listPerspective);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/perspective/select";
	}
}
