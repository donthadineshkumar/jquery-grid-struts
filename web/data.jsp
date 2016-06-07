<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<!DOCTYPE html">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Example View</title>
</head>

<body>

<s:url var="remoteurl" action="emps"/>

	<sjg:grid id="gridtable" caption="Employees" dataType="json"
		href="%{remoteurl}" pager="true" gridModel="emps"
		rowList="10,15,20" rowNum="15" rownumbers="true" >
		<sjg:gridColumn name="name" index="name" title="Name" sortable="true" />
		<sjg:gridColumn name="pos" index="pos" title="Position"
			sortable="false" />
		<sjg:gridColumn name="rank" index="rank" title="Rank" sortable="false"/>
		<sjg:gridColumn name="comments" index="comments" title="Comments" sortable="false" formatter="textAreaFormatter"/>
	</sjg:grid>
	
	<script>
		function textAreaFormatter(value, options, rowObject){
			var textAreaHTML = '<textarea id="'+options.colModel.name+'_'+options.rowId+'" name="'+options.colModel.name+'_'+options.rowId+'"  maxlength='+256+' style="overflow:hidden;width:282px;height:65px;" >'+value+'</textarea>';
 			return textAreaHTML;
		}
	</script>

</body>
</html>