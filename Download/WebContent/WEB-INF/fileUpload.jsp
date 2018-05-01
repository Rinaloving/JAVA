<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
  <link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
  <script type="text/javascript" src="styles/mywebsite.js">
  	
  </script>
</head>
<body>
<header style=" width:1600px;height:110px; border:0px;background:#00BFFF;"><img src="logo/logo2.jpg" style="margin-top:10px;"><span style="margin-right: 200px;margin-top:12px;font-size: 40px;  float: right; " class="title">滨州市不动产登记中心开发区分中心</span></header>
<div id ="box1" class="box1"><img src="images/1.jpg" id="banner_img"/>
			<ul>
				<li onmouseover="stopImg(1)" onmouseout="startImg(1)"></li>
				<li onmouseover="stopImg(2)" onmouseout="startImg(2)"></li>
				<li onmouseover="stopImg(3)" onmouseout="startImg(3)"></li>
				<li onmouseover="stopImg(4)" onmouseout="startImg(4)"></li>
			</ul>

		</div>
<div style=" width:1600px;height:230px; border:0px;background:#00BFFF; margin-top:-19px;">
<div id="menu_left_top" onClick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="#" style="text-decoration:none;color:snow;">文件上传</a></span></div>
<div id="menu_left_top"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="download" style="text-decoration:none;color:snow;">文件下载</a></span></div>
<div id="menu_left_top"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="show" style="text-decoration:none;color:snow;">桌面壁纸</a></span></div>
<div id="menu_left_top"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="manage" style="text-decoration:none;color:snow;">文件管理</a></span></div>
	<!-- <input type="button" text="弹出层" onClick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"> -->
     
<div id="light" class="white_content">    
  <div style="position:relative;font-size:15px;"onClick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" ><a href="#" style="text-decoration:none;color:snow;">关闭</a></div>    
	<div style="width:500x;height:100px;border:#ccc solid 0px;" id="dituContent">
		<s:form action="fileUpload" enctype="multipart/form-data" method="post" id="fileForm">
			<span style="font-size:20px;color:snow;font-weight:bold;text-align:center;margin-left:150px;">文   件   上  传</span>
			<s:file name="uploadFile" style="margin-top:20px;margin-left:80px;"></s:file>
			<s:submit onClick="return mySubmit()" value="上传" style="margin-left:65px; margin-top:60px;width:100px;height:40px;float:left;background-color:transparent;"></s:submit>
			<!-- <div id="menu_left_top" onClick="mySubmit()">上传</div>  -->
			<s:reset value="重置" style="margin-right:-20px;margin-top:-44px; width:100px;height:40px;float:right;background-color:transparent;"></s:reset>
		</s:form>
	</div>    
</div> 
	<br>
	
</div>
    	
	

</body>
</html>