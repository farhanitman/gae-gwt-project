<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<h3>Login with Username and Password</h3><form name='f' action='j_spring_security_check' method='POST'> 
 <table> 
    <tr><td>User:</td><td><input type='text' name='j_username' value='' ></td></tr> 
    <tr><td>Password:</td><td><input type='password' name='j_password'/></td></tr> 
    <tr><td><input type='checkbox' name='_spring_security_remember_me'/></td><td>Remember me on this computer.</td></tr> 
    <tr><td colspan='2'><input name="submit" type="submit"/></td></tr> 
    <tr><td colspan='2'><input name="reset" type="reset"/></td></tr> 
  </table> 
</form>