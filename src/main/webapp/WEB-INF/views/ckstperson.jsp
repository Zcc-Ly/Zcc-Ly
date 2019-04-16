<!DOCTYPE html>
<html>
<head>
  <title>社团人员详情</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<%
pageContext.setAttribute("APP_PATH",request.getContextPath());
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/adminIndex">主页</a></li>
                <li ><a href="allstudent.jsp">学生管理</a></li>
                <li><a href="allst.jsp">社团管理</a></li>
                <li><a href="allhd.jsp">活动管理</a></li>
                <li><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="/index">返回学生版主页</a></li>
            </ul>
        </div>

    </div>
</nav>




<!-- 学生添加的模态框 -->
<div class="modal fade" id="stuAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">学生添加</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        <!-- 学生姓名 -->
		 
		  <!-- 学号 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">学号</label>
		    <div class="col-sm-10">
		      <input type="text" name="sId" class="form-control" id="sId_add_input" placeholder="学号">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  
		    <!-- 学号 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">社团编号</label>
		    <div class="col-sm-10">
		      <input type="text" name="stid" class="form-control" id="sId_add_input" value="${id}" onfocus=this.blur()>
		      <span class="help-block"></span>
		    </div>
		  </div>  
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="stu_save_btn">保存</button>
      </div>
    </div>
  </div>
</div>














<!-- 搭建显示页面 -->
<div class="container theme-showcase" role="main">


  <ol class="breadcrumb" style="margin-top: 100px">
        <li><a href="/adminIndex">首页</a></li>
        <li class="active">学生管理</li>
    </ol>

	<div class="row">
			<div class="col-md-4 col-md-offset-8.5">
				<button class="btn btn-success" id="stu_add_modal_btn">新增社团成员</button>
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
	//清除表单数据（表单完整重置（表单的数据，表单的样式））
	reset_form("#stuAddModal form");
	//s$("")[0].reset();
	//发送ajax请求，查出部门信息，显示在下拉列表中
//	getDepts("#stuAddModal select");
	//弹出模态框
	$("#stuAddModal").modal({
		backdrop:"static"
	});
});


//点击保存，保存学生。
$("#stu_save_btn").click(function(){
			
			//2、发送ajax请求保存员工
			$.ajax({
				url:"${APP_PATH}/savess",
				type:"POST",
				data:$("#stuAddModal form").serialize(),
				success:function(result){
					//alert(result.msg);
						$("#stuAddModal").modal('hide');
						window.location.reload();
				}
			});
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