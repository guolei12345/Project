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
<title>添加意见</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<h3 class="text-success text-center">
				五官科体检
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
					 <label for="inputPassword3" class="col-sm-2 control-label">左眼</label>
					<div class="col-sm-10">
						<select id="lefteye" name="lefteye" >
							<option value="正常">正常</option>
							<option value="近视">近视</option>
							<option value="远视">远视</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右眼</label>
					<div class="col-sm-10">
						<select id="righteye" name="righteye" >
							<option value="正常">正常</option>
							<option value="近视">近视</option>
							<option value="远视">远视</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">左眼矫正</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="legtcorrect" name="legtcorrect" />
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右眼矫正</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="rightcorrect" name="rightcorrect" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">辨色力</label>
					<div class="col-sm-10">
						<select id="colorblindness" name="colorblindness" >
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="colorblindness" name="colorblindness" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">眼疾</label>
					<div class="col-sm-10">
						<select id="eyedisease" name="eyedisease" >
							<option value="有">有</option>
							<option value="无">无</option>
						</select>
						<!-- <input type="text" class="form-control" id="eyedisease" name="eyedisease" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">左耳听力</label>
					<div class="col-sm-10">
						<select id="leftears" name="leftears" >
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="leftears" name="leftears" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右耳听力</label>
					<div class="col-sm-10">
						<select id="rightears" name="rightears" >
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="rightears" name="rightears" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">耳疾</label>
					<div class="col-sm-10">
						<select id="earsdisease" name="earsdisease" >
							<option value="有">有</option>
							<option value="无">无</option>
						</select>
						<!-- <input type="text" class="form-control" id="earsdisease" name="earsdisease" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">嗅觉</label>
					<div class="col-sm-10">
						<select id="smell" name="smell" >
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="smell" name="smell" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">鼻炎</label>
					<div class="col-sm-10">
						<select id="nosedisease" name="nosedisease" >
							<option value="有">有</option>
							<option value="无">无</option>
						</select>
						<!-- <input type="text" class="form-control" id="nosedisease" name="nosedisease" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">咽喉</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="throat" name="throat" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">口吃</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="stutter" name="stutter" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">唇额</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="dry" name="dry" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">缺齿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="hypodontia" name="hypodontia" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">龋齿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="caries" name="caries" />
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
						<input type="hidden" name="helthtype" id="helthtype" value="五官科类型"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <input onclick="addFace('/face/add')" class="btn btn-default" value="添加"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function addFace(url){		
		var id = 			$("#id").val();
		var userid = 		$("#userid").val();
		var lefteye = 		$("#lefteye").val();
		var righteye = 		$("#righteye").val();
		var legtcorrect = 	$("#legtcorrect").val();
		var rightcorrect = 	$("#rightcorrect").val();
		var colorblindness =$("#colorblindness").val();
		var eyedisease = 	$("#eyedisease").val();
		var leftears = 		$("#leftears").val();
		var rightears = 	$("#rightears").val();
		var earsdisease = 	$("#earsdisease").val();
		var smell = 		$("#smell").val();
		var nosedisease = 	$("#nosedisease").val();
		var throat = 		$("#throat").val();
		var stutter = 		$("#stutter").val();
		var dry = 			$("#dry").val();
		var hypodontia = 	$("#hypodontia").val();
		var caries = 		$("#caries").val();
		var other = 		$("#other").val();
		var helthtype = 	$("#helthtype").val();
		var data1 = {
			id				:id,
			userid			:userid,
			lefteye			:lefteye,
			righteye		:righteye,
			legtcorrect		:legtcorrect,
			rightcorrect	:rightcorrect,
			colorblindness 	:colorblindness,
			eyedisease		:eyedisease,
			leftears		:leftears,
			rightears		:rightears,
			earsdisease		:earsdisease,
			smell			:smell,
			nosedisease		:nosedisease,
			throat			:throat,
			stutter			:stutter,
			dry				:dry,
			hypodontia		:hypodontia,
			caries			:caries,
			other			:other,
			helthtype		:helthtype
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