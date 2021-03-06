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
<title>修改化验科信息
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
				修改化验科信息
			</h3>
				<div class="form-horizontal">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">用户</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="userid" name="userid" value="${test.userid }" readonly="readonly"/>
						<input type="hidden" class="form-control" id="id" name="id" value="${test.id }" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">血</label>
					<div class="col-sm-10">
						<select id="blood" name="blood">
							<option value="高">高</option>
							<option value="低">低</option>
							<option value="正常">正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="blood" name="blood" /> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">尿</label>
					<div class="col-sm-10">
						<select id="urine" name="urine">
							<option value="高">高</option>
							<option value="低">低</option>
							<option value="正常">正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="urine" name="urine"/> -->
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">肝</label>
					<div class="col-sm-10">
						<select id="liver" name="liver">
							<option value="正常">正常</option>
							<option value="非正常">非正常</option>
						</select>
						<!-- <input type="text" class="form-control" id="liver" name="liver"/> -->
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
						 <button class="btn btn-default" onclick="editTest()">修改</button>
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
	 function editTest(){
		var url = "/test/edit1";
		var id = 			$("#id").val();
		var userid = 		$("#userid").val();
		var blood = 		$("#blood").val();
		var urine = 		$("#urine").val();
		var liver = 		$("#liver").val();
		var healthtype = 	$("#healthtype").val();
		var data1 = {
			id				:id,
			userid			:userid,
			blood			:blood,
			urine			:urine,
			liver			:liver,
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