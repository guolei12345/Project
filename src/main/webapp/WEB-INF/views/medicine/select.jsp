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
<title>查看内科信息</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
</head>
<body>
<div class="container" id="s">
	<div class="row clearfix">
		<div class="col-md-9 column">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <!-- <form class="navbar-form navbar-left">
					<div class="form-group">
						<select name="=" id ="select">
							<option value ="全部">全部</option>
						  	<option value ="五官科">五官科</option>
						  	<option value ="外科">外科</option>
						  	<option value ="内科">内科</option>
						  	<option value ="透视科">透视科</option>
						  	<option value ="化验科">化验科</option>
						</select>
					</div> 
				</form>	
					<button type="submit" onclick="selectFace()" class="btn btn-default">Submit</button> -->
			</div>
			<div>
				${msg }
			</div>
			<div>
				<table class="table" id="sel">
				<thead>
					<tr>
						<th>用户编号</th>
						<th>血压</th>
						<th>心率</th>
						<th>发育</th>
						<th>肺</th>
						<th>神经</th>
						<th>呼吸</th>
						<th>心脏</th>
						<th>腹部</th>
						<th>其它</th>
						<th>健康类别</th>
						<th>修改</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody id="tr">
					<c:forEach items="${listMedicine}" var="medicine">
					<tr>
						<th>${medicine.userid }</th>
						<th>${medicine.bloodpressure }</th>
						<th>${medicine.development }</th>
						<th>${medicine.nerve }</th>
						<th>${medicine.lung }</th>
						<th>${medicine.heart }</th>
						<th>${medicine.abdomen }</th>
						<th>${medicine.liver }</th>
						<th>${medicine.spleen }</th>
						<th>${medicine.other }</th>
						<th>${medicine.healthtype }</th>
						<th>
							<a href="#" onclick="editMedicine('/medicine/edit?id=${medicine.id }')">修改</a>
						</th>
						<th>
							<a href="#" onclick="editMedicine('/medicine/delete?id=${medicine.id }')">删除</a>
						</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
			
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function editMedicine(url){
		$("#load").load(url);
	}
	/* function selectFace(){
		var d = $("#select").val();
		var data = {
				department:d
		}
		var url = "/opinion/select"
		$("#load").load(url,data);
	} */
</script>
</html>