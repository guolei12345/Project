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
<title>注册</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-image:url(../../img/timg.jpg);background-size:100%; ">
	<div class="container">
	<div class="row clearfix" style="margin-top:180px;">
		<div class="col-md-3  column">
		</div>
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				体检系统注册
			</h3>
			<form class="form-horizontal" action="regist" method="post" id="myform">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3" name="name" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="pass1" name="pass" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="pass2"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身份证</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="idCard" name="id" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">角色</label>
					<div class="col-sm-10">
						<select name="roleid">
						  <c:forEach items="${listRole }" var="role">
						  	<option value ="${role.roleid }">${role.rolename}</option>
						  </c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input type="button" class="btn btn-default" onclick="check()" value="注册"/>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function check(){
       var pass1 = $("#pass1").val().trim();
       var pass2 = $("#pass2").val().trim();
       if(pass1!=pass2){
    	   alert("两次输入密码不一致！");
    	   return false;
       }else{
           $("#myform").submit();
       }
       
	}
</script>
</html>