<!DOCTYPE html>
<html>
<head>
  <title>社团人员</title>
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
                <span class="sr-only">社团人员</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
           <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li><a href="allNotice.jsp">所有社团</a></li>
                <li ><a href="allhd.jsp">我的社团</a></li>
                <li ><a href="allNotice.jsp">社团活动</a></li>
              	  <li ><a href="allNotice.jsp">所有活动</a></li>
                <li ><a href="allstudent.jsp">校园公告</a></li>
                <li><a href="/index">退出登录</a></li>
            </ul>
        </div>

    </div>
</nav>

<!-- 搭建显示页面 -->
<div class="container theme-showcase" role="main">


  <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">学生管理</li>
    </ol>

	<div class="row">
			<div class="col-md-4 col-md-offset-8.5">
				<button class="btn btn-success" id="stu_add_modal_btn">查看新入社团申请</button>
			</div>
		</div>

        <table class="table table-striped" id="stus_table">
            <thead>
            <tr>
            	 <th>学号</th>
                <th>学生姓名</th>
                <th>学院专业</th>
                <th>性别</th>
                <th>操作</th>
            </tr>
            </thead>
            
            <tbody id="neirong">
            
            </tbody>
          
        </table>
        
        
    </div>

<script type="text/javascript">



$(function(){
	//去首页
	to_page(1);
});




function to_page(pn){
	var ids = "";
	
	$.ajax({
		
		url:"${APP_PATH}/getststuids/"+${id},
		type:"GET",
		success:function(result){
			$.each(result.extend.stuids,function(index,item){
				var stuIdTd =item.suSid;
				ids += stuIdTd.toString()+",";	
			});
	
			
			$.ajax({
				url:"${APP_PATH}/getststu/"+ids,
				data:"pn="+pn,
				type:"GET",
				success:function(result){
				//console.log(result);
				 build_stus_table(result);
			 
				 build_page_info(result);
			 
				 build_page_nav(result);
			
			
		}
	});
	
	
	
}
});
}






//1、解析并显示员工数据
function build_stus_table(result){
	//清空table表格
	$("#stus_table tbody").empty();	
	var stus = result.extend.pageInfo.list;
	$.each(stus,function(index,item){
		var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
		var stuIdTd = $("<td></td>").append(item.id);
		var stuNameTd = $("<td></td>").append(item.sName);
		var genderTd = $("<td></td>").append(item.gender=='1'?"男":"女");
		var stuMjaorTd = $("<td></td>").append(item.sMajor);
		var stuSidTd = $("<td></td>").append(item.sId);
	
		
		var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");

//为删除按钮添加一个自定义的属性来表示当前删除的员工id
delBtn.attr("del-id",item.sId);

var btnTd = $("<td></td>").append(" ").append(delBtn);

		
		//var delBtn = 
		//append方法执行完成以后还是返回原来的元素
		$("<tr></tr>")
			.append(stuSidTd)
			.append(stuNameTd)
			.append(stuMjaorTd)
			.append(genderTd)
			.append(btnTd)
			.appendTo("#stus_table tbody");
	});
}




















//清空表单样式及内容
function reset_form(ele){
	$(ele)[0].reset();
	//清空表单样式
	$(ele).find("*").removeClass("has-error has-success");
	$(ele).find(".help-block").text("");
}




//点击新增按钮弹出模态框。
$("#stu_add_modal_btn").click(function(){
	window.location.href="cksq/"+${id};
});


//单个删除
$(document).on("click",".delete_btn",function(){
	//1、弹出是否确认删除对话框
	var empName = $(this).parents("tr").find("td:eq(1)").text();
	var empId = $(this).attr("del-id");
	//alert($(this).parents("tr").find("td:eq(1)").text());
	if(confirm("确认删除【"+empName+"】吗？")){
		//确认，发送ajax请求删除即可
		$.ajax({
			url:"${APP_PATH}/deletestust/"+${id},
			data:{ suSid:empId,
				suStid:${id}
			},
			type:"POST",
			success:function(result){
				alert(result.msg);
				//回到本页
				window.location.reload();
			}
		});
	}
});











</script>













</body>
</html>