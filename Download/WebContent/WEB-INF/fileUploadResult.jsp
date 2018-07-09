<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
  <link type="text/css" href="styles/bootstrap.min.css" rel="stylesheet"/>
  <link type="text/css" href="styles/fileinput.min.css" rel="stylesheet"/>
  <script type="text/javascript" src="styles/mywebsite.js"></script>
  	<script src="styles/jquery-3.1.0.min.js"></script>
	<script src="styles/bootstrap.min.js"></script>
	<script src="styles/zh.js"></script>
	<script src="styles/fileinput.js"></script>
<title>文件下载表</title>
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
          <a class="navbar-brand" href="#">文件下载</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="backFisrtWeb">返回首页</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="backLoginWeb">注销 <span class="sr-only">(current)</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	
<div class="container" style="padding-top:80px;">	
<table class="table table-striped" >
  <caption>文件下载列表</caption>
  <thead>
    <tr>
      <th style="text-align: center">文件名称</th>
      <th></th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="fileName2" varStatus="status">
    <tr>
      <td><ul><a onClick="return false;" href="upload/${fileName2}" ><img name="fileTypeName" alt="${fileName2}" src="upload/${fileName2}"/></ul></a></td>
      <td></td>
      <td>	<form action="download2" method="get">
			<input style="display:none" type="text" name="fileName2" value="${fileName2}">
			<button type="submit" class="btn btn-primary">下载</button>
		</form> </td>
	
    </tr>
     </c:forEach>
  </tbody>
</table>
</div>
	
	
	
	
	<div>
  
	
	 </div>
	<%-- <font color="red">${requestScope.fileType}</font>	 --%>
</body>
</html>