<!DOCTYPE html>
<html>
<head>
  <title>活动详情</title>
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
                <li ><a href="allhd.jsp">活动管理</a></li>
                <li ><a href="allNotice.jsp"> 公告管理</a></li>
                <li><a href="/index">返回学生版主页</a></li>
            </ul>
        </div>

    </div>
</nav>



<!-- 图片删除的模态框 -->
<div class="modal fade" id="pcdeleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">删除图片</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">图片名</label>
		    <div class="col-sm-4">
		    	<!-- 图片id  -->
		      <select class="form-control" name="id" id="deletename" >
		      </select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="pc_delete_btn">删除</button>
      </div>
    </div>
  </div>
</div>




<!-- 图片新增的模态框 -->
<div class="modal fade" id="pcAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加图片</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal"  method="post" enctype="multipart/form-data">
        
        
        <!-- 图片名 -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">图片名</label>
		    <div class="col-sm-10">
		      <input type="text" name="pname" class="form-control" id="pname" placeholder="活动名">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  
		   <!-- 文件-->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">文件</label>
		    <div class="col-sm-10">
		      <input type="file" name="file" id="file">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="pc_add_btn">添加</button>
      </div>
    </div>
  </div>
</div>















<div class="container theme-showcase" role="main">

    <ol class="breadcrumb" style="margin-top: 100px">
        <li class="active">活动详情</li>
    </ol>
    
    <div class="container">

        <div class="page-header">
            <h1 id="hdname">
            </h1>
        </div>
        
        <!-- 活动详情 -->
        <div class="col-md-8">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">活动详情</h3>
                </div>
                <div class="panel-body" id="hdneirong">
                </div>
            </div>
			

		<!-- 活动举办社团 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">活动举办社团</h3>
                </div>
                <div class="panel-body" id="hddanwei">
                </div>
            </div>
            
            <!-- 活动时间 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">活动时间</h3>
                </div>
                <div class="panel-body" id="hdtime">
                </div>
            </div>
            
            
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">活动地点</h3>
                </div>
                <div class="panel-body" id="hdplace">
                </div>
            </div>
            
            
            
            
            
            
            
            
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">活动图片
                     <button type="button" id="addpitcure_btn">添加图片</button>
                      <button type="button" id="deletepitcure_btn">删除图片</button>
                    </h3>  
                    
                </div>
                <div class="panel-body" id="hdpitcure">
              
                <table id="hd">
		<tbody>	
			<tr></tr>
		</tbody>                
                </table>
                </div>
            </div>





        </div>
    </div>

  
</div>

<script type="text/javascript">



$(function(){
	//去首页
	getClub(${id});
	gethdPc("#hdpitcure");
});




function gethdPc(ele){
	$.ajax({
		url:"${APP_PATH}/hdPcbyhId/"+${id},
		type:"GET",
		success:function(result){
			$.each(result.extend.hdpc,function(){
				var s = "../static/image/"+this.site;
				var d="1";
				var c="<img src='"
				var e=c+s+"' width='500'/>"
				var pitcure=$("<tbody></tbody>").append(e);
				var pname =this.pname;
				$("#hd").append(pitcure).append(pname);
			});
		}
	});
	
}

function getpc(id){
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



function getClub(id){
	$.ajax({
		url:"${APP_PATH}/hd/"+ id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var hdData = result.extend.hd;

			 $("#hdneirong").append(hdData.hdneirong);
			 $("#hdname").append(hdData.hdname);
			 $("#hddanwei").append(hdData.st.stname);
			 $("#hdtime").append(hdData.hdday);
			 $("#hdplace").append(hdData.hdplace);
		}
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
$("#addpitcure_btn").click(function(){
	//清除表单数据（表单完整重置（表单的数据，表单的样式））
	reset_form("#pcAddModal form");
	//s$("")[0].reset();
	//发送ajax请求，查出部门信息，显示在下拉列表中
	//弹出模态框
	$("#pcAddModal").modal({
		backdrop:"static"
	});
});


//添加图片
$("#pc_add_btn").click(function(){
		var formData = new FormData();
	    var pname = $("#pname").val();
	    var hId = ${id};
	    formData.append("pname", pname);
	    formData.append("hId", hId);
	    formData.append("file", $("#file")[0].files[0]);
	  	$.ajax({
	        url:"${APP_PATH}/savepcbyhId",
	        type:"post",
	        data:formData,
	        processData:false,
	        contentType:false,
	        success:function(data) {
	            alert("success" + data);
	        },
	        error:function(data) {
	        	$("#pcAddModal").modal('hide');
	        	alert("添加成功");
	        }
	    });

});





//点击删除按钮弹出模态框。
$("#deletepitcure_btn").click(function(){
	//清除表单数据（表单完整重置（表单的数据，表单的样式））
	reset_form("#pcdeleteModal form");
	//1、查出部门信息，并显示部门列表
	getpc("#pcdeleteModal select");
	//s$("")[0].reset();
	//发送ajax请求，查出部门信息，显示在下拉列表中
	//弹出模态框
	$("#pcdeleteModal").modal({
		backdrop:"static"
	});
});




//查出所有的部门信息并显示在下拉列表中
function getpc(ele){
	//清空之前下拉列表的值
	$(ele).empty();
	$.ajax({
		url:"${APP_PATH}/hdPcbyhId/"+${id},
		type:"GET",
		success:function(result){
			//{"code":100,"msg":"处理成功！",
				//"extend":{"depts":[{"deptId":1,"deptName":"开发部"},{"deptId":2,"deptName":"测试部"}]}}
			//console.log(result);
			//显示部门信息在下拉列表中
			//$("#empAddModal select").append("")
			$.each(result.extend.hdpc,function(){
				var optionEle = $("<option></option>").append(this.pname).attr("value",this.id);
				optionEle.appendTo(ele);
			});
		}
	});
	
}

//确定删除
$("#pc_delete_btn").click(function(){
	//1、弹出是否确认删除对话框
	var pcname= $("#deletename :selected").text();
	var pcid= $("#deletename option:selected").val();
	//获取select标签选中的option中的value的值。
	
	if(confirm("确认删除【"+pcname+"】吗？")){
		//确认，发送ajax请求删除即可
		$.ajax({
			url:"${APP_PATH}/deletepc/"+pcid,
			type:"DELETE",
			success:function(result){
				alert(result.msg);
				//刷新当前页面
				window.location.reload();
			}
		});
	}
});




</script>


</body>
</html>