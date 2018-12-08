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
</head>
<body>
<div class="container" id="s">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			 <form class="navbar-form navbar-left">
					<div>
						<select name="demp" id ="demp">
							<option value ="全部">全部</option>
						  	<option value ="五官科">五官科</option>
						  	<option value ="外科">外科</option>
						  	<option value ="内科">内科</option>
						  	<option value ="透视科">透视科</option>
						  	<option value ="化验科">化验科</option>
						</select>
					</div> 
			</form><button onclick="selecthealthy('/healthy/select1')" class="btn btn-default">Submit</button>
			</div>
			<div>
				${msg }
			</div>
				<table class="table" id="sel">
				<thead>
					<tr>
						<th>
							科室
						</th>
						<th>
							疾病类型
						</th>
						<th>
							疾病名称
						</th>
						<th>
							修改
						</th>
						<th>
							删除
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listHelthy}" var="healthy" >
					<tr>
						<th>
							${healthy.demp }
						</th>
						<th>
							${healthy.type }				
						</th>
						<th>
							${healthy.name  }					
						</th>
						<th>
							<a href="#" onclick="edit('/healthy/edit?id=${healthy.id }')">修改</a>
						</th>
						<th>
							<a href="#" onclick="edit('/healthy/delete?id=${healthy.id }')">删除</a>
						</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function edit(url){
		$("#load").load(url);
	}
	function selecthealthy(url){
		var demp = $("#demp").val();
		var _data = {demp:demp};
		$("#load").load(url,_data);
	}
	
	
</script>
</html>