<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body class="layui-layout-body">
	<div class="layui-container" style="padding-top: 30px;">  
		<div class="layui-row">
			<form class="layui-form" action="" id="addForm">
			  <div class="layui-form-item">
			    <label class="layui-form-label layui-col-md1">登录名</label>
			    <div class="layui-input-block layui-col-md3" style="margin-left: 80px;margin-right: 48px;">
			      <input type="text" name="username"   autocomplete="off" class="layui-input">
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <label class="layui-form-label layui-col-md1">密码</label>
			    <div class="layui-input-block layui-col-md3" style="margin-left: 80px;margin-right: 48px;">
			      <input type="password" name="password"     autocomplete="off" class="layui-input">
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <label class="layui-form-label layui-col-md1">姓名</label>
			    <div class="layui-input-block layui-col-md3" style="margin-left: 80px;margin-right: 48px;">
			      <input type="text" name="name"     autocomplete="off" class="layui-input">
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <label class="layui-form-label layui-col-md1">邮箱</label>
			    <div class="layui-input-block layui-col-md3" style="margin-left: 80px;margin-right: 48px;">
			      <!-- <input type="text" name="email" required  lay-verify="email"  autocomplete="off" class="layui-input"> -->
			      <input type="text" name="email"   autocomplete="off" class="layui-input">
			    </div>
			  </div>
			  <div class="layui-form-item" style="padding-top: 20px;">
			    <div class="layui-input-block">
			      <div class="layui-btn" lay-submit lay-filter="save" id="save">立即提交</div>
			      <button type="reset" id="reset" class="layui-btn layui-btn-danger">取消</button>
			    </div>
			  </div>
			</form>
		</div>
	</div>
	
<%@ include file="/common/common-ace.jsp" %>
<%@ include file="/common/common-layui.jsp" %>
<script type="text/javascript">
	layui.use(['form','layer'], function(){
		var form=layui.form,layer=layui.layer;
		
		$("#save").on('click',function(){
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			console.log(index) 
			$.ajax({
				method:'post',
				url:'/user/save.do',
				dataType:'json',
				data:$("#addForm").serialize(),
				success:function(res){
					if(res.code==0){
						console.log(res)
						$("#myiframe" , parent.document).contents().find("#do_search").click();
						parent.layer.close(index);
					}else{
						parent.layer.msg("保存失败,请稍后重试");
					
						$("#myiframe" , parent.document).contents().find("#do_search").click();
						parent.layer.close(index);
					}
				},
				error:function(){
					parent.layer.msg("服务器连接超时,请稍后重试");
				}
				
			})
			
		})
		
		/*取消按钮  */
		$("#reset").on('click',function(){
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			$("#myiframe" , parent.document).contents().find("#do_search").click();
			parent.layer.close(index); //再执行关闭   
			
		})
		
	})
	
</script>
</body>
</html>