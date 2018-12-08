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
<title>查看用户信息</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
</head>
<body>
<div class="container" id="s">
	<div class="row clearfix">
		<div class="col-md-9 column">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <!-- <form class="navbar-form navbar-left">
					<div class="form-group">
						<select name="=" id ="select">
							<option value ="全部">全部</option>
						  	<option value ="五官科">五官科</option>
						  	<option value ="外科">外科</option>
						  	<option value ="内科">内科</option>
						  	<option value ="透视科">透视科</option>
						  	<option value ="化验科">化验科</option>
						</select>
					</div> 
				</form>	
					<button type="submit" onclick="selectFace()" class="btn btn-default">Submit</button> -->
			</div>
			<div>
				${msg }
			</div>
			<div>
				<table class="table" id="sel">
				<thead>
					<tr>
						<th>用户编号</th>
						<th>左眼</th>
						<th>右眼</th>
						<th>左眼矫正</th>
						<th>右眼矫正</th>
						<th>辨色力</th>
						<th>眼疾</th>
						<th>左耳听力</th>
						<th>右耳听力</th>
						<th>耳疾</th>
						<th>嗅觉</th>
						<th>鼻炎</th>
						<th>咽喉</th>
						<th>口吃</th>
						<th>唇额</th>
						<th>缺齿</th>
						<th>龋齿</th>
						<th>其它</th>
						<th>健康类型</th>
						<th>修改</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody id="tr">
					<c:forEach items="${listFace}" var="face">
					<tr>
						<th>${face.userid }</th>
						<th>${face.lefteye }</th>
						<th>${face.righteye }</th>
						<th>${face.legtcorrect }</th>
						<th>${face.rightcorrect }</th>
						<th>${face.colorblindness }</th>
						<th>${face.eyedisease }</th>
						<th>${face.leftears }</th>
						<th>${face.rightears }</th>
						<th>${face.earsdisease }</th>
						<th>${face.smell }</th>
						<th>${face.nosedisease }</th>
						<th>${face.throat }</th>
						<th>${face.stutter }</th>
						<th>${face.dry }</th>
						<th>${face.hypodontia }</th>
						<th>${face.caries }</th>
						<th>${face.other }</th>
						<th>${face.helthtype }</th>
						<th>
							<a href="#" onclick="editFace('/face/edit?id=${face.id }')">修改</a>
						</th>
						<th>
							<a href="#" onclick="editFace('/face/delete?id=${face.id }')">删除</a>
						</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
			
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function editFace(url){
		$("#load").load(url);
	}
	/* function selectFace(){
		var d = $("#select").val();
		var data = {
				department:d
		}
		var url = "/opinion/select"
		$("#load").load(url,data);
	} */
</script>
</html>