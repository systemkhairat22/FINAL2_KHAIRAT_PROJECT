<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Member</title>
</head>
<body>
	<a href="index.html">HOME</a><br>
	<h1>LOGIN MEMBER</h1>
	<form action="LoginMemberController" method="post">
		<table>
			<tbody>
                   <tr>
                       <th><label for="mem_icnum">IC Number</label></th>
                       <th><input type="text"  name="mem_icnum" placeholder="NO DASH"></th>
                   </tr>
                   
                   <tr>
                       <th><label for="memPwd">Password</label></th>
                       <th><input type="password"  name="mem_password"></th>
                   </tr>
                   
			</tbody>
		</table>
		<input  type="submit" value= "login">
        <input type="reset"  value = "reset">
	</form>
</body>
</html>