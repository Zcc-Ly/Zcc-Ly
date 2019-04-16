<!DOCTYPE html>
<html>
<head>
  <title>公告详情</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<%
pageContext.setAttribute("APP_PATH",request.getContextPath());
%>

<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.0.0.min.js"></script>
<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">校园公告</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
           <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li ><a href="allstudent.jsp">学生管理</a></li>
                <li><a href="allst.jsp">社团管理</a></li>
                <li ><a href="allhd.jsp">活动管理</a></li>
                <li ><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="/index">返回学生版主页</a></li>
            </ul>
        </div>


    </div>
</nav>



<div class="container theme-showcase" role="main">

    <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">公告详情</li>
    </ol>
    
    <div class="container">

        <div class="page-header">
            <h1 id="ntname">
            </h1>
        </div>
        
        <!-- 社团详情 -->
        <div class="col-md-8">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">公告内容</h3>
                </div>
                <div class="panel-body" id="ntneirong">
                </div>
            </div>
			 </div>
			

	
         <!-- 公告时间 -->
        <div class="col-md-8">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">公告时间</h3>
                </div>
                <div class="panel-body" id="noticetime">
                </div>
            </div>
        


        </div>
    </div>

  
</div>

<script type="text/javascript">
$(function(){
	//去首页
	getClub(${id});
});


//获取社团信息
function getClub(id){
	$.ajax({
		url:"${APP_PATH}/nt/"+ id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var ntData = result.extend.nt;

			 $("#ntname").append(ntData.name);
			 $("#ntneirong").append(ntData.content);
			 $("#noticetime").append(ntData.time);
		}
	});
	
}


</script>









</body>
</html>