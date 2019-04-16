<!DOCTYPE html>
<html>
<head>
  <title>活动管理</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<%
pageContext.setAttribute("APP_PATH",request.getContextPath());
%>

<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.0.0.min.js"></script>
<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<form action="savepc" method="post" enctype="multipart/form-data">
	
		名字：<input type="text" name="pname" id="pname"><br>
		社团id<input type="number" name="hId" id="hId"><br>
		
		图片:<input type="file" name="file" id="file"><br>
		所属社团
	
	</form>

<button id="button">upload</button>
<button id="button2">ck</button>


<script type="text/javascript">



$("#button2").click(function(){

	var pname = $("#pname").val();
	alert(pname);
});



$("#button").click(function(){
    var formData = new FormData();
    var pname = $("#pname").val();
    var hId = $("#hId").val();
    formData.append("pname", pname);
    formData.append("hId", hId);
    formData.append("file", $("#file")[0].files[0]);
    var url = "savepcbyhId";
   	$.ajax({
        url:url,
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(data) {
            alert("success" + data);
        },
        error:function(data) {
            alert("error");
        }
    });

});

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





</script>

</body>
</html>