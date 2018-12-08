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
<title>内科</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				内科体检
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
					 <label for="inputPassword3" class="col-sm-2 control-label">血压</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="bloodpressure" name="bloodpressure" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">心率</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="development" name="development"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">发育</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nerve" name="nerve" />
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">肺</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="lung" name="lung" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">神经</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="heart" name="heart" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">呼吸</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="abdomen" name="abdomen" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">心脏</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="liver" name="liver" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">腹部</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="spleen" name="spleen" />
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
						<input type="hidden" name="healthtype" id="healthtype" value="内科类型"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input onclick="addMedicine('/medicine/add')" class="btn btn-default" value="添加"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function addMedicine(url){	
		var id = 			$("#id").val();
		var userid = 		$("#userid").val();
		var bloodpressure = $("#bloodpressure").val();
		var development = 	$("#development").val();
		var nerve = 		$("#nerve").val();
		var lung = 			$("#lung").val();
		var heart =			$("#heart").val();
		var abdomen = 		$("#abdomen").val();
		var liver = 		$("#liver").val();
		var spleen = 		$("#spleen").val();
		var other = 		$("#other").val();
		var healthtype = 	$("#healthtype").val();
		var data1 = {
			id				:id,
			userid			:userid,
			bloodpressure	:bloodpressure,
			development		:development,
			nerve			:nerve,
			lung			:lung,
			heart 			:heart,
			abdomen			:abdomen,
			liver			:liver,
			spleen			:spleen,
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