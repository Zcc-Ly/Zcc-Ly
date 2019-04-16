<!DOCTYPE html>
<html>
<head>
  <title>活动管理</title>
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
                <span class="sr-only">活动管理</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
           <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li ><a href="allstudent.jsp">学生管理</a></li>
                 <li ><a href="toallst">社团管理</a></li>
                <li class="active"><a href="allhd.jsp">活动管理</a></li>
                <li ><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="adminIndex.jsp">退出登录</a></li>
            </ul>
        </div>


    </div>
</nav>





<!-- 活动编辑的模态框 -->
<div class="modal fade" id="hdUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">编辑活动信息</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        
        
        <!-- 活动名 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">活动名</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdname" class="form-control" id="hdName_update_input" placeholder="篮球赛">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 举办社团 -->
		   <div class="form-group">
		    <label class="col-sm-2 control-label">举办社团</label>
		    <div class="col-sm-4">
		    	<!-- 部门提交社团id即可 -->
		      <select class="form-control" name="hddanwei">
		      </select>
		    </div>
		  </div>

		  <!-- 时间 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">活动时间</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdday" class="form-control" id="hdday_update_input" placeholder="活动时间">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  
		  <!-- 活动地点-->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">活动地点</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdplace" class="form-control" id="hdplace_update_input" placeholder="活动地点">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  
		  <!-- 活动详情 -->
			<div class="form-group">
		    <label class="col-sm-2 control-label">活动详情</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdneirong" class="form-control" id="hdneirong_update_input" placeholder="...">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="hd_update_btn">更新</button>
      </div>
    </div>
  </div>
</div>







<!-- 学生添加的模态框 -->
<div class="modal fade" id="hdAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新增活动</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        
        
        <!-- 活动名 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">活动名</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdname" class="form-control" id="hdName_add_input" placeholder="篮球赛">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 举办社团 -->
		   <div class="form-group">
		    <label class="col-sm-2 control-label">举办社团</label>
		    <div class="col-sm-4">
		    	<!-- 部门提交社团id即可 -->
		      <select class="form-control" name="hddanwei">
		      </select>
		    </div>
		  </div>

		  <!-- 时间 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">活动时间</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdday" class="form-control" id="hdday_add_input" placeholder="活动时间">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  
		  <!-- 活动地点-->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">活动地点</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdplace" class="form-control" id="hdplace_add_input" placeholder="活动地点">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  
		  <!-- 活动详情 -->
			<div class="form-group">
		    <label class="col-sm-2 control-label">活动详情</label>
		    <div class="col-sm-10">
		      <input type="text" name="hdneirong" class="form-control" id="hdneirong_add_input" placeholder="...">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="hd_save_btn">保存</button>
      </div>
    </div>
  </div>
</div>










<!-- 搭建显示页面 -->
<div class="container theme-showcase" role="main">


  <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">活动管理</li>
    </ol>

	<div class="row">
			<div class="col-md-4 col-md-offset-8.5">
				<button class="btn btn-success" id="hd_add_modal_btn">新增活动</button>
			</div>
		</div>

        <table class="table table-striped" id="hd_table">
            <thead>
            <tr>
                <th>编号</th>
                <th>活动名</th>
                <th>举办社团</th>
                <th>时间</th>
                <th>地点</th>
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


$(function(){
	//去首页
	to_page(1);
});

function to_page(pn){
	$.ajax({
	url:"${APP_PATH}/Hd",
	data:"pn="+pn,
	type:"GET",
	success:function(result){
	//console.log(result);
 build_hd_table(result);
 build_page_info(result);
 
 build_page_nav(result);
}
});
}






