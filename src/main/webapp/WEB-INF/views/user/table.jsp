<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>体检信息表</title>
    <style>
        body{
            width:890px;
            margin:0 auto;
        }
        table{
            width:100%;
            border-collapse: collapse;
        }
        table td{
            border:1px solid #000;
        }
        td{
            text-align: center;
        }
        .inner td{
            border-right:1px solid #000;
            border-left:none;
            border-top:none;
            border-bottom: none;
        }
        .inner td:last-child{
            border-right:none;
        }
    </style>
</head>
<body>
<table cellspacing="0">
<tr>
<td width="50">姓名</td>
<td width="140">${userDb.name }</td>
<td width="50">性别</td>
<td width="140">${userDb.sex }</td>
<td width="50">年龄</td>
<td width="140">${userDb.age }</td>
<td width="50">婚否</td>
<td width="140">${userDb.marry }</td>
      <td rowspan="4" width="80" style="margin: 0;padding: 0;">
          照片
      </td>
  </tr>
<tr>
      <td colspan="2" width="50">文化程度</td>
<td colspan="2" width="140">${userDb.education }</td>
<td colspan="2" width="50">身份证号</td>
<td colspan="2" width="140">${userDb.id }</td>
  </tr>
<tr>
      <td colspan="2" width="50">籍贯</td>
<td colspan="2" width="140">${userDb.nativeplace }</td>
<td colspan="2" width="50">联系电话</td>
<td colspan="2" width="140"></td>
  </tr>
<tr>
      <td colspan="2" width="50">所在单位</td>
<td colspan="6" width="140">${userDb.company }</td>
  </tr>
<tr>
      <td colspan="2" width="50">现住址 </td>
<td colspan="7" width="140">${userDb.address }</td>
  </tr>
<tr>
      <td colspan="2" width="50">既往病史</td>
<td colspan="7" width="140">${userDb.medicalhistory }</td>
  </tr>
<tr>
      <td colspan="9">以上由体检者如实填写</td>
  </tr>
<tr>
      <td rowspan="9">五官科</td>
<td rowspan="3">眼</td>
<td rowspan="2">裸眼视力</td>
<td colspan="2">左  ${userDb.face.lefteye }</td>
<td rowspan="2">矫正视力</td>
<td colspan="2">左  ${userDb.face.legtcorrect }</td>
<td rowspan="9">医生意见  ${userDb.face.opinion.comp }</td>
  </tr>
<tr>
<td colspan="2">右  ${userDb.face.righteye }</td>
<td colspan="2">右  ${userDb.face.rightcorrect }</td>
  </tr>
<tr>
<td>辨色力</td>
<td colspan="2"> ${userDb.face.colorblindness }</td>
<td>其它疾病</td>
<td colspan="2"> ${userDb.face.other }</td>
  </tr>
<tr>
      <td rowspan="2">耳</td>
<td rowspan="2">听力</td>
<td colspan="2">左 ${userDb.face.leftears }</td>
<td rowspan="2">耳疾</td>
<td colspan="2" rowspan="2">${userDb.face.earsdisease }</td>
  </tr>
<tr>
<td colspan="2">右 ${userDb.face.rightears }</td>
  </tr>
<tr>
      <td>鼻</td>
<td>嗅觉</td>
<td colspan="2"> ${userDb.face.smell } </td>
<td>鼻窦疾病</td>
<td colspan="2"> ${userDb.face.nosedisease }</td>
  </tr>
<tr>
      <td>咽喉</td>
<td colspan="3">${userDb.face.throat }</td>
<td>口吃</td>
<td colspan="2">${userDb.face.stutter }</td>
  </tr>
<tr>
      <td>口腔</td>
<td>唇额</td>
<td>${userDb.face.dry }</td>
<td>缺齿</td>
<td>${userDb.face.hypodontia }</td>
<td>龋齿</td>
<td>${userDb.face.caries }</td>
  </tr>
<tr>
      <td>其它</td>
<td colspan="6">${userDb.face.other }</td>
  </tr>
<tr>
      <td rowspan="5">外科</td>
