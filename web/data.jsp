<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Example View</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/jqgrid_js/ui.jqgrid.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/jqgrid_js/ui.jqgrid-bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/jqgrid_js/ui.jqgrid-bootstrap-ui.css">
<script src="<%=request.getContextPath()%>/jqgrid_js/jquery-1.11.0.min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/jqgrid_js/jquery.jqGrid.min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/jqgrid_js/grid.locale-en.js" charset="utf-8"></script>
<script>
	
	
	$(document).ready(function(){
		drawGrid(columnTitles,columnAttributes,'<%=request.getContextPath()%>/emps.action');
	});
	
	
columnAttributes = [
            		{name:'name',index:'name',jsonmap:'name', width:130, sortable:false},
            		{name:'pos',index:'pos',jsonmap:'pos', width:130, sortable:false},
            		{name:'rank',index:'rank',jsonmap:'rank', width:130, sortable:false},
            	];
            	
columnTitles = ['Name',
	        		'Position',
	        		'Rank'
	        	];
	        	
	        	<%-- alert($.ajax({url:'<%=request.getContextPath()%>/emps.action', data: {format: 'json'}, dataType: 'jsonp', type: 'GET'})); --%>	
	        	
	        	
	        	function drawGrid(columnTitles,columnAttributes,url)
	            {
	        		
	        		//var data={"emps":[{"name":"Dinesh","pos":"SE","rank":1},{"name":"Ravi","pos":"SSE","rank":2},{"name":"Santosh","pos":"TL","rank":3}]};
	         	   $('#empsjqgrid').jqGrid({ 
	        			width:500, 
	        			height: 300, 
	        			url:'<%=request.getContextPath()%>/emps.action',
	            	    datatype: 'json',
	        			colNames: columnTitles, 
	        			colModel: columnAttributes, 
	        			pager: '#empsjqgridPager', 
	        			pginput:true,
	            	    pgbuttons:true,
	            	    pagerpos:'left',
	            	    recordpos:'center',
	            	    rowNum:10,
	            	   // datastr: data,
	            	    loadonce: true,
	            	    regional : 'en',
	            	    viewrecords: true,
	            	    autoencode:true,
	            	 	jsonReader: { 
			      			repeatitems: false,
			      			userdata :"emps" 
	      				},
	      	    frozen:false,
	      	    caption: "Employees"
	        			
	        		}); 
	            }

</script>

</head>

<body>

Hell
		<div>
	           	<table id=empsjqgrid></table>
				<div id="empsjqgridPager"></div>
		</div>
</body>
</html>