<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>

<body >
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
				<!-- <form class="form-horizontal" role="form" style="margin-bottom: 18px">
					<div class="form-group">
						<label class="col-sm-1 control-label no-padding-right" for="form-field-1" style="padding-top: 5px">姓名</label>

						<div class="col-sm-3">
							<input type="text" id="form-field-1" class="col-xs-9 col-sm-10" style="padding: 8px 5px"/>
						</div>
						<label class="col-sm-1 control-label no-padding-right" for="form-field-1" style="padding-top: 5px">账号</label>

						<div class="col-sm-3">
							<input type="text" id="form-field-1" class="col-xs-9 col-sm-10" style="padding: 8px 5px" />
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-sm btn-success pull-right" style="outline: none;" > 
								查 询
							</button>
						</div>
					</div>
			     </form> -->
			     <form class="layui-form" action="home2.do" id="serachForm">
					  <div class="layui-form-item">
					    <label class="layui-form-label">姓名</label>
					    <div class="layui-input-inline ">
					      <input type="text" name="name"  autocomplete="off" class="layui-input layui-col-md4" >
					    </div>
					    
					    <label class="layui-form-label">用户名</label>
					    <div class="layui-input-inline layui-col-md4">
					      <input type="text" name="username"  autocomplete="off" class="layui-input ">
					    </div>
					    <button class="layui-btn " lay-submit="" lay-filter="formDemoPane" >搜索</button>
					    
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
		     	 <div class="layui-row">
		     		<table class="layui-table layui-form " style="width: 83.5%">
					  <colgroup>
					    <col width="30">
					    <col width="200">
					    <col>
					  </colgroup>
					  <thead>
					    <tr>
					      <th style="text-align: center;"><input type="checkbox" name="" lay-skin="primary"  lay-filter="test"></th>
					      <th>昵称</th>
					      <th>加入时间</th>
					      <th>签名</th>
					    </tr> 
					  </thead>
					  <tbody>
					    <tr>
					      <td><input type="checkbox" name="check" lay-skin="primary" value="1"></td>
					      <td>贤心</td>
					      <td>2016-11-29</td>
					      <td>人生就像是一场修行</td>
					    </tr>
					    <tr>
					      <td><input type="checkbox" name="check" lay-skin="primary" value="2"></td>
					      <td>许闲心</td>
					      <td>2016-11-28</td>
					      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
					    </tr>
					    <tr>
					      <td><input type="checkbox" name="check" lay-skin="primary" value="2"></td>
					      <td>许闲心</td>
					      <td>2016-11-28</td>
					      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
					    </tr>
					    
					    <tr>
					      <td><input type="checkbox" name="check" lay-skin="primary" value="2"></td>
					      <td>许闲心</td>
					      <td>2016-11-28</td>
					      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
					    </tr>
					  </tbody>
				  	</table>
			     
		     	 </div>
			     
			</div>
		</div>
	</div>
</div>
<%@ include file="/common/common-ace.jsp" %>
<%@ include file="/common/common-tag.jsp" %>
<%@ include file="/common/common-layui.jsp" %>
<script type="text/javascript">
    var arr=[];
	var form = layui.form,layer = layui.layer;
	form.on('checkbox(test)', function (data) {
        $("input[type='checkbox']").each(function () {
            this.checked = data.elem.checked;
        });
        form.render('checkbox');
    });   
	$("#deleteBatch").click(function(){
		arr.length=0;
		$("input[name='check']:checked").each(function () {
            arr.push($(this).val());
        });
		if(arr.length==0){
			parent.layer.msg("至少选择一条数据",{offset: "350px"})
			return;
		}else{
			parent.layer.load(0,{offset: "350px"});
			//此处演示关闭
			setTimeout(function(){
			  parent.layer.closeAll('loading');
			}, 1000);
		}
		
		
		
	})
	
	form.on('submit()', function(data){
	   console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
	   console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
	   console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
	});
</script>
</body>
</html>