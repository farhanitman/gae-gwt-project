<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title> <tiles:getAsString name="title" /> - Showcase Yourself</title>
<link href="/res/themes/bluesky/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body onload='<tiles:getAsString name="onloadCall" />'> 
<div id="wrapper">
<div id="header">
<tiles:insertAttribute name="logo" />
<tiles:insertAttribute name="loginInfo" />
	</div>
	<div id="menu">
<tiles:insertAttribute name="menu" />
</div>
<div id="page">
	<tiles:insertAttribute name="body" />
</div>
</div>
<div id="footer-content">
<tiles:insertAttribute name="footerContent" /> 
</div>
<div id="footer">
<tiles:insertAttribute name="footer" /> 
</div>
</body>
</html>