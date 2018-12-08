package cn.edu.nuc.ssm.controller;

import cn.edu.nuc.ssm.entity.DRole;
import cn.edu.nuc.ssm.entity.DUser;
import cn.edu.nuc.ssm.service.interfaces.DRoleService;
import cn.edu.nuc.ssm.service.interfaces.DUserService;
import cn.edu.nuc.ssm.util.ControlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value="/user")
public class DUserController {
	@Autowired
	private DUserService dUserService;
	@Autowired
	private DRoleService dRoleService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login2(){
		
		return "/user/login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String Login(DUser duser, HttpSession session){
		try {
			DUser user = dUserService.login(duser.getName(),duser.getPass());
			session.setAttribute("user", user);
			if(user!=null&&!"".equals(user.getName())){
				if(user.getRoleid().equals("2")){
					return "userIndex";
				}else{
					return "index";
				}
			}
			else{
				return "redirect:/user/login";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/user/login";
	}
	
	@RequestMapping(value="/regist",method=RequestMethod.GET)
	public String regist2(Model model){
		List<DRole> listRole = dRoleService.getAllRole();
		model.addAttribute("listRole", listRole);
		return "user/regist";
	}
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String regist(DUser duser, HttpSession session){
		System.out.println(duser);
		int rtn = dUserService.insertSelective(duser);
		System.out.println(rtn);
		if(rtn == 1){
			return "redirect:/user/login";
		}else{
			return "user/regist";
		}
	}
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit2(Model model,HttpSession session){
		return "user/edit";
	}
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(@RequestBody DUser duser,Model model){
		System.out.println(duser);
		int rtn = dUserService.updateByPrimaryKeySelective(duser);
		String msg = ControlUtil.getMsg(rtn, 4);
		List<DUser> listUser = dUserService.selectAllUser();
		model.addAttribute("listUser", listUser);
		model.addAttribute("msg", msg);
		return "user/select";
	}
	@RequestMapping(value="/select1",method=RequestMethod.GET)
	public String select2(Model model,HttpSession session){
		List<DUser> rtn = dUserService.selectAllUser();
		System.out.println(rtn);
		model.addAttribute("listUser", rtn);
		return "user/select";
	}
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select(DUser duser){
		System.out.println(duser);
		List<DUser> rtn = dUserService.selectAllUser();
		if(rtn != null){
			return "index";
		}else{
			return "user/edit";
		}
	}
	/**
	 * 根据输入模糊查询用户信息
	 * @param par
	 * @return
	 */
	@RequestMapping(value="/select3",method=RequestMethod.POST)
	public String select4(String name,Model model){
		System.out.println(name);
		List<DUser> rtn = dUserService.selectUserByPar("%"+name+"%");
		System.out.println(rtn);
		model.addAttribute("listUser", rtn);
		return "user/select";
	}
	/**
	 * 查看体检报告
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/table",method=RequestMethod.GET)
	public String table(Model model,HttpSession session){
		DUser user = (DUser) session.getAttribute("user");
		DUser rtn = dUserService.selectUserByID(user.getId());
		
		DUser u = ControlUtil.setCompeny(rtn);
		model.addAttribute("userDb", u);
		return "user/table";
	}
}
