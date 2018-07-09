<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>文件上传</title>
  <link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
  <link href="styles/bootstrap.min.css" rel="stylesheet"/>
  <link href="styles/fileinput.min.css" rel="stylesheet"/>
  <script type="text/javascript" src="styles/mywebsite.js"></script>
  	<script src="styles/jquery-3.1.0.min.js"></script>
	<script src="styles/bootstrap.min.js"></script>
	<script src="styles/fileinput.js"></script>
	<script src="styles/fileinput.min.js"></script>
	<script src="styles/zh.js"></script>
</head>
<body>
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
          <a class="navbar-brand" href="#">主页</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active" data-toggle="modal" data-target="#myModal"><a href="#">文件上传</a></li>
            <li><a href="download">文件下载</a></li>
            <li><a href="show">精美壁纸</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">文件管理 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="backFirstWeb">注销 <span class="sr-only"></span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/num1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="images/num2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="images/num3.jpg" alt="Third slide">
        </div>
    </div>
   <!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
    
<%-- <header style=" width:1600px;height:110px; border:0px;background:#00BFFF;"><img src="logo/logo2.jpg" style="margin-top:10px;"><span style="margin-right: 200px;margin-top:12px;font-size: 40px;  float: right; " class="title">滨州市不动产登记中心开发区分中心</span></header> --%>
<!-- <div id ="box1" class="box1"><img src="images/1.jpg" id="banner_img"/>
			<ul>
				<li onmouseover="stopImg(1)" onmouseout="startImg(1)"></li>
				<li onmouseover="stopImg(2)" onmouseout="startImg(2)"></li>
				<li onmouseover="stopImg(3)" onmouseout="startImg(3)"></li>
				<li onmouseover="stopImg(4)" onmouseout="startImg(4)"></li>
			</ul>

		</div> -->
<%-- <div style=" width:1600px;height:230px; border:0px;background:#00BFFF; margin-top:-19px;">
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
</div>  --%>

<!-- 模态框（Modal） -->
<div class="modal fade col-md-6 container"  id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					文件上传
				</h4>
			</div>
			<div class="">
			 <form  action="fileUpload"  enctype="multipart/form-data" method="post" id="fileForm" class="navbar-form navbar-right">
            <div class="input-group file-caption-main">
              <input type="file" name="uploadFile" id="txt_file" class="file" data-show-preview="false"  placeholder="选择文件"/>
            </div>
            </form>
			</div>
			<div class="modal-footer">
			<!-- 	<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
				<button type="button" onClick="return mySubmit()" class="btn btn-primary">
					上传
				</button> -->
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	<br>
	
</div>
    	
	

</body>
</html>