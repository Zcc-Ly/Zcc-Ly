<!DOCTYPE html>
<html>
<head>
  <title>所有社团</title>
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
                <span class="sr-only">所有社团</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
    	
        </div>
           <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="allst_Stu.jsp">所有社团</a></li>
                <li ><a href="toStust">我的社团</a></li>
                 <li ><a href="sthdforStu.jsp">社团活动</a></li>
              	  <li ><a href="allhdforStu.jsp">所有活动</a></li>
                <li ><a href="allNoticeforStu.jsp">校园公告</a></li>
                <li><a href="adminIndex.jsp">退出登录</a></li>
            </ul>
        </div>

    </div>
</nav>

<!-- 搭建显示页面 -->
<div class="container theme-showcase" role="main">


  <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">所有社团</li>
     
    </ol>


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
		
		
		var editBtn = $("<button></button>").addClass("btn btn-success btn-sm edit_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("加入社团");
		//为编辑按钮添加一个自定义的属性，来表示当前员工id

		editBtn.attr("edit-id",item.stno);
		
		var btnTd = $("<td></td>").append(ckBtn).append(" ").append(editBtn);
		
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

//进入社团详情页面
$(document).on("click",".ck_btn",function(){
	var stId = $(this).attr("ck-id");
			window.location.href="ckstforStu/"+stId;
});




//点击更新，更新员工信息
$(document).on("click",".edit_btn",function(){
	//2、发送ajax请求保存更新的员工数据
	var SQ_stId = $(this).attr("edit-id");
	var sqsId = ${stu.id };
	var hdname = $(this).parents("tr").find("td:eq(1)").text();
	if(confirm("确认申请加入【"+hdname+"】吗？")){
		$.ajax({
			url:"${APP_PATH}/sq",
			type:"GET",
			data:{
				"sqStid":SQ_stId,
				"sqsId":sqsId
			},
			success:function(result){
				//alert(result.msg);
				//1、关闭对话框
				alert(result.msg);
			}
		});
		
	}

});





</script>









</body>
</html>