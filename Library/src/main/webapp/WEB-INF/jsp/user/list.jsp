<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>

<body>
<div class="main-container">
	<div class="main-content" style="margin: 0">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs" >
				<ul class="breadcrumb" style="vertical-align: middle;margin-top: 8px">
					<li>
					<i class="ace-icon fa fa-home home-icon"></i>
						<a href="#">用户管理</a>
					</li>
					<li class="active">用户列表</li>
				</ul>
			</div>
		</div>
		<div class="page-content" >
			<div class="row" style="margin-top: 10px">
			     <form class="layui-form"  id="serachForm" target="">
					  <div class="layui-form-item">
					    <label class="layui-form-label">姓名</label>
					    <div class="layui-input-inline ">
					      <input type="text" name="name"  autocomplete="off" class="layui-input layui-col-md4" id="first">
					    </div>
					    
					    <label class="layui-form-label">用户名</label>
					    <div class="layui-input-inline layui-col-md4">
					      <input type="text" name="username"  autocomplete="off" class="layui-input " id="second">
					    </div>
					    <button class="layui-btn "  lay-filter="formDemoPane" id="do_search">搜索</button>
					    
					  </div>
			     </form>
			     <hr class="no-margin">
			     <div class="layui-row">
			     	<div class="layui-col-md4"></div>
			     	<div class="layui-col-md4"></div>
			     	<div class="layui-col-md2 layui-col-md-offset8" style="text-align: right;">
			     		<button class="layui-btn layui-btn-sm layui-btn-normal " style="margin-top: 10px;">添加</button>
			     		<button class="layui-btn layui-btn-sm layui-btn-danger " style="margin-top: 10px;" id="deleteBatch">批量删除</button>
			     	</div>
			     	
			     </div>
		     	 <div class="layui-row layui-col-md10 layui-form" >
		     	 	<table class="layui-hide" id="listTable" lay-filter="tableOne"></table>
		     	 	<script type="text/html" id="barDemo">
  						<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  						<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  						<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
					</script>
			     
		     	 </div>
			     
			</div>
		</div>
	</div>
</div>
<%@ include file="/common/common-ace.jsp" %>
<%@ include file="/common/common-tag.jsp" %>
<%@ include file="/common/common-layui.jsp" %>
<script type="text/javascript">
	
	layui.use(['table','form','layer'], function(){
		var form = layui.form,layer = layui.layer,table = layui.table;
		  
		var aa= table.render({
		    elem: '#listTable',
		    method:'post',
		    url:'/user/list.do',
		    cols: [[
		      {type:'checkbox'}
		      ,{field:'user_id', width:80, title: 'ID', sort: true}
		      ,{field:'username', width:80, title: '用户名'}
		      ,{field:'name', width:80, title: '姓名'}
		      ,{field:'opt', width:280, title: '操作',toolbar: '#barDemo',align:'center'}
		    ]],
		    page: true,
		    id: 'listTable',
		    where:{
		    	'name': $('#first').val(),
                'username': $('#secnod').val()
		    }
		});
		$('#do_search').on('click', function () {
            // 搜索条件
            table.reload('listTable', {
                method: 'post',
                where: {
                    key:{
                    	'name': $('#first').val(),
                        'username': $('#second').val()
                    }
                }
                , page: {
                    curr: 1
                }
            });
        });
			
		  
     });
	
	window.onload=function (){
		parent.changeFrame();

	}
</script>
</body>
</html>