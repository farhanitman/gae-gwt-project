<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="pageLayout" flush="true">
	<tiles:putAttribute name="title" value="showcaseme.info - How is my Wish" />
	<tiles:putAttribute name="body" value="/pages/sayhiContent.jsp" />
</tiles:insertDefinition>