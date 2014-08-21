<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%@include file="resource.jsp" %>

<title>员工列表</title>
</head>
<body>

<div class="row">
 	<table class="table table-condensed table-hover table-striped">
				<thead>
					<tr class="btn-primary">
						<td>编号</td>
						<td>用户名</td>
						<td>性别</td>
						<td>年龄</td>
						<td>联系电话</td>
						<td>加入时间</td>
						<td>成功登陆次数</td>
						<td>锁定状态</td>
						
					</tr>
				</thead>
				
				<tbody>
					
					<c:forEach var="val" items="${userList}">
					<tr>
						<td>
							<input type="radio" value="${val.id}"/>
						</td>
						<td>
							${val.userName}
						</td>
						<td>
							${val.sex}
						</td>
						<td>
							${val.age}
						</td>
						<td>
							${val.phone}
						</td>
						<td>
							${val.addDate}
						</td>
						<td>
							
						</td>
					  </tr>
					</c:forEach>
					<tr>
						<td colspan="8">
							<input type="button" value="增加" class="btn default"/>
							<input type="button" value="修改" class="btn default"/>
							<input type="button" value="删除" class="btn default"/>
							<input type="button" value="打印" class="btn default"/>
						</td>
					</tr>
				</tbody>
	</table>
</div>






	
</body>
</html>