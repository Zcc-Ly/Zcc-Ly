<!DOCTYPE html>
<html>
<head>
  <title>社团详情</title>
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
        <li class="active">社团详情</li>
    </ol>
    
    <div class="container">

        <div class="page-header">
            <h1 id="stname">
            </h1>
        </div>
        
        <!-- 社团详情 -->
        <div class="col-md-8">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">社团简介</h3>
                </div>
                <div class="panel-body" id="stjianjie">
                </div>
            </div>
			
			

		<!-- 社团负责人 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">社团负责人</h3>
                </div>
                <div class="panel-body" id="stfuzeren">
                </div>
            </div>
            
            <!-- 所属院系 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">所属院系</h3>
                </div>
                <div class="panel-body" id="zgdanwei">
                </div>
            </div>
            
            <!-- 社团人员 -->
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">社团人员
                    <button id="ckry"> 查看</button>
                    </h3>
                </div>
            </div>
            
            
            
            
            
            
            
            
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">社团图片
                     <button type="button" id="addpitcure_btn">添加图片</button>
                      <button type="button" id="deletepitcure_btn">删除图片</button>
                    </h3>  
                    
                </div>
                <div class="panel-body" id="stpitcure">
              
                <table id="st">
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
	getstPc("#stpitcure");
});


//获取社团信息
function getClub(id){
	$.ajax({
		url:"${APP_PATH}/club/"+ id,
		type:"GET",
		success:function(result){
			//console.log(result);
			var stData = result.extend.club;

			 $("#stjianjie").append(stData.stjianjie);
			 $("#stname").append(stData.stname);
			 $("#stfuzeren").append(stData.stfuzeren).append(" ,联系方式：").append(stData.fuzerenPhone);
			 $("#zgdanwei").append(stData.zgdanwei);
		}
	});
	
}









function getstPc(ele){
	$.ajax({
		url:"${APP_PATH}/hdPcbysId/"+${id},
		type:"GET",
		success:function(result){
			$.each(result.extend.hdpc,function(){
				var s = "../static/image/"+this.site;
				var d="1";
				var c="<img src='"
				var e=c+s+"' width='500'/>"
				var pitcure=$("<tbody></tbody>").append(e);
				var pname =this.pname;
				$("#st").append(pitcure).append(pname);
			});
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
	    var sId = ${id};
	    formData.append("pname", pname);
	    formData.append("sId", sId);
	    formData.append("file", $("#file")[0].files[0]);
	  	$.ajax({
	        url:"${APP_PATH}/savepcbysId",
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


//查出所有的图片信息并显示在下拉列表中
function getpc(ele){
	//清空之前下拉列表的值
	$(ele).empty();
	$.ajax({
		url:"${APP_PATH}/hdPcbysId/"+${id},
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


//进入社团成员页面
$("#ckry").click(function(){
			window.location.href="ckstPerson/"+${id};
});




</script>

























</body>
</html>