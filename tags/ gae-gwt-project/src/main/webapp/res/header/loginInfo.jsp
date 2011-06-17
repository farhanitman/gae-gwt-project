<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@page
	import="org.springframework.security.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.Authentication"%>

<%@page
	import="org.springframework.security.providers.anonymous.AnonymousAuthenticationToken"%>
<%@page import="org.springframework.security.userdetails.UserDetails"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div
	id="loginInfo">	
<%
	    Authentication auth = SecurityContextHolder.getContext()
			    .getAuthentication();
	    boolean anonymousUser = true;
	    boolean signInStatus = false;
	    String loggedInUserName = "";
	    String logoutUrlLink = "<a href=\"/j_spring_security_logout\">Signout</a>";
	    String signInURL = "<a href=\"/pages/login.jsp\">Login</a>";
	    String newSignupUrl = "<span class=\"headerLoggedInUserName\">New User? </span><a href=\"/newSignupPage.do\">Signup</a>";

	    if (auth != null && auth.isAuthenticated()) {
			//checks whether authentication is Anonymous or not
			//I am Not sure this test serves good in all cases
			// @TODO keep a look here, whenever u alter Acegi security configuration
			if (!(auth instanceof AnonymousAuthenticationToken)) {
			    anonymousUser = false;
			}

			if (!anonymousUser) {
			    signInStatus = true;
			    String usernameStr = "";
			    Object obj = auth.getPrincipal();
			    if (obj instanceof UserDetails) {
					usernameStr = ((UserDetails) obj).getUsername();
			    } else {
					usernameStr = obj.toString();
			    }
			    loggedInUserName = usernameStr;
			    request.getSession(true)
				    .setAttribute("USER_LOGGEDIN", true);
			    request.getSession(true).setAttribute("LOGGEDIN_USER_NAME",
				    usernameStr);
			    request.getSession().setAttribute("SIGNOUT_URL",
				    logoutUrlLink);
			} else {
			    request.getSession(true).setAttribute("SIGNIN_URL",
				    signInURL);
			    request.setAttribute("NEW_SIGNUP_URL", newSignupUrl);
			}
	    } else {
		    request.getSession(true).setAttribute("SIGNIN_URL",
			    signInURL);
		    request.setAttribute("NEW_SIGNUP_URL", newSignupUrl);
		}
	%>

<div id="signinHeader">
<table width="100%" border="0" cellspacing="5" cellpadding="0"
	align="right">
	<tr>
		<td align="right">&nbsp;</td>
		<td nowrap="nowrap" align="right">
<c:choose>
	<c:when test="${USER_LOGGEDIN}">
		 <span class="headerLoginWlcomeHi">Hi,</span> &nbsp;<span class="headerLoggedInUserName"><c:out value="${LOGGEDIN_USER_NAME}" /></span> &nbsp;
		 <c:out value="${SIGNOUT_URL}" escapeXml="false"/>
	</c:when>
	<c:otherwise>
		<c:out value="${SIGNIN_URL}" default="${SIGNIN_URL}" escapeXml="false"/>
		<br/><c:out value="${NEW_SIGNUP_URL}" escapeXml="false"/>
	</c:otherwise>
</c:choose>	
		</td>
		<td width="10px">&nbsp;</td>
	</tr>
</table>
</div>

</div>

