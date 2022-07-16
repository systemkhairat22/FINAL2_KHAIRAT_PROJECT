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
	<p>For first time login password is your first 2 alphabet of your name + last 4 digit of your ic number</p>
	<p>Example Name : AHMAD BIN DAUD </p>
	<p>IC Number : 750112010202 </p>
	<p>Password : AH0202 </p>
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