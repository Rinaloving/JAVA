<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>网页</title>
    <link type="text/css" href="styles/mywebsite.css" rel="stylesheet"/>
    <link href="styles/bootstrap.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="styles/mywebsite.js"></script>
	<script type="text/javascript">
</script>
  </head>
<!-- <body  class="container" onload = "showTime()" style=" background:url(images/bc.jpg);background-repeat:no-repeat;background-size:100%;" >  -->
<body>
   <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">印象 · 神隐</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form  action="loginAction" method="post" class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" name="username" placeholder="用户名" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" name="password" placeholder="密码" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">登录</button>
          </form>
        </div><!--/.navbar-collapse   style="height:300px;" -->
      </div>
    </nav>

   <div class="jumbotron" style=" background:url(images/bc2.jpg);background-repeat:no-repeat;background-size:100%;" >
      <div class="container">
        <h1 style=" color:snow; ">夏风 · 荷月</h1>
        <p></p>
        <p></p>
        <blockquote class="pull-right" style=" color:snow; ">
	假如你觉得自己的日常生活很贫乏，不要去指责生活，而应该指责你自己。
	<small> <cite title="Source Title">里尔克</cite></small>
	</blockquote>
      </div>
    </div>
    
    <div class="container" >
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>游戏</h2>
          <div><img style="height:200px;width:300px;" class="img-rounded" alt="" src="images/num1.jpg"></div>
        </div>
        <div class="col-md-4">
          <h2>音乐</h2>
          <div><img style="height:200px;width:300px;" class="img-rounded" alt="" src="images/num2.jpg"></div>
       </div>
        <div class="col-md-4">
          <h2>动漫</h2>
          <div><img style="height:200px;width:300px;" class="img-rounded" alt="" src="images/num3.jpg"></div>
        </div>
      </div>

      <hr>
    
   <!--  <span style="margin-top:50px;float: left; " class="title">印象 · 滨州</span> <!--遇见·印象  -->
    <!--  <label style="font-size:60px; color:snow; " id="tt3" value="time" ></label> 
	</div>
    <div   class="img-rounded container" style="   margin-right:40px; margin-top:250px; background:url(icon/6.jpg);width:300px;height:200px;filter:alpha(opacity=50);opacity:0.5;">
    	<div  style="position:absolute;float: left;padding-top:10px;"><font color="red">${requestScope.tip}</font></div>
    	<s:form action="loginAction" method="post" class="bs-example bs-example-form" role="form">
    		<div class="input-group">
    			<s:textfield  class="form-control"  name="username" label="姓    名"/>
    		</div>
    		<div class="input-group" style="margin-top:50px; padding:10px; ">
    			<s:textfield  class="form-control" name="password" label="密    码"/>
    		</div>
    		
    		
    		<s:submit value="确定" class="btn btn-primary" style=" margin-top:10px; margin-right:20%; width:80px;"/>
    	</s:form> 
    </div>
    --> 
     <footer>
        <p>&copy; 2018 Company, Inc.</p>
      </footer>
</body>

</html>