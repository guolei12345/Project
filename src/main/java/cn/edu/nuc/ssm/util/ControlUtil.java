package cn.edu.nuc.ssm.util;

import java.util.UUID;

import cn.edu.nuc.ssm.entity.DUser;
import cn.edu.nuc.ssm.entity.Face;
import cn.edu.nuc.ssm.entity.Medicine;
import cn.edu.nuc.ssm.entity.Opinion;
import cn.edu.nuc.ssm.entity.Out;
import cn.edu.nuc.ssm.entity.Perspective;
import cn.edu.nuc.ssm.entity.Test;

public class ControlUtil {

	public String getUUID(){
        UUID uuid=UUID.randomUUID();
        String str = uuid.toString(); 
        String uuidStr=str.replace("-", "");
        return uuidStr;
      }
	/**
	 * 根据type 得到对应的提示
	 * 1  	增加
	 * 2 	删除
	 * 3	查询
	 * 4	修改
	 * @param rtn
	 * @param type
	 * @return
	 */
	public static String getMsg(int rtn,int type){
		
		String msg = getType(type);
		if(rtn>0){
			msg += "成功";
		}else{
			msg += "失败";
		}
		return msg;
	}
	/**
	 * 根据type 得到对应的提示
	 * 1  	增加
	 * 2 	删除
	 * 3	查询
	 * 4	修改
	 * @param type
	 * @return
	 */
	public static String getType(int type){
		String tp = "操作";
		switch(type){
		case 1:
			tp = "增加";
			break;
		case 2:
			tp = "删除";
			break;
		case 3:
			tp = "查询";
			break;
		case 4:
			tp = "修改";
			break;
		default:
			tp = "操作";
			break;
		}
		return tp;
	}
	public static DUser setCompeny(DUser rtn) {
		DUser user = rtn;
		return user;
	}
	/**
	 * 眼睛  近视 远视 正常
	 * @param face
	 * @return
	 */
	public String getCompeny(Face face) {
		StringBuilder str = new StringBuilder();
		/*
		if(face.getLefteye().equals("近视")||face.getLefteye().equals("远视")){
			str.append("左眼"+face.getLefteye()+"多注意休息，保护眼睛");
		}
		if(face.getRighteye().equals("近视")||face.getLefteye().equals("远视")){
			str.append("右眼"+face.getLefteye()+"多注意休息，保护眼睛");
		}
		if(face.getColorblindness().equals("非正常")){
			str.append("辨色力"+face.getColorblindness()+"多注意饮食，生活习惯");
		}
		if(face.getEarsdisease().equals("有")){
			str.append("耳疾"+"注意保护耳朵");
		}
		if(face.getSmell().equals("非正常")){
			str.append("嗅觉不正常，请不要闻刺激性气体！");
		}*/
		return str.toString();
	}
	public Opinion GetOpinion(String type,String id) {
		// TODO Auto-generated method stub
		Opinion opinion = new Opinion();
		opinion.setDepartment(type);
		opinion.setDiseasename(type+"病名");
		opinion.setHealthtype(type+"类型");
		opinion.setUserid(id);
		opinion.setOid(getUUID());
		return opinion;
	}
	public String getCompeny(Medicine record) {
		// TODO Auto-generated method stub
		StringBuilder str = new StringBuilder();
		/*try{
			Integer blood = Integer.valueOf(record.getBloodpressure());
			if(blood > 120){
				str.append("血压偏高，适量吃点降压药！");
			}else if(blood < 80){
				str.append("血压偏低，注意饮食健康！");
			}
		}catch(Exception e){
			return str.toString();
		}*/
		return str.toString();
	}
	public String getCompeny(Out record) {
		// TODO Auto-generated method stub
		StringBuilder str = new StringBuilder();
		/*if(record.getThyroid().equals("非正常"))
		{
			str.append("甲状腺"+record.getThyroid()+"注意调养身体");
		}
		if(record.getSkin().equals("非正常"))
		{
			str.append("皮肤"+record.getSkin()+"注意调养身体");
		}*/
		return str.toString();
	}
	public String getCompeny(Perspective record) {
		// TODO Auto-generated method stub
		StringBuilder str = new StringBuilder();
		/*if(record.getChest().equals("非正常"))
		{
			str.append("胸部透视"+record.getChest()+"注意调养身体");
		}
		if(record.getBmode().equals("非正常"))
		{
			str.append("B超透视"+record.getBmode()+"注意调养身体");
		}*/
		return str.toString();
	}
	public String getCompeny(Test record) {
		// TODO Auto-generated method stub
		StringBuilder str = new StringBuilder();
		/*if(record.getBlood().equals("高")||record.getBlood().equals("低"))
		{
			str.append("血液浓度"+record.getBlood()+"注意调养身体");
		}
		if(record.getUrine().equals("高")||record.getUrine().equals("低"))
		{
			str.append("尿液浓度"+record.getUrine()+"注意调养身体");
		}
		if(record.getLiver().equals("非正常"))
		{
			str.append("肝检测"+record.getLiver()+"注意调养身体");
		}*/
		return str.toString();
	}
	
}
