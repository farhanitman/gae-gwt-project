<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core'%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<style type="text/css">
<!--
.style1 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #6600FF;
}
.errMsg {color: #993300}
.reportErrMsg {color: #009900}
-->
</style>
<table width="100%" border="1" align="center" cellpadding="2" cellspacing="2" bordercolor="#23AEDC">
  <tr>
    <td><h4 align="center"><span class="errMsg">We are Sorry, The Server Encountered an Internal Error</span><br /><br />
        <span class="reportErrMsg">If you frequently get this error, Please Report the Problem.<br /></span></h4><br /></td>
  
</tr>
  <tr>
<% String requestUri = request.getRequestURI(); %>
    <td>Thanks For Visiting our site. Sorry for inconvenience</td>
</tr>
 <tr>
	<td>Problem Summary: <font color="red"> <html:errors /> </font>
	 </td>
  </tr>

</table>
