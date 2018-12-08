<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加意见</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				体检系统添加意见
			</h3>
			<div class="form-horizontal" >
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">科室类别</label>
					<div class="col-sm-10">
						<select name="department" id="department" onchange="changeSelect()" required="required">
						  	<option>选择科室类别</option>
						  	<option value ="五官科">五官科</option>
						  	<option value ="外科">外科</option>
						  	<option value ="内科">内科</option>
						  	<option value ="透视科">透视科</option>
						  	<option value ="化验科">化验科</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">健康类别</label>
					<div class="col-sm-10">
						<select id="healthtype" onchange="changeName()" class="form-control" name="healthtype" style="width:150px" required="required">
						</select>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">疾病名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="diseasename" name="diseasename" readonly="readonly" required="required"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">建议</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="comp" name="comp" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">医生</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" value="${user.name }" readonly="readonly"/>
						<input type="hidden" class="form-control" id="userid" name="userid" value="${user.id }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input onclick="addOpinion('/opinion/add')" class="btn btn-default" value="添加"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function addOpinion(url){
		var oid = $("#oid").val();
		var department = $("#department").val();
		var diseasename = $("#diseasename").val();
		var healthtype = $("#healthtype").val();
		var comp = $("#comp").val();
		var userid = $("#userid").val();
		if(department == '' || diseasename==''){
			alert("疾病名称不能为空");
			return false;
		}
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
	
	function changeSelect(){
		var dep = $("#department").val();
		var data = {dep:dep};
		$.ajax({
			type:"post",
			url:"/opinion/healthtype",
			data:data,
			dataType:"json",
			success:function(data){
				$("#healthtype").empty();
				$("#healthtype").append("<option>请选择疾病种类</option>");
				for(var i=0; i<data.length; i++){
					$("#healthtype").append("<option value='"+ data[i].type+"'>"+data[i].type+"</option>");
				}
			}
		})
	}
	
	function changeName(){
		var dep = $("#department").val();
		var healthtype = $("#healthtype").val();
		var data = {
				dep:dep,
				type:healthtype
			};
		$.ajax({
			type:"post",
			url:"/opinion/healthyname",
			data:data,
			dataType:"json",
			success:function(data){
				$("#diseasename").val(data.name);
			}
		})
	}
	
</script>
</html>