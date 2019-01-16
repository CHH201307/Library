<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/common/common-tag.jsp" %>
<%@ include file="/common/common-ace.jsp" %>

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
		<div class="page-content">
			<div class="row" style="margin-top: 10px">
				<form class="form-horizontal" role="form" style="margin-bottom: 18px">
					<div class="form-group">
						<label class="col-sm-1 control-label no-padding-right" for="form-field-1" style="padding-top: 5px">姓名</label>

						<div class="col-sm-3">
							<input type="text" id="form-field-1" class="col-xs-9 col-sm-10" style="padding: 8px 5px"/>
						</div>
						<label class="col-sm-1 control-label no-padding-right" for="form-field-1" style="padding-top: 5px">账号</label>

						<div class="col-sm-3">
							<input type="text" id="form-field-1" class="col-xs-9 col-sm-10" style="padding: 8px 5px"/>
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-sm btn-success pull-right" style="outline: none;"> 
								查 询
							</button>
						</div>
					</div>
			     </form>
			     <hr class="no-margin">
			     <table class="layui-table layui-form">
					  <colgroup>
					    <col width="30">
					    <col width="200">
					    <col>
					  </colgroup>
					  <thead>
					    <tr>
					      <th style="text-align: center;"><input type="checkbox" name="" lay-skin="primary" checked></th>
					      <th>昵称</th>
					      <th>加入时间</th>
					      <th>签名</th>
					    </tr> 
					  </thead>
					  <tbody>
					    <tr>
					      <td><input type="checkbox" name="" lay-skin="primary" checked></td>
					      <td>贤心</td>
					      <td>2016-11-29</td>
					      <td>人生就像是一场修行</td>
					    </tr>
					    <tr>
					      <td><input type="checkbox" name="" lay-skin="primary" checked></td>
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

<%@ include file="/common/common-layui.jsp" %>
</body>
</html>