<td colspan="2">身高 ${userDb.out.height }  cm</td>
<td>泌尿生殖器</td>
<td colspan="2"> ${userDb.out.urinary }</td>
<td rowspan="2">皮肤</td>
<td rowspan="2"> ${userDb.out.skin }</td>
<td rowspan="5">医生意见 ${userDb.out.opinion.comp } </td>
  </tr>
<tr>
      <td colspan="2">体重     ${userDb.out.weight } kg</td>
<td>肛门</td>
<td colspan="2"> ${userDb.out.anus }</td>
  </tr>
<tr>
      <td colspan="2">淋巴 ${userDb.out.lymph } </td>
<td>甲状腺</td>
<td colspan="2"> ${userDb.out.thyroid }</td>
<td>脊柱</td>
<td> ${userDb.out.spine }</td>
  </tr>
<tr>
      <td colspan="2">四肢 ${userDb.out.limb }</td>
<td>关节</td>
<td colspan="2"> ${userDb.out.joint }</td>
<td>扁平足</td>
<td> ${userDb.out.flatfoot }</td>
  </tr>
<tr>
	<td>其它</td>
      <td colspan="7">${userDb.out.other }</td>
  </tr>

<tr>
      <td width="50" rowspan="8">内<br><br><br><br><br>科</td>
      <td width="150">血压</td>
      <td width="260" style="text-align: right" colspan="2"> ${userDb.medicine.bloodpressure } mmHg</td>
      <td width="80" colspan="2">心率</td>
      <td width="260" style="text-align: right" colspan="2"> ${userDb.medicine.development }（次/分）</td>
      <td rowspan="8"><div>医生意见</div> ${userDb.medicine.opinion.comp }<br><br><br><br><br><br><br><br><br><div>医生签名</div>${userDb.medicine.opinion.user.name  }</td>
  </tr>
  <tr>
      <td>发育及营养状况</td>
      <td colspan="6">${userDb.medicine.nerve }</td>
  </tr>
  <tr>
      <td>神经及精神</td>
      <td colspan="6">${userDb.medicine.heart }</td>
  </tr>
  <tr>

      <td>肺及呼吸道</td>
      <td colspan="6">${userDb.medicine.lung }</td>
  </tr>
  <tr>

      <td>心脏及血管</td>
      <td colspan="6">${userDb.medicine.liver }</td>
  </tr>
  <tr>
      <td rowspan="2">腹部器官</td>
      <td rowspan="2">${userDb.medicine.spleen }</td>
      <td colspan="2">肝</td>
      <td colspan="3">${userDb.medicine.abdomen }</td>
  </tr>
  <tr>
      <td colspan="2">脾</td>
      <td colspan="3">${userDb.medicine.abdomen }</td>
  </tr>
  <tr>
      <td>其他</td>
      <td colspan="6">${userDb.medicine.other }</td>
  </tr>
  <tr>
      <td colspan="2">胸部爱克<br>斯线透视</td>
      <td colspan="6"> ${userDb.perspective.chest } </td>
      <td style="vertical-align: top">医生签名${userDb.perspective.opinion.user.name }</td>
  </tr>
  <tr height="40">
      <td colspan="2">B超检查</td>
      <td colspan="6"> ${userDb.perspective.bmode }</td>
      <td style="vertical-align: top">医生签名  ${userDb.perspective.opinion.user.name }</td>
  </tr>
  <tr>
      <td colspan="2">化验检查<br>（附化验单据）</td>
      <td colspan="7" style="margin: 0;padding: 0;">
          <table class="inner">
              <tr height="40">
                  <td width="110">血</td>
                  <td>${userDb.test.blood }</td>
                  <td width="110">尿</td>
                  <td>${userDb.test.urine }</td>
                  <td width="110">肝/肾功</td>
                  <td>${userDb.test.liver }</td>
              </tr>
          </table>
      </td>
  </tr>
  <tr height="70">
      <td colspan="2">检查结论</td>
      <td colspan="7"></td>
  </tr>
  <tr height="70">
      <td colspan="2">体检单位意见</td>
      <td colspan="7">检查单位盖章</td>
  </tr>
  <tr>
      <td colspan="2">备注</td>
      <td colspan="7"></td>
  </tr>
</table>
</body>
</html>