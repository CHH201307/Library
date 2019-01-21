<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 20px 20px">
	 <div class="layui-btn "  lay-filter="formDemoPane" data-type="reload" id="showTree">显示树形菜单</div>
	 <ul id="treeApp" class="ztree" style="display: none;padding-left: 20px" ></ul>
<%@ include file="/common/common-tag.jsp" %>
<%@ include file="/common/common-layui.jsp" %>
<script type="text/javascript">
	layui.use(['form','layer'], function(){
		var zTreeObjApp;
		var nodes=new Array();
		var form = layui.form,layer = layui.layer;
		//用于加载数据
		function getData(area_id,nodeObj){
			$.ajax({
				async : false,  
		        type: 'POST',  
		        dataType : "json",  
				method:"get",
				url:"/area/list.do?area_id="+area_id,
				success:function(res){
					debugger
					if(res.length>0){
						if(nodeObj!=undefined&&nodeObj.isParent){
							if(nodeObj.open){
								zTreeObjApp.expandNode(nodeObj);
								return;
							}else{
								zTreeObjApp.removeChildNodes(nodeObj);
								var _nodes=new Array();
								for(var i=0;i<res.length;i++){
									var node=new Object();
									var pid=res[i].area_id;
									node.id=res[i].area_id;
									node.name=res[i].area_name;
									if(res[i].is_parent==1){
										node.isParent=true;
									}else{
										node.isParent=false;
									}
									_nodes.push(node);
								}
								zTreeObjApp.addNodes(nodeObj,_nodes);
							}
						}else{
							nodes.length=0;
							for(var i=0;i<res.length;i++){
								var node=new Object();
								var pid=res[i].area_id;
								node.id=res[i].area_id;
								node.name=res[i].area_name;
								node.isParent=true;
								nodes.push(node);
							}
						}
					}
				},
				error:function(){
					alert("aaa")
				}
			})
		}
		
		var setting = {
            check: {
                enable: true,
                chkStyle: "checkbox",
                chkboxType: {"Y": "ps", "N": "s"},
                radioType: "all"
            },
            callback: {
        		onClick: function(event, treeId, treeNode, clickFlag){
        			getData(treeNode.id,treeNode);
        		},
        		onExpand:function(event, treeId, treeNode, clickFlag){
        			getData(treeNode.id,treeNode);
        		}
        	}
        };
		
		
		
		$("#showTree").on("click",function(){
			$("#treeApp").show();
			getData(0);
            zTreeObjApp = $.fn.zTree.init($("#treeApp"), setting,nodes);
			layer.open({
                type: 1
                , title: '分配资源'
                , maxmin: true
                , area: ['450px', '850px']
                , shade: 0
                , content: $('#treeApp')
                , btn: ['保存', '取消']
                , yes: function () {
                    
                }
                , btn2: function () {
                	layer.closeAll();
                	$("#treeApp").hide();
                }
				
			})
			
			
		})
		
		
	
	})
</script>
</body>
</html>