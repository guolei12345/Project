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
<title>完善信息</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-3  column">
		</div>
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				用户信息完善
			</h3>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name" value="${user.name }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-horizontal">
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身份证</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="id" name="id" value="${user.id }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">性别</label>
					<div class="col-sm-10">
						<select name="sex" id="sex">
						  	<option value ="男">男</option>
						  	<option value ="女">女</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="age" name="age" value="${user.id }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">婚否</label>
					<select name="marry" id="marry">
						  	<option value ="已婚">已婚</option>
						  	<option value ="未婚">未婚</option>
					</select>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">文化程度</label>
					<div class="col-sm-10">
						<select name="education" id="education">
						  	<option value ="小学">小学</option>
						  	<option value ="初中">初中</option>
						  	<option value ="高中">高中</option>
						  	<option value ="大学">大学</option>
						  	<option value ="研究">研究</option>
						  	<option value ="博士">博士</option>
						  	<option value ="硕士">硕士</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">籍贯</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nativeplace" name="nativeplace" value="${user.nativeplace }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">单位</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="company" name="company" value="${user.company }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">地址</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="address" name="address" value="${user.address }"/>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">病史</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="medicalhistory" name="medicalhistory" value="${user.medicalhistory }"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button onclick="editUser('/user/edit')" class="btn btn-default">完善</button>
					</div>
				</div>
				</div>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function editUser(url){
		var id = $("#id").val();
		var name = $("#name").val();
		var sex = $("#sex").val();
		var age = $("#age").val();
		var marry = $("#marry").val();
		var education = $("#education").val();
		var nativeplace = $("#nativeplace").val();
		var company = $("#company").val();
		var address = $("#address").val();
		var medicalhistory = $("#medicalhistory").val();
		var data1 = {
			"id":id,
			"name":name,
			"sex":sex,
			"age":age,
			"marry":marry,
			"education":education,
			"nativeplace":nativeplace,
			"company":company,
			"address":address,
			"medicalhistory":medicalhistory
		}; 

		$.ajax({
			type:"post",
			url:url,
			data:JSON.stringify(data1),
			contentType:"application/json;charset=utf-8",
			success:function(data){
				$("#load").html(data);
			}
		})
	}
	
</script>
</html>