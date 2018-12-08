<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-image:url(../../img/timg.jpg);background-size:100%; ">
	<div class="container">
	<div class="row clearfix" style="margin-top:180px;">
		<div class="col-md-3  column">
		</div>
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				体检系统
			</h3>
			<form class="form-horizontal" action="/user/login" method="post" role="form">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">名字</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3" name="name" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3" name="pass" />
					</div>
				</div>
				<!-- <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 <label><input type="checkbox" />Remember me</label>
						</div>
					</div>
				</div> -->
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">登陆</button>
						 <input type="button" class="btn btn-default" onclick="register()" value="注册"/>
					</div>
					
				</div>
			</form>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
</div>
<form id="myform"></form>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function register(){
       $("#myform").attr("action","/user/regist");
       $("#myform").attr("method","get");
       $("#myform").submit();
	}
</script>
</html>