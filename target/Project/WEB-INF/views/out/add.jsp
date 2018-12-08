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
<title>外科信息添加</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				外科信息添加
			</h3>
			<div class="form-horizontal" >
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">用户</label>
					<div class="col-sm-10">
						<select name="userid" id="userid">
							<c:forEach items="${listUser }" var="onuser">
								<option value ="${onuser.id }">${onuser.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身高</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="height" name="height" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">体重</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="weight" name="weight"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">淋巴</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="lymph" name="lymph" />
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">四肢</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="limb" name="limb" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">泌尿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="urinary" name="urinary" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">肛门</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="anus" name="anus" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">甲状腺</label>
					<div class="col-sm-10">
						<select id="thyroid" name="thyroid">
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="thyroid" name="thyroid" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">关节</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="joint" name="joint" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">皮肤</label>
					<div class="col-sm-10">
						<select id="skin" name="skin">
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<input type="text" class="form-control" id="skin" name="skin" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">脊柱</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="spine" name="spine" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">扁平足</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="flatfoot" name="flatfoot" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">其它</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="other" name="other" />
					</div>
				</div>
				<div class="form-group">
					 <!-- <label for="inputPassword3" class="col-sm-2 control-label">健康类型</label> -->
					<div class="col-sm-10">
						<input type="hidden" name="healthtype" id="healthtype" value="外科类型"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input onclick="addOut('/out/add')" class="btn btn-default" value="添加"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function addOut(url){		
		var id = 			$("#id").val();
		var userid = 		$("#userid").val();
		var height = 		$("#height").val();
		var weight = 		$("#weight").val();
		var lymph = 		$("#lymph").val();
		var limb = 			$("#limb").val();
		var urinary =		$("#urinary").val();
		var anus = 			$("#anus").val();
		var thyroid = 		$("#thyroid").val();
		var joint = 		$("#joint").val();
		var skin = 			$("#skin").val();
		var spine = 		$("#spine").val();
		var flatfoot = 		$("#flatfoot").val();
		var other = 		$("#other").val();
		var healthtype = 	$("#healthtype").val();
		var data1 = {
			id				:id,
			userid			:userid,
			height			:height,
			weight			:weight,
			lymph			:lymph,
			limb			:limb,
			urinary 		:urinary,
			anus			:anus,
			thyroid			:thyroid,
			joint			:joint,
			skin			:skin,
			spine			:spine,
			flatfoot		:flatfoot,
			other			:other,
			healthtype		:healthtype
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