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
<title>修改外科信息
</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-3  column">
		</div>
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				修改外科信息
			</h3>
				<div class="form-horizontal">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">用户</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="userid" name="userid" value="${out.userid }" readonly="readonly"/>
						<input type="hidden" class="form-control" id="id" name="id" value="${out.id }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身高</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="height" name="height" value="${out.height }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">体重</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="weight" name="weight" value="${out.weight }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">淋巴</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="lymph" name="lymph" value="${out.lymph }"/>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">四肢</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="limb" name="limb" value="${out.limb }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">泌尿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="urinary" name="urinary" value="${out.urinary }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">肛门</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="anus" name="anus" value="${out.anus }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">甲状腺</label>
					<div class="col-sm-10">
						<select id="thyroid" name="thyroid">
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="skin" name="skin" /> -->
					</div>
					
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">关节</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="joint" name="joint" value="${out.joint }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">皮肤</label>
					<div class="col-sm-10">
						<select id="skin" name="skin">
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<%-- <input type="text" class="form-control" id="skin" name="skin" value="${out.skin }"/> --%>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">脊柱</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="spine" name="spine" value="${out.spine }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">扁平足</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="flatfoot" name="flatfoot" value="${out.flatfoot }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">其它</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="other" name="other" value="${out.other }"/>
					</div>
				</div>
				<%-- <div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">健康类型</label>
					<div class="col-sm-10">
						<select name="healthtype" id="healthtype">
							<c:forEach items="${listHealthy }" var="healthy">
								<option value ="${healthy.type }">${healthy.name}</option>
							</c:forEach>
						</select>
					</div>
				</div> --%>
				<div >
					<div class="col-sm-offset-2 col-sm-10">
						 <button class="btn btn-default" onclick="editOut()">修改</button>
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
	 function editOut(){
		var url = "/out/edit1";
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