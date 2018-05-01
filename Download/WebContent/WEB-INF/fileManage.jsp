<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
<title>主页面</title>
<script type="text/javascript" src="styles/mywebsite.js">
  	
  </script>
</head>
<body style="background-color:#D1EEEE;">
	<%-- 上传文件名：${uploadFileFileName } <br>
	上传文件类型：${uploadFileContentType } <br>
	为什么： ${name }<br>
	下载文件名：${fileName }<br>
	下载文件路径：${realFilePath }<br> --%>
	<%-- 下载文件集合：${list }<br> --%>

	<header style=" width:1600px;height:110px; border:0px;background:#00BFFF;"><img src="logo/logo2.jpg" style="margin-top:10px;"><span style="margin-right: 200px;margin-top:12px;font-size: 40px;  float: right; " class="title">文件管理列表</span></header>
	
	<c:forEach items="${list }" var="fileName2" varStatus="status">
	<div style="width:1600px;height:440px;">
	<ul class="ul">
		
		<div class="fileShow" style="background-color:#00E5EE; "><a onClick="return false;" href="upload/${fileName2}" style="text-decoration:none;color:snow;" ><img name="fileTypeName" alt="${fileName2}" src="upload/${fileName2}"></a><li class="li"></li></div>
		<form action="delete" method="get">
			<input type="text" name="fileName2" value="${fileName2}" style="display:none"><div ><button type="submit" style="width:200px;background:#CD8C95;">删除</button></div>
			
		</form> 
		
	
	</ul>	           
	 </c:forEach>
	 </div>
	 <div style=" width:1600px;height:230px; border:0px;background:#00BFFF; margin-top:-19px;float:left;">   
	 <div id="menu_left_top" style="margin-top:0px;" ><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="backFisrtWeb" style="text-decoration:none;color:snow;">返回首页</a></span></div>
	</div>
	<%-- <font color="red">${requestScope.fileType}</font>	 --%>
</body>
</html>