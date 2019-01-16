<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
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
			     <table  class="table table-bordered " style="width: 85%">
					<thead>
						<tr>
							<th class="center" style="width: 70px">
								<label>
									<input type="checkbox" class="ace">
									<span class="lbl"></span>
								</label>
							</th>
							<th class="">Status</th>
							<th class="">Status</th>
		
							<th style="width: 190px" class="center">操作</th>
						</tr>
					</thead>
		
					<tbody>
						<tr>
							<td class="center">
								<label>
									<input type="checkbox" class="ace">
									<span class="lbl"></span>
								</label>
							</td>
		
							<td>$45</td>
							<td>$45</td>
							<td>
		
									<button class="btn btn-white btn-purple btn-sm">
										<i class="icon-edit"></i>
									</button>
		
									<button class="btn btn-xs btn-danger btn-white">
										<i class="icon-trash "></i>
									</button>
		
							</td>
						</tr>
					</tbody>
				</table>
			     
			</div>
		</div>
	</div>
</div>
<%@ include file="/common/common-tag.jsp" %>
<%@ include file="/common/common-ace.jsp" %>
</body>
</html>