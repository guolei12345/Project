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
			
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">科室类别</label>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" id="oid" name="oid" value="${opinion.oid }" />
						<input type="text" class="form-control" id="department" name="department" value="${opinion.department }" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">疾病名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="diseasename" id="diseasename" value="${opinion.diseasename }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">健康类别</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="healthtype" id="healthtype" value="${opinion.healthtype }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">建议</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="comp" id="comp" value="${opinion.comp }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">医生</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="doctor" value="${opinion.user.name }" readonly="readonly"/>
						<input type="hidden" class="form-control" id="userid" value="${opinion.user.id }" readonly="readonly"/>
					</div>
				</div>
				<div >
					<div class="col-sm-offset-2 col-sm-10">
						 <button class="btn btn-default" onclick="editOpinion()">修改</button>
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
	 function editOpinion(){
		var url = "/opinion/edit1";
		var oid = $("#oid").val();
		var department = $("#department").val();
		var diseasename = $("#diseasename").val();
		var healthtype = $("#healthtype").val();
		var comp = $("#comp").val();
		var userid = $("#userid").val();
		var data1 = {
			"oid":oid,
			"department":department,
			"comp":comp,
			"diseasename":diseasename,
			"healthtype":healthtype,
			"userid":userid
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