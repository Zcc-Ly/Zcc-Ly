<!DOCTYPE html>
<html>
<head>
  <title>学生管理</title>
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
                <span class="sr-only">学生管理</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
          <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="allstudent.jsp">学生管理</a></li>
                <li ><a href="toallst">社团管理</a></li>
                <li><a href="allhd.jsp">活动管理</a></li>
                <li><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="adminIndex.jsp">退出登录</a></li>
            </ul>
        </div>

    </div>
</nav>


<!-- 学生修改的模态框 -->
<div class="modal fade" id="stuUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">学生信息修改</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        <!-- 学生姓名 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <input type="text" name="sName" class="form-control" id="stuName_update_input" placeholder="张三">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 学号 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">学号</label>
		    <div class="col-sm-10">
		      <input type="number" name="sId" class="form-control" id="sId_update_input" placeholder="1024">
		      <span class="help-block"></span>
		    </div>
		  </div>  

		  <!-- 密码 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input type="text" name="pwd" class="form-control" id="pwd_update_input" placeholder="不少于六位且不全是数字的密码">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 专业 -->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">专业</label>
		    <div class="col-sm-10">
		      <input type="text" name="sMajor" class="form-control" id="sMajor_update_input" placeholder="软件工程">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 年级 -->
		  	  	    <div class="form-group">
		    <label class="col-sm-2 control-label">年级</label>
		    <div class="col-sm-10">
		      <input type="text" name="sTime" class="form-control" id="sTime_update_input" placeholder="2015">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 性别 -->
		
		  <div class="form-group">
		    <label class="col-sm-2 control-label">gender</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
				  <input type="radio" name="gender" id="gender1_update_input" value="1" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender2_update_input" value="M"> 女
				</label>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="stu_update_btn">更新</button>
      </div>
    </div>
  </div>
</div>





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
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <input type="text" name="sName" class="form-control" id="stuName_add_input" placeholder="张三">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 学号 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">学号</label>
		    <div class="col-sm-10">
		      <input type="text" name="sId" class="form-control" id="sId_add_input" placeholder="1024">
		      <span class="help-block"></span>
		    </div>
		  </div>  

		  <!-- 密码 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input type="text" name="pwd" class="form-control" id="pwd_add_input" placeholder="不少于六位且不全是数字的密码">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 专业 -->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">专业</label>
		    <div class="col-sm-10">
		      <input type="text" name="sMajor" class="form-control" id="sMajor_add_input" placeholder="软件工程">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 年级 -->
		  	  	    <div class="form-group">
		    <label class="col-sm-2 control-label">年级</label>
		    <div class="col-sm-10">
		      <input type="text" name="sTime" class="form-control" id="sTime_add_input" placeholder="2015">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 性别 -->
		
		  <div class="form-group">
		    <label class="col-sm-2 control-label">gender</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
				  <input type="radio" name="gender" id="gender1_add_input" value="M" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender2_add_input" value="1"> 女
				</label>
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
				<button class="btn btn-success" id="stu_add_modal_btn">新增学生</button>
			</div>
		</div>

        <table class="table table-striped" id="stus_table">
            <thead>
            <tr>
                <th>编号</th>
                <th>学生姓名</th>
                <th>学号</th>
                <th>密码</th>
                <th>学院专业</th>
                <th>性别</th>
                <th>入学年份</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        	<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area">
			当前记录数
			</div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area">
				
			</div>
		</div>
		
        
    </div>








<script type="text/javascript">
//1.页面加载完成后，直接发送一个ajax请求，要到分页数据

$(function(){
			//去首页
			to_page(1);
		});
		
function to_page(pn){
	$.ajax({
		url:"${APP_PATH}/stus",
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
		var stuTimeTd = $("<td></td>").append(item.sTime);
		var stuSidTd = $("<td></td>").append(item.sId);
		var stupswdTd = $("<td></td>").append(item.pwd);
		/**
		<button class="">
							<span class="" aria-hidden="true"></span>
							编辑
						</button>
		*/
		var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
		//为编辑按钮添加一个自定义的属性，来表示当前员工id
		
		editBtn.attr("edit-id",item.id);
		var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
		
		//为删除按钮添加一个自定义的属性来表示当前删除的员工id
		delBtn.attr("del-id",item.id);
		
		var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
		
		//var delBtn = 
		//append方法执行完成以后还是返回原来的元素
		$("<tr></tr>")
		.append(stuIdTd)
			.append(stuNameTd)
			.append(stuSidTd)
			.append(stupswdTd)
			.append(stuMjaorTd)
			.append(genderTd)
			.append(stuTimeTd)
			.append(btnTd)
			.appendTo("#stus_table tbody");
	});
}



//解析显示分页信息
function build_page_info(result){
	$("#page_info_area").empty();
	$("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+
			result.extend.pageInfo.pages+"页,总"+
			result.extend.pageInfo.total+"条记录");
	totalRecord = result.extend.pageInfo.total;
	currentPage = result.extend.pageInfo.pageNum;
}








