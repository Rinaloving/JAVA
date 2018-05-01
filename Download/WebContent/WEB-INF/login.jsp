<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网页</title>
    <link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
    <script type="text/javascript" src="styles/mywebsite.js"></script>
	<script type="text/javascript">
</script>
  </head>
<body onload = "showTime()" style=" background:url(images/bc.jpg);background-repeat:no-repeat;background-size:100%;" >
  
    <div style="float: left;">
    <span style="margin-left: 1200px;margin-top:50px;float: left; " class="title">开发区 · 滨州</span> <!--遇见·印象  -->
    <label style="margin-left: 1300px; font-size:30px; color:snow; " id="tt3" value="time" ></label> 
	</div>
	<div >
    <div style="margin-left: 1200px;margin-top:400px;float: left;background:url(icon/6.jpg);width:300px;height:200px;filter:alpha(opacity=50);opacity:0.5;">
    	<div style="position:absolute;float: left;padding-top:10px;"><font color="red">${requestScope.tip}</font></div>
    	<s:form action="loginAction" method="post" style="margin-top:60px;margin-left:25px;">
    		<s:textfield name="username" label="姓    名"/>
    		<s:textfield style="display:none"/>
    		<s:textfield style="display:none"/>
    		<s:textfield style="display:none"/>
    		<s:textfield name="password" label="密    码"/>
    		<s:submit value="确定"  style="margin-right:45px; width:80px;"/>
    	</s:form>
    </div>
    
</div>
</html>