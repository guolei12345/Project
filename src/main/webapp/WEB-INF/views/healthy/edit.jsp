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
				建议修改
			</h3>
			<div class="form-horizontal">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">科室</label>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" id="id" name="id" value="${healthy.id }" />
						<input type="text" class="form-control" id="demp" name="demp" value="${healthy.demp }" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">疾病类型</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="type" name="type" value="${healthy.type }" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">疾病名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name" value="${healthy.name }" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input class="btn btn-default" onclick="editHealthy()" value="修改"/>
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
function editHealthy(){
	var url = "/healthy/edit";
	var id = $("#id").val();
	var demp = $("#demp").val();
	var type = $("#type").val();
	var name = $("#name").val();
	var data1 = {
		"id":id,
		"demp":demp,
		"type":type,
		"name":name
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