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
import cn.edu.nuc.ssm.entity.Medicine;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.service.interfaces.HealthyService;
import cn.edu.nuc.ssm.service.interfaces.MedicineService;
import cn.edu.nuc.ssm.service.interfaces.OpinionService;
import cn.edu.nuc.ssm.entity.Healthy;
import cn.edu.nuc.ssm.util.ControlUtil;

@Controller
@RequestMapping(value="/medicine")
public class MedicineController {
	@Autowired
	private MedicineService medicineService;
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
		List<Healthy> listHealthy = healthyService.selectAllHealthyByDemp("内科");
		model.addAttribute("listHealthy", listHealthy);
		return "medicine/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String regist(@RequestBody Medicine medicine, Model model,HttpSession session){
		System.out.println(medicine);
		DUser user = (DUser) session.getAttribute("user");
		Opinion opinion = controlUtil.GetOpinion("内科",user.getId());
		Medicine m = medicineService.selectByUserID(medicine.getUserid());
		int r = 0;
		int t = 0;
		if(m!=null && !m.getId().equals("")){
			medicine.setId(m.getId());
			t = medicineService.updateByPrimaryKeySelective(medicine);
			r= 4;
		}else{
			
			medicine.setId(controlUtil.getUUID());
			t = medicineService.insertSelective(medicine);
			String str = controlUtil.getCompeny(medicine);
			opinion.setComp(str);
			opinionService.insertSelective(opinion);
			r = 1;
		}
		List<Medicine> listMedicine = medicineService.selectAllMedicine();
		System.out.println(listMedicine);
		model.addAttribute("listMedicine", listMedicine);
		String msg= ControlUtil.getMsg(t,r);
		model.addAttribute("msg",msg);
		return "medicine/select";
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(String id,Model model){
		System.out.println(id);
		Medicine medicine = medicineService.selectByPrimaryKey(id);
		model.addAttribute("medicine", medicine);
		return "medicine/edit";
	}
	@RequestMapping(value="/edit1",method=RequestMethod.POST)
	public String edit(@RequestBody Medicine medicine,Model model){
		System.out.println(medicine);
		int rtn = medicineService.updateByPrimaryKeySelective(medicine);
		List<Medicine> listMedicine = medicineService.selectAllMedicine();
		model.addAttribute("listMedicine", listMedicine);
		String msg= ControlUtil.getMsg(rtn,4);
		model.addAttribute("msg",msg);
		return "medicine/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model){
		List<Medicine> listMedicine = medicineService.selectAllMedicine();
		model.addAttribute("listMedicine", listMedicine);
		return "medicine/select";
	}
	
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select3(Model model,String department){
		List<Medicine> listMedicine = medicineService.selectAllMedicine();
		model.addAttribute("listMedicine", listMedicine);
		return "medicine/select";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String id,Model model){
		System.out.println(id);
		int rtn = medicineService.deleteByPrimaryKey(id);
		List<Medicine> listMedicine = medicineService.selectAllMedicine();
		model.addAttribute("listMedicine",listMedicine);
		String msg= ControlUtil.getMsg(rtn,2);
		model.addAttribute("msg",msg);
		return "/medicine/select";
	}
}