//1、解析并显示活动数据
function build_hd_table(result){
	//清空table表格
	$("#hd_table tbody").empty();	
	var stus = result.extend.pageInfo.list;
	$.each(stus,function(index,item){
		var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
		var hdIdTd = $("<td></td>").append(item.id);
		var hdNameTd = $("<td></td>").append(item.hdname);
		var hddayTd = $("<td></td>").append(item.hdday);
		var hdplaceTd = $("<td></td>").append(item.hdplace);
		var hddanweiTd = $("<td></td>").append(item.st.stname);
		/**
		<button class="">
							<span class="" aria-hidden="true"></span>
							编辑
						</button>
		*/
		
		
		var ckBtn = $("<button></button>").addClass("btn btn-primary btn-sm ck_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("查看详情");
		//为编辑按钮添加一个自定义的属性，来表示当前员工id
		
		ckBtn.attr("ck-id",item.id);
		
		var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
		//为编辑按钮添加一个自定义的属性，来表示当前员工id
		
		editBtn.attr("edit-id",item.id);
		var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
		
		//为删除按钮添加一个自定义的属性来表示当前删除的员工id
		delBtn.attr("del-id",item.id);
		
		var btnTd = $("<td></td>").append(ckBtn).append(" ").append(editBtn).append(" ").append(delBtn);
		
		//var delBtn = 
		//append方法执行完成以后还是返回原来的元素
		$("<tr></tr>")
		.append(hdIdTd)
			.append(hdNameTd)
			.append(hddanweiTd)
			.append(hddayTd)
			.append(hdplaceTd)
			.append(btnTd)
			.appendTo("#hd_table tbody");
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
$("#hd_add_modal_btn").click(function(){
	//清除表单数据（表单完整重置（表单的数据，表单的样式））
	reset_form("#hdAddModal form");
	//s$("")[0].reset();
	//发送ajax请求，查出部门信息，显示在下拉列表中
	getClubs("#hdAddModal select");
	//弹出模态框
	$("#hdAddModal").modal({
		backdrop:"static"
	});
});



//点击保存，保存员工。
$("#hd_save_btn").click(function(){
	//1、模态框中填写的表单数据提交给服务器进行保存
	
	//2、发送ajax请求保存员工
	$.ajax({
		url:"${APP_PATH}/savehd",
		type:"POST",
		data:$("#hdAddModal form").serialize(),
		success:function(result){
			//alert(result.msg);
				//员工保存成功；
				//1、关闭模态框
				$("#hdAddModal").modal('hide');
				
				//2、来到最后一页，显示刚才保存的数据
				//发送ajax请求显示最后一页数据即可
				to_page(totalRecord);
		}
	});
});

//获得社团信息
function getClubs(ele){
	//清空之前下拉列表的值
	$(ele).empty();
	$.ajax({
		url:"${APP_PATH}/clubs",
		type:"GET",
		success:function(result){
			//{"code":100,"msg":"处理成功！",
				//"extend":{"depts":[{"deptId":1,"deptName":"开发部"},{"deptId":2,"deptName":"测试部"}]}}
			//console.log(result);
			//显示部门信息在下拉列表中
			//$("#empAddModal select").append("")
			$.each(result.extend.clubs,function(){
				var optionEle = $("<option></option>").append(this.stname).attr("value",this.stno);
				optionEle.appendTo(ele);
			});
		}
	});
	
}




//1、我们是按钮创建之前就绑定了click，所以绑定不上。
//1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
//jquery新版没有live，使用on进行替代
$(document).on("click",".edit_btn",function(){
	
	 getClubs("#hdUpdateModal select");
	//查出学生信息，显示员工信息
	gethd($(this).attr("edit-id"));
	
	//3、把员工的id传递给模态框的更新按钮
	$("#hd_update_btn").attr("edit-id",$(this).attr("edit-id"));
	$("#hdUpdateModal").modal({
		backdrop:"static"
	});
});


//获得学生信息，传给更新模态框
function gethd(id){
	reset_form("#hdUpdateModal form");
	$.ajax({
		url:"${APP_PATH}/hd/"+id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var hdData = result.extend.hd;
			$("#hdName_update_input").val(hdData.hdname);
			$("#hdUpdateModal select").val([hdData.hddanwei]);
			$("#hdday_update_input").val(hdData.hdday);
			$("#hdplace_update_input").val(hdData.hdplace);
			$("#hdneirong_update_input").val(hdData.hdneirong);
		}
	});
}


//点击更新，更新员工信息
$("#hd_update_btn").click(function(){
	//2、发送ajax请求保存更新的员工数据
	$.ajax({
		url:"${APP_PATH}/updatehd/"+$(this).attr("edit-id"),
		type:"PUT",
		data:$("#hdUpdateModal form").serialize(),
		success:function(result){
			//alert(result.msg);
			//1、关闭对话框
			$("#hdUpdateModal").modal("hide");
			//2、回到本页面
			to_page(currentPage);
		}
	});
});


//单个删除
$(document).on("click",".delete_btn",function(){
	//1、弹出是否确认删除对话框
	var hdname = $(this).parents("tr").find("td:eq(1)").text();
	var hdId = $(this).attr("del-id");
	//alert($(this).parents("tr").find("td:eq(1)").text());
	if(confirm("确认删除【"+hdname+"】吗？")){
		//确认，发送ajax请求删除即可
		$.ajax({
			url:"${APP_PATH}/deletehd/"+hdId,
			type:"DELETE",
			success:function(result){
				alert(result.msg);
				//回到本页
				to_page(currentPage);
			}
		});
	}
});




//进入详情页面
	$(document).on("click",".ck_btn",function(){
		var hdId = $(this).attr("ck-id");
				window.location.href="ckhd/"+hdId;
	});
	








</script>










</body>
</html>