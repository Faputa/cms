<%@page language="java" pageEncoding="UTF-8" import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%common.cms.CmsFactory cms = (common.cms.CmsFactory)request.getAttribute("cms");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0,minimal-ui"/>
<title>${category.name} - ${site.name}</title>
<link rel="stylesheet" type="text/css" href="${ctx}/themes/web.css"/>
<meta name="keywords" content="${category.metakeywords}"/>
<meta name="description" content="${category.metadescription}"/>
</head>
<body>
<%@include file="include/header.jsp"%>
<div class="w990 clear">
  <div class="gk w240 left">
	<%@include file="include/tree.jsp"%>
  </div>
  <div class="w735 right">
	<div class="listpage">
	  <div class="logo">&nbsp;&nbsp;当前位置：${category.name}</div>
	  <div class="list">
		<dl class="title"><dt>标题</dt><dd>发布日期</dd></dl>
		<c:forEach items="${datalist}" var="d">
		<dl><dt><a target="_blank" href="${ctx}${d.url}">${d.title}</a></dt><dd>${d.releasetime}</dd></dl>
		</c:forEach>
	  </div>
	  <div class="page"><%@include file="include/pageview.jsp"%></div>
	</div>
  </div>
</div>
<%@include file="include/footer.jsp"%>
</body>
</html>