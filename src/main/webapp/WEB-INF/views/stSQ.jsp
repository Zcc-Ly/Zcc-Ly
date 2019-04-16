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
        <li class="active">社团申请 </li>
    </ol>

        <table class="table table-striped" id="stus_table">
            <thead>
            <tr>
            	 <th>学生编号 </th>
                <th>学生姓名</th>
                <th>学院专业</th>
                <th>性别</th>
                <th>操作 ${id}</th>
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
	$.ajax({
		url:"${APP_PATH}/getsqStu/"+${id},
		data:
			{"pn":pn,
			"stId":${id}
			},
		 type:"GET",
		 success:function(result){
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
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("同意");
		//为编辑按钮添加一个自定义的属性，来表示当前员工id
		
		editBtn.attr("edit-id",item.id);
		var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("拒绝");
		
		//为删除按钮添加一个自定义的属性来表示当前删除的员工id
		delBtn.attr("del-id",item.id);
		
		var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
		
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



$(document).on("click",".edit_btn",function(){
	$.ajax({
		url:"${APP_PATH}/agreeSq/"+$(this).attr("edit-id"),
		data:
			{
			"stId":${id},
			"sId":$(this).attr("edit-id")
			},
		 type:"POST",
		 success:function(result){
			alert("操作成功成功");
		}
	});
});




</script>

</body>
</html>