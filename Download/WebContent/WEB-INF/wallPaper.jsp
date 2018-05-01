<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

	<header style=" width:1600px;height:110px; border:0px;background:#00BFFF;"><img src="logo/logo2.jpg" style="margin-top:10px;"><span style="margin-right: 200px;margin-top:12px;font-size: 40px;  float: right; " class="title">桌面壁纸</span></header>
	<div style="width:1600px;height:440px;overflow:auto;">
	<c:forEach items="${list }" var="fileName2" varStatus="status">
	
	<ul class="ul">
		<!-- fileName2.substring(fileName2.lastIndexOf('.')+1)== 'txt' -->
		<%-- <a href="download"><li>${fileName}</li></a> --%>
		
		<%-- <a href="download2?fileName="${fileName}" target="_blank"><li>${fileName}</li></a> --%>
		<!-- 超出div框强制自动换行 word-wrap:break-word;word-break:break-all;-->
		
<%-- 		<div class="fileShow" style="background-color:#00E5EE; "><a onClick="return false;" href="upload/${fileName2}" style="text-decoration:none;color:snow;" ><img name="fileTypeName" alt="${fileName2}" src="upload/${fileName2}"></a><li class="li"></li></div> --%>
		<%--  <c:if test="${status.count%2==0}">
			
			<div class="fileShow" style="background-color:#00E5EE; "><a onClick="return false;" href="upload/${fileName2}" style="text-decoration:none;color:snow;" ><img name="fileTypeName" alt="${fileName2}" src="upload/${fileName2}"></a><li class="li"></li></div>
			<form action="download2" method="get">
			<input type="text" name="fileName2" value="${fileName2}" style="display:none"><button type="submit">下载</button>
			
			</form>
		</c:if>  --%>
		<%-- <c:if test="${status.count%2!=0}">                                           <!-- background-color:#00ff7f; -->
	
			<div class="fileShow" style="background-color:#00E5EE; "><a onClick="myTestFileType()" href="upload/${fileName2}" style="text-decoration:none;color:snow;"><img alt="${fileName2}" src="upload/${fileName2}"></a><li class="li"></li></div>
		
		</c:if> --%>
		<div class="fileShow" style="background-color:#00E5EE; "><a onClick="" href="wallpaper/${fileName2}" style="text-decoration:none;color:snow;" ><img name="fileTypeName" alt="${fileName2}" src="wallpaper/${fileName2}"></a><li class="li"></li></div>
		<!-- 下载功能禁掉，改为在线预览 -->
		<%-- <form action="showWallpaper" method="get">
			<input type="text" name="fileName3" value="${fileName2}" style="display:none"><div ><button type="submit" style="width:200px;background:#CD8C95;">下载</button></div>
			
		</form>  --%>
		<%-- <form  action="checkFileType" method="get">
			<input   type="text" name="fileName3" value="${fileName2}" style="display:none"><button onClick="myTestFileType()">预览</button>
		</form>
		 --%>
	
	</ul>	           
	 </c:forEach>
	 </div>
	 <div style=" width:1600px;height:230px; border:0px;background:#00BFFF; margin-top:-19px;float:left;">   
	 <div id="menu_left_top" style="margin-top:0px;" ><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="backFisrtWeb" style="text-decoration:none;color:snow;">返回首页</a></span></div>
	 <div id="menu_left_top" onClick="document.getElementById('light2').style.display='block';document.getElementById('fade').style.display='block'" style="margin-top:0px;"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="#" style="text-decoration:none;color:snow;">壁纸上传</a></span></div>
	</div>
	
	<div id="light2" class="white_content">    
  <div style="position:relative;font-size:15px;"onClick="document.getElementById('light2').style.display='none';document.getElementById('fade').style.display='none'" ><a href="#" style="text-decoration:none;color:snow;">关闭</a></div>    
	<div style="width:500x;height:100px;border:#ccc solid 0px;" id="dituContent">
		<s:form action="fileUpload" enctype="multipart/form-data" method="post" id="fileForm">
			<span style="font-size:20px;color:snow;font-weight:bold;text-align:center;margin-left:150px;">壁   纸   上  传</span>
			<s:file name="uploadFile" style="margin-top:20px;margin-left:80px;"></s:file>
			<s:submit onClick="return mySubmit()" value="上传" style="margin-left:65px; margin-top:60px;width:100px;height:40px;float:left;background-color:transparent;"></s:submit>
			<!-- <div id="menu_left_top" onClick="mySubmit()">上传</div>  -->
			<s:reset value="重置" style="margin-right:-20px;margin-top:-44px; width:100px;height:40px;float:right;background-color:transparent;"></s:reset>
		</s:form>
	</div>    
</div> 
	<%-- <font color="red">${requestScope.fileType}</font>	 --%>
</body>
</html>