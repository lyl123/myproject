<%@   page   language = "java"   import = "java.util.*"   pageEncoding = "utf-8" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@   taglib   uri = "http://ckfinder.com"   prefix = "ckfinder"   %>  
<%@   taglib   uri = "http://ckeditor.com"   prefix = "ckeditor"   %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+ "://" +request.getServerName()+ ":" +request.getServerPort()+path+ "/" ;  
%> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/> 
<! DOCTYPE   HTML  PUBLIC   "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
   <head>  
     <base   href = "${ctx}">  
     <title> 首页 </title>  
	<meta   http-equiv = "pragma"   content = "no-cache">  
	<meta   http-equiv = "cache-control"   content = "no-cache">  
	<meta   http-equiv = "expires"   content = "0">  
	</head>  
	<body>  
		<form   action = "${ctx}/getContent"   method = "get">  
		    <textarea   cols = "80"   id = "editor1"   name = "editor1"   rows = "10"></textarea>  
		    <input   type = "submit"   value = "Submit"   />  
		</form>  
		<ckfinder:setupCKEditor   basePath = "/royquickstart/ckfinder/"   editor = "editor1"/>  
		<ckeditor:replace   replace = "editor1"   basePath = "/royquickstart/ckeditor/"/>  
	</body>  
</html>