<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Admin</title>
</head>
<body>
	<a href="index.html">HOME</a><br>
	<h1>LOGIN ADMIN</h1>
	<form action="LoginAdminController" method="post">
		<table>
			<tbody>
                   <tr>
                       <th><label for="admin_icnum">Ic Number</label></th>
                       <th><input type="text"  name="admin_icnum" placeholder="NO DASH"></th>
                   </tr>
                   
                   <tr>
                       <th><label for="add_password">Password</label></th>
                       <th><input type="password"  name="add_password"></th>
                   </tr>
                   
			</tbody>
		</table>
		<input  type="submit" value= "login">
        <input type="reset"  value = "reset">
	</form>
</body>
</html>