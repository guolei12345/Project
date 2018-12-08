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
						<th>身高</th>
						<th>体重</th>
						<th>淋巴</th>
						<th>四肢</th>
						<th>泌尿</th>
						<th>肛门</th>
						<th>甲状腺</th>
						<th>关节</th>
						<th>皮肤</th>
						<th>脊柱</th>
						<th>扁平足</th>
						<th>其它</th>
						<th>疾病类型</th>
						<th>修改</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody id="tr">
				<c:forEach items="${listOut}" var="out">
					<tr>
						<th>${out.userid }</th>
						<th>${out.height }</th>
						<th>${out.weight }</th>
						<th>${out.lymph }</th>
						<th>${out.limb }</th>
						<th>${out.urinary }</th>
						<th>${out.anus }</th>
						<th>${out.thyroid }</th>
						<th>${out.joint }</th>
						<th>${out.skin }</th>
						<th>${out.spine }</th>
						<th>${out.flatfoot }</th>
						<th>${out.other }</th>
						<th>${out.healthtype }</th>
						<th>
							<a href="#" onclick="editOut('/out/edit?id=${out.id }')">修改</a>
						</th>
						<th>
							<a href="#" onclick="editOut('/out/delete?id=${out.id }')">删除</a>
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
	function editOut(url){
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