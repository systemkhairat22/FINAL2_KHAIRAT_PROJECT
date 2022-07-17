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
<title>View List of Application Claim</title>
</head>
<body>
	<a href="ViewAdminController2">BACK</a><br><br>
	<table border="1">
		<tr>
			<th>Application id</th>
			<th>Member id</th>
			<th>Status</th>
			<th>Death Certificate</th>
		</tr>
		<c:forEach items ="${claimkhairat}" var="c">
			<tr>
				<td><c:out value="${c.applicationid}"/></td>
				<td><c:out value="${c.memberid}"/></td>
				<td><c:out value="${c.appclaim_status}"/></td>
				<td><a class="btn btn-primary" href="ViewDeathCertController?applicationid=<c:out value="${c.applicationid}"/>">View Death Certificate</a></td>
				<td><a class="btn btn-primary" href="ApproveApplicationController?applicationid=<c:out value="${c.applicationid}"/>">APPROVE</a></td>
				<td><a class="btn btn-primary" href="DeclineApplicationController?applicationid=<c:out value="${c.applicationid}"/>">DECLINE</a></td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>