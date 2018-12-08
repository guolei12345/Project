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
import cn.edu.nuc.ssm.entity.Face;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.service.interfaces.FaceService;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/face")
public class FaceController {
	@Autowired
	private FaceService faceService;
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
		List<Healthy> listHealthy = healthyService.selectAllHealthyByDemp("五官科");
		model.addAttribute("wlistHealthy", listHealthy);
		return "face/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Face face, Model model,HttpSession session){
		System.out.println(face);
		Face f = faceService.selectByUserID(face.getUserid());
		int r = 0;
		int t = 0;
		DUser user = (DUser) session.getAttribute("user");
		Opinion opinion = controlUtil.GetOpinion("五官科",user.getId());
		if(f!=null && !f.getId().equals("")){
			face.setId(f.getId());
			t = faceService.updateByPrimaryKeySelective(face);
			r= 4;
		}else{
			face.setId(controlUtil.getUUID());
			t = faceService.insertSelective(face);
			String str = controlUtil.getCompeny(face);
			opinion.setComp(str);
			opinionService.insertSelective(opinion);
			r = 1;
		}
		List<Face> listFace = faceService.selectAllFace();
		System.out.println(listFace);
		model.addAttribute("listFace", listFace);
		String msg= ControlUtil.getMsg(t,r);
		model.addAttribute("msg",msg);
		return "face/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		System.out.println(id);
		Face face = faceService.selectByPrimaryKey(id);
		model.addAttribute("face", face);
		return "face/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Face face,Model model){
		System.out.println(face);
		int rtn = faceService.updateByPrimaryKeySelective(face);
		List<Face> listFace = faceService.selectAllFace();
		model.addAttribute("listFace", listFace);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "face/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Face> listFace = faceService.selectAllFace();
		model.addAttribute("listFace", listFace);
		return "face/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Face> listFace = faceService.selectAllFace();
		model.addAttribute("listFace", listFace);
		return "face/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		System.out.println(id);
		int rtn = faceService.deleteByPrimaryKey(id);
		List<Face> listFace = faceService.selectAllFace();
		model.addAttribute("listFace",listFace);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/face/select";
	}
}
