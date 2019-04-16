<!DOCTYPE html>
<html>
<head>
  <title>社团管理</title>
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
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="allstudent.jsp">学生管理</a></li>
                <li class="active"><a href="allst.jsp">社团管理</a></li>
                <li><a href="allhd.jsp">活动管理</a></li>
                <li><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="adminIndex.jsp">退出登录</a></li>
            </ul>
        </div>

    </div>
</nav>


<!-- 搭建显示页面 -->
<div class="container theme-showcase" role="main">


  <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">社团管理</li>
     
    </ol>

	<div class="row">
			<div class="col-md-4 col-md-offset-8.5">
				<button class="btn btn-success" id="club_add_modal_btn">新增社团</button>
			</div>
		</div>

        <table class="table table-striped" id="club_table">
            <thead>
            <tr>
                <th>编号</th>
                <th>社团名称</th>
                <th>所属院系</th>
                <th>负责人</th>
                <th>成立时间</th>
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


<!-- 社团修改的模态框 -->
<div class="modal fade" id="clubUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">社团信息编辑</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        <!-- 社团编号 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">社团编号</label>
		    <div class="col-sm-10">
		      <input type="text" name="stno"  disabled="disabled" class="form-control" id="stno_update_input" placeholder="动漫社">
		      <span class="help-block"></span>
		    </div>
		  </div>
        <!-- 社团名字 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">社团名</label>
		    <div class="col-sm-10">
		      <input type="text" name="stname" class="form-control" id="stName_update_input" placeholder="动漫社">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 社团院系 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">所属院系</label>
		    <div class="col-sm-10">
		      <input type="text" name="zgdanwei" class="form-control" id="zgdanwei_update_input" placeholder="计算机系">
		      <span class="help-block"></span>
		    </div>
		  </div>  

		  <!-- 负责人 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">负责人</label>
		    <div class="col-sm-10">
		      <input type="text" name="stfuzeren" class="form-control" id="stfuzeren_update_input" placeholder="张三">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 负责人联系方式 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">负责人联系方式</label>
		    <div class="col-sm-10">
		      <input type="text" name="fuzerenPhone" class="form-control" id="fuzeren_phone_update_input" placeholder="email or phone">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 成立时间 -->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">成立时间</label>
		    <div class="col-sm-10">
		      <input type="text" name="chengliday" class="form-control" id="chengliday_update_input" placeholder="2008-02-10">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 简介 -->
		  	  	    <div class="form-group">
		    <label class="col-sm-2 control-label">社团简介</label>
		    <div class="col-sm-10">
		      <input type="text" name="stjianjie" class="form-control" id="stjianjie_update_input" placeholder="社团简介">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="club_update_btn">更新</button>
      </div>
    </div>
  </div>
</div>






<!-- 社团添加的模态框 -->
<div class="modal fade" id="clubAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">社团添加</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
        <!-- 社团名字 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">社团名</label>
		    <div class="col-sm-10">
		      <input type="text" name="stname" class="form-control" id="stName_add_input" placeholder="动漫社">
		      <span class="help-block"></span>
		    </div>
		  </div>
		 
		  <!-- 社团院系 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">所属院系</label>
		    <div class="col-sm-10">
		      <input type="text" name="zgdanwei" class="form-control" id="zgdanwei_add_input" placeholder="计算机系">
		      <span class="help-block"></span>
		    </div>
		  </div>  

		  <!-- 负责人 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">负责人</label>
		    <div class="col-sm-10">
		      <input type="text" name="stfuzeren" class="form-control" id="stfuzeren_add_input" placeholder="张三">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 负责人联系方式 -->
		    <div class="form-group">
		    <label class="col-sm-2 control-label">负责人联系方式</label>
		    <div class="col-sm-10">
		      <input type="text" name="fuzerenPhone" class="form-control" id="fuzeren_phone_add_input" placeholder="email or phone">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 成立时间 -->
		  	    <div class="form-group">
		    <label class="col-sm-2 control-label">成立时间</label>
		    <div class="col-sm-10">
		      <input type="text" name="chengliday" class="form-control" id="chengliday_add_input" placeholder="2008-02-10">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		  <!-- 简介 -->
		  	  	    <div class="form-group">
		    <label class="col-sm-2 control-label">社团简介</label>
		    <div class="col-sm-10">
		      <input type="" name="stjianjie" class="form-control" id="stjianjie_add_input" placeholder="社团简介">
		      <span class="help-block"></span>
		    </div>
		  </div>  
		
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="club_save_btn">保存</button>
      </div>
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
		url:"${APP_PATH}/st",
		data:"pn="+pn,
		type:"GET",
		success:function(result){
		 build_club_table(result);
		 
		 build_page_info(result);
		 
		 build_page_nav(result);
		}
	});
}





//1、解析并显示社团数据
function build_club_table(result){
	//清空table表格
	$("#club_table tbody").empty();	
	var club = result.extend.pageInfo.list;
	$.each(club,function(index,item){
		var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
		var clubIdTd = $("<td></td>").append(item.stno);
		var clubNameTd = $("<td></td>").append(item.stname);
		var clubfzrenTd = $("<td></td>").append(item.stfuzeren);  
		var clubYXTd =  $("<td></td>").append(item.zgdanwei);
		var clubTimeTd = $("<td></td>").append(item.chengliday);
		/**
		<button class="">
							<span class="" aria-hidden="true"></span>
							编辑
						</button>
		*/
		
		
		var ckBtn = $("<button></button>").addClass("btn btn-primary btn-sm ck_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("查看详情");
		//为查看详情按钮添加一个属性，来表示当前的社团id
		ckBtn.attr("ck-id",item.stno);
		
		
		var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
		//为编辑按钮添加一个自定义的属性，来表示当前社团id
		
		
		editBtn.attr("edit-id",item.stno);
		var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
		
		//为删除按钮添加一个自定义的属性来表示当前删除的社团id
		delBtn.attr("del-id",item.stno);
		
		var btnTd = $("<td></td>").append(ckBtn).append(" ").append(editBtn).append(" ").append(delBtn);
		
		//var delBtn = 
		//append方法执行完成以后还是返回原来的元素
		$("<tr></tr>")
		.append(clubIdTd)
			.append(clubNameTd)
			.append(clubYXTd)
			.append(clubfzrenTd)
			.append(clubTimeTd)
			.append(btnTd)
			.appendTo("#club_table tbody");
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
$("#club_add_modal_btn").click(function(){
	//清除表单数据（表单完整重置（表单的数据，表单的样式））
	reset_form("#clubAddModal form");
	//s$("")[0].reset();
	//发送ajax请求，查出部门信息，显示在下拉列表中
//	getDepts("#stuAddModal select");
	//弹出模态框
	$("#clubAddModal").modal({
		backdrop:"static"
	});
});



//点击保存，保存社团信息。
$("#club_save_btn").click(function(){
			
		//1.先对要提交给服务器的数据进行校验
	//1、先对要提交给服务器的数据进行校验
			//2、发送ajax请求保存员工
			$.ajax({
				url:"${APP_PATH}/saveClub",
				type:"POST",
				data:$("#clubAddModal form").serialize(),
				success:function(result){
					//alert(result.msg);
						$("#clubAddModal").modal('hide');
						to_page(9999);
				}
			});
		});
		
		


//1、我们是按钮创建之前就绑定了click，所以绑定不上。
//1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
//jquery新版没有live，使用on进行替代
$(document).on("click",".edit_btn",function(){
	
	
	//查出社团信息，显示社团信息
	getClub($(this).attr("edit-id"));
	
	//3、把员工的id传递给模态框的更新按钮
	$("#club_update_btn").attr("edit-id",$(this).attr("edit-id"));
	$("#clubUpdateModal").modal({
		backdrop:"static"
	});
});









//获得学生信息，传给更新模态框
function getClub(id){
	reset_form("#clubUpdateModal form");
	$.ajax({
		url:"${APP_PATH}/club/"+id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var clubData = result.extend.club;
			$("#stno_update_input").val(clubData.stno);
			$("#stName_update_input").val(clubData.stname);
			$("#zgdanwei_update_input").val(clubData.zgdanwei);
			$("#stfuzeren_update_input").val(clubData.stfuzeren);
			$("#fuzeren_phone_update_input").val(clubData.fuzerenPhone);
			$("#chengliday_update_input").val(clubData.chengliday);
			$("#stjianjie_update_input").val(clubData.stjianjie);
		}
	});
}



//点击更新，更新员工信息
$("#club_update_btn").click(function(){
	//2、发送ajax请求保存更新的员工数据
	$.ajax({
		url:"${APP_PATH}/updateclub/"+$(this).attr("edit-id"),
		type:"PUT",
		data:$("#clubUpdateModal form").serialize(),
		success:function(result){
			//alert(result.msg);
			//1、关闭对话框
			$("#clubUpdateModal").modal("hide");
			//2、回到本页面
			to_page(currentPage);
		}
	});
});




//单个删除
$(document).on("click",".delete_btn",function(){
	//1、弹出是否确认删除对话框
	var clubName = $(this).parents("tr").find("td:eq(1)").text();
	var sId = $(this).attr("del-id");
	//alert($(this).parents("tr").find("td:eq(1)").text());
	if(confirm("确认删除【"+clubName+"】吗？")){
		//确认，发送ajax请求删除即可
		$.ajax({
			url:"${APP_PATH}/deleteclub/"+sId,
			type:"DELETE",
			success:function(result){
				alert(result.msg);
				//回到本页
				to_page(currentPage);
			}
		});
	}
});



//进入社团详情页面
	$(document).on("click",".ck_btn",function(){
		var stId = $(this).attr("ck-id");
				window.location.href="ckst/"+stId;
	});
	




</script>












</body>
</html>