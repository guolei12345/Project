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
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
				<div class="form-group">
					<input type="text" class="form-control" name="name" id="name" />
				</div> 
				<button onclick="selectU()" class="btn btn-default">Submit</button>
			<table class="table">
				<thead>
					<tr>
						<th>
							身份证号
						</th>
						<th>
							姓名
						</th>
						<th>
							性别
						</th>
						<th>
							年龄
						</th>
						<th>
							婚否
						</th>
						<th>
							文化程度
						</th>
						<th>
							籍贯
						</th>
						<th>
							单位
						</th>
						<th>
							地址
						</th>
						<th>
							病史
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listUser}" var="duser">
					<tr>
						<th>
							${duser.id }
						</th>
						<th>
							${duser.name }
						</th>
						<th>
							${duser.sex }
						</th>
						<th>
							${duser.age }
						</th>
						<th>
							${duser.marry }
						</th>
						<th>
							${duser.education }
						</th>
						<th>
							${duser.nativeplace }
						</th>
						<th>
							${duser.company }
						</th>
						<th>
							${duser.address }
						</th>
						<th>
							${duser.medicalhistory }
						</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
<script src='<%=basePath%>/js/jquery-1.9.1.min.js'></script>
<script type="text/javascript">
	function selectU(){
		var url = "/user/select3";
		var name = $("#name").val();
		var data = {
				name:name
		}
		$("#load").load(url,data);
	}
	
</script>
</html>