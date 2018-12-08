<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>体检系统首页</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column" style="background-image:url(../img/menu.jpg);background-size:100%; ">
			<div class="panel-group" id="panel-763223">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-yonghu">用户管理    欢迎${user.name }</a>
					</div>
					<div id="panel-element-yonghu" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/user/select1')">用户信息</a>
						</div>
						<!-- <div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/user/edit')">用户信息完善</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/user/table')">个人体检报告</a>
						</div> -->
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-jianyi">建议管理</a>
					</div>
					<div id="panel-element-jianyi" class="panel-collapse collapse in">
						<!-- <div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/opinion/add')">添加建议</a>
						</div> -->
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/opinion/select1')">查看建议</a>
						</div>
					</div>
				</div>

				<!-- <div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-950579">健康类别管理</a>
					</div>
					<div id="panel-element-950579" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/healthy/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/healthy/select')">查看</a>
						</div>
					</div>
				</div> -->
				
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-wuguan">五官科</a>
					</div>
					<div id="panel-element-wuguan" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/face/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/face/select1')">查看</a>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-neike">内科</a>
					</div>
					<div id="panel-element-neike" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/medicine/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/medicine/select1')">查看</a>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-waike">外科</a>
					</div>
					<div id="panel-element-waike" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/out/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/out/select1')">查看</a>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-toushi">透视科</a>
					</div>
					<div id="panel-element-toushi" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/perspective/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/perspective/select1')">查看</a>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-huayan">化验</a>
					</div>
					<div id="panel-element-huayan" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/test/add')">添加</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/test/select1')">查看</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 column" id="load">
			${msg }
		</div>
	</div>
	</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function selectUser(url){
       $("#load").load(url)
	}
	
</script>
</html>