//解析显示分页条，点击分页要能去下一页....
function build_page_nav(result){
	//page_nav_area
	$("#page_nav_area").empty();
	var ul = $("<ul></ul>").addClass("pagination");
	
	//构建元素
	var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
	var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
	if(result.extend.pageInfo.hasPreviousPage == false){
		firstPageLi.addClass("disabled");
		prePageLi.addClass("disabled");
	}else{
		//为元素添加点击翻页的事件
		firstPageLi.click(function(){
			to_page(1);
		});
		prePageLi.click(function(){
			to_page(result.extend.pageInfo.pageNum -1);
		});
	}
	
	
	
	var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
	var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
	if(result.extend.pageInfo.hasNextPage == false){
		nextPageLi.addClass("disabled");
		lastPageLi.addClass("disabled");
	}else{
		nextPageLi.click(function(){
			to_page(result.extend.pageInfo.pageNum +1);
		});
		lastPageLi.click(function(){
			to_page(result.extend.pageInfo.pages);
		});
	}
	
	
	
	//添加首页和前一页 的提示
	ul.append(firstPageLi).append(prePageLi);
	//1,2，3遍历给ul中添加页码提示
	$.each(result.extend.pageInfo.navigatepageNums,function(index,item){
		
		var numLi = $("<li></li>").append($("<a></a>").append(item));
		if(result.extend.pageInfo.pageNum == item){
			numLi.addClass("active");
		}
		numLi.click(function(){
			to_page(item);
		});
		ul.append(numLi);
	});
	//添加下一页和末页 的提示
	ul.append(nextPageLi).append(lastPageLi);
	
	//把ul加入到nav
	var navEle = $("<nav></nav>").append(ul);
	navEle.appendTo("#page_nav_area");
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
			
		//1.先对要提交给服务器的数据进行校验
	//1、先对要提交给服务器的数据进行校验
	if(!validate_add_form()){
		return false;
	};
			//2、发送ajax请求保存员工
			$.ajax({
				url:"${APP_PATH}/saveStu",
				type:"POST",
				data:$("#stuAddModal form").serialize(),
				success:function(result){
					//alert(result.msg);
						$("#stuAddModal").modal('hide');
						to_page(9999);
				}
			});
		});
	
//校验表单数据
function validate_add_form(){
	//1、拿到要校验的数据，使用正则表达式
	var stuName = $("#stuName_add_input").val();
	var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
	if(!regName.test(stuName)){
		//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
		show_validate_msg("#stuName_add_input", "error", "用户名可以是2-5位中文或者6-16位英文");
		return false;
	}else{
		show_validate_msg("#stuName_add_input", "success", "");
	};
	return true;
}


//校验学号是否可用
$("#sId_add_input").change(function(){
	//发送ajax请求校验用户名是否可用
	var sId = this.value;
	$.ajax({
		url:"${APP_PATH}/checkuser",
		data:"sId="+sId,
		type:"POST",
		success:function(result){
			if(result.code==100){
				show_validate_msg("#sId_add_input","success","");
				$("#stu_save_btn").attr("ajax-va","success");
			}else{
				show_validate_msg("#sId_add_input","error",result.extend.va_msg);
				$("#stu_save_btn").attr("ajax-va","error");
			}
		}
	});
});


//显示校验结果的提示信息
function show_validate_msg(ele,status,msg){
	//清除当前元素的校验状态
	$(ele).parent().removeClass("has-success has-error");
	$(ele).next("span").text("");
	if("success"==status){
		$(ele).parent().addClass("has-success");
		$(ele).next("span").text(msg);
	}else if("error" == status){
		$(ele).parent().addClass("has-error");
		$(ele).next("span").text(msg);
	}
}







//1、我们是按钮创建之前就绑定了click，所以绑定不上。
//1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
//jquery新版没有live，使用on进行替代
$(document).on("click",".edit_btn",function(){
	
	
	//查出学生信息，显示员工信息
	getStu($(this).attr("edit-id"));
	
	//3、把员工的id传递给模态框的更新按钮
	$("#stu_update_btn").attr("edit-id",$(this).attr("edit-id"));
	$("#stuUpdateModal").modal({
		backdrop:"static"
	});
});

//获得学生信息，传给更新模态框
function getStu(id){
	reset_form("#stuUpdateModal form");
	$.ajax({
		url:"${APP_PATH}/stu/"+id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var stuData = result.extend.stu;
			$("#stuName_update_input").val(stuData.sName);
			$("#sId_update_input").val(stuData.sId);
			$("#pwd_update_input").val(stuData.pwd);
			$("#sMajor_update_input").val(stuData.sMajor);
			$("#sTime_update_input").val(stuData.sTime);
			$("#stuUpdateModal input[name=gender]").val([stuData.gender]);
		}
	});
}



//点击更新，更新员工信息
$("#stu_update_btn").click(function(){
	//2、发送ajax请求保存更新的员工数据
	$.ajax({
		url:"${APP_PATH}/updatestu/"+$(this).attr("edit-id"),
		type:"PUT",
		data:$("#stuUpdateModal form").serialize(),
		success:function(result){
			//alert(result.msg);
			//1、关闭对话框
			$("#stuUpdateModal").modal("hide");
			//2、回到本页面
			to_page(currentPage);
		}
	});
});


//单个删除
$(document).on("click",".delete_btn",function(){
	//1、弹出是否确认删除对话框
	var sName = $(this).parents("tr").find("td:eq(1)").text();
	var sId = $(this).attr("del-id");
	//alert($(this).parents("tr").find("td:eq(1)").text());
	if(confirm("确认删除【"+sName+"】吗？")){
		//确认，发送ajax请求删除即可
		$.ajax({
			url:"${APP_PATH}/deletestu/"+sId,
			type:"DELETE",
			success:function(result){
				alert(result.msg);
				//回到本页
				to_page(currentPage);
			}
		});
	}
});








</script>













</body>
</html>