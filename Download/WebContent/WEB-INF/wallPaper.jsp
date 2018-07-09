<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
  <link href="styles/bootstrap.min.css" rel="stylesheet"/>
  <link href="styles/fileinput.min.css" rel="stylesheet"/>
  <script type="text/javascript" src="styles/mywebsite.js"></script>
  	<script src="styles/jquery-3.1.0.min.js"></script>
	<script src="styles/bootstrap.min.js"></script>
	<script src="styles/zh.js"></script>
	<script src="styles/fileinput.js"></script>
<title>精美壁纸</title>
<script type="text/javascript" src="styles/mywebsite.js">
  	
  </script>
</head>
<body>
	<%-- 上传文件名：${uploadFileFileName } <br>
	上传文件类型：${uploadFileContentType } <br>
	为什么： ${name }<br>
	下载文件名：${fileName }<br>
	下载文件路径：${realFilePath }<br> --%>
	<%-- 下载文件集合：${list }<br> --%>

	<!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">精美壁纸</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active" data-toggle="modal" data-target="#myModal"><a href="#">文件上传</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="backFisrtWeb">返回首页</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="backLoginWeb">注销 <span class="sr-only">(current)</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<div class="container">
	<div class="row" style="padding-top:80px;">
	<c:forEach items="${list }" var="fileName2" varStatus="status">
	
	<ul class="col-md-4" >
		<div style="height:300px;width:200px; "><a onClick="" href="wallpaper/${fileName2}" style="text-decoration:none;color:snow;" ><img style="height:200px;width:300px;" class="img-rounded" name="fileTypeName" alt="${fileName2}" src="wallpaper/${fileName2}"></a><li class="li"></li></div>		
	
	</ul>	           
	 </c:forEach>
	 </div>
	 </div>
	<%--  <div style=" width:1600px;height:230px; border:0px;background:#00BFFF; margin-top:-19px;float:left;">   
	 <div id="menu_left_top" style="margin-top:0px;" ><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="backFisrtWeb" style="text-decoration:none;color:snow;">返回首页</a></span></div>
	 <div id="menu_left_top" onClick="document.getElementById('light2').style.display='block';document.getElementById('fade').style.display='block'" style="margin-top:0px;"><div></div><span style=" font-size: 20px;text-align:center;display:block;line-height:50px;"><a href="#" style="text-decoration:none;color:snow;">壁纸上传</a></span></div> 
	</div>--%>
	
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