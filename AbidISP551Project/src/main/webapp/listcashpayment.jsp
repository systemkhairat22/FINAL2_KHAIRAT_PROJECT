<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%//prevent Caching of JSP Pages
 response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
//get session and check if session null, go to login page
if(session.getAttribute("currentSessionUser")==null)
	response.sendRedirect("index.html");%>
<%int id = (Integer) session.getAttribute("currentSessionUser");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View List Cash Payment</title>
</head>
<body>
	<a href="ViewAdminController2">BACK</a><br><br>
	<table border="1">
		<tr>
			<th>Payment id</th>
			<th>Date</th>
			<th>Amount</th>
			<th>Member ID</th>
			<th>Action</th>
		</tr>
		<c:forEach items ="${payment}" var="p">
			<tr>
				<td><c:out value="${p.paymentid}"/></td>
				<td><c:out value="${p.payment_date}"/></td>
				<td><c:out value="RM${p.payment_amount}"/></td>
				<td><c:out value="${p.memberid}"/></td>
				<td><a class="btn btn-primary" href="DeleteCashPaymentController?paymentid=<c:out value="${p.paymentid}"/>">Payment receive</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>