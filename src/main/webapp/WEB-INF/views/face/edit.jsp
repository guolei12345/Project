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
<title>修改五官科信息
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
				修改五官科信息
			</h3>
				<div class="form-horizontal">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">用户</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="userid" name="userid" value="${face.userid }" readonly="readonly"/>
						<input type="hidden" class="form-control" id="id" name="id" value="${face.id }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">左眼</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="lefteye" name="lefteye" value="${face.lefteye }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右眼</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="righteye" name="righteye" value="${face.righteye }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">左眼矫正</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="legtcorrect" name="legtcorrect" value="${face.legtcorrect }"/>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右眼矫正</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="rightcorrect" name="rightcorrect" value="${face.rightcorrect }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">辨色力</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="colorblindness" name="colorblindness" value="${face.colorblindness }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">眼疾</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="eyedisease" name="eyedisease" value="${face.eyedisease }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">左耳听力</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="leftears" name="leftears" value="${face.leftears }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">右耳听力</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="rightears" name="rightears" value="${face.rightears }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">耳疾</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="earsdisease" name="earsdisease" value="${face.earsdisease }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">嗅觉</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="smell" name="smell" value="${face.smell }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">鼻炎</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nosedisease" name="nosedisease" value="${face.nosedisease }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">咽喉</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="throat" name="throat" value="${face.throat }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">口吃</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="stutter" name="stutter" value="${face.stutter }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">唇额</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="dry" name="dry" value="${face.dry }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">缺齿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="hypodontia" name="hypodontia" value="${face.hypodontia }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">龋齿</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="caries" name="caries" value="${face.caries }"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">其它</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="other" name="other" value="${face.other }"/>
					</div>
				</div>
				<%-- <div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">健康类型</label>
					<div class="col-sm-10">
						<select name="helthtype" id="helthtype">
							<c:forEach items="${listHealthy }" var="healthy">
								<option value ="${healthy.type }">${healthy.name}</option>
							</c:forEach>
						</select>
					</div>
				</div> --%>
				<div >
					<div class="col-sm-offset-2 col-sm-10">
						 <button class="btn btn-default" onclick="editFace()">修改</button>
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
	 function editFace(){
		var url = "/face/edit1";
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