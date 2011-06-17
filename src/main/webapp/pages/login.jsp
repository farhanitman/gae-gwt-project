<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="pageLayout" flush="true" >
      <tiles:putAttribute name="onloadCall" value="document.f.j_username.focus();" />
      <tiles:putAttribute name="body" value="/pages/loginContent.jsp" />
</tiles:insertDefinition>