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
                <span class="sr-only">活动详情</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生社团管理系统</a>
        </div>
           <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li ><a href="allNotice.jsp">所有社团</a></li>
                <li ><a href="allhd.jsp">我的社团</a></li>
                <li ><a href="allNotice.jsp">社团活动</a></li>
              	  <li ><a href="allNotice.jsp">所有活动</a></li>
                <li ><a href="allstudent.jsp">校园公告</a></li>
                <li><a href="/index">退出登录</a></li>
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
                         <div id="hiddenDiv" style="display:none;">
                         <button type="button" id="addpitcure_btn" class=" btn btn-primary">添加图片</button>
                      <button type="button" id="deletepitcure_btn" class="btn btn-danger">删除图片</button>
                  
                    </div>
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





</script>








</body>
</html>