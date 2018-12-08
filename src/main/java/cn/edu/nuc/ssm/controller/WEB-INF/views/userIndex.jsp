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
		<div class="col-md-3 column">
			<div class="panel-group" id="panel-763223">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" href="#panel-element-yonghu">用户管理    欢迎${user.name }</a>
					</div>
					<div id="panel-element-yonghu" class="panel-collapse collapse in">
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/user/edit')">用户信息完善</a>
						</div>
						<div class="panel-body">
							<a class="panel-title" href="#" onclick="selectUser('/user/table')">个人体检报告</a>
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