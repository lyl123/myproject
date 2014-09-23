<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<title>av</title>
<%@ include file="/WEB-INF/views/av/default.jsp"%>
</head>
<style>
body {
  padding-top: 70px;
}
html, body {
  overflow-x: hidden;
}
</style>
<body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AV热播</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
			  <div class="form-group">
			    <input type="text" class="form-control" placeholder="Search">
			  </div>
			  <button type="submit" class="btn btn-default">Submit</button>
		 </form>
        </div><!-- /.nav-collapse -->
        
      </div><!-- /.container -->
    </div>
    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>火辣大片</h1>
            <p></p>
          </div>
          <div class="row">
	          <c:forEach items="${avUserInfo.content}" var="avUserInfo">
	           <div class="col-6 col-sm-6 col-lg-4">
	              <h2><a href="#">${avUserInfo.avName}</a></h2>
	              <p><a href="#"><img src="${ctx}/static/images/image/${avUserInfo.avId}.jpg" height="200" width="200" /></a> </p>
	              <p><a class="btn btn-default" href="#" role="button">点播</a></p>
	            </div>
			</c:forEach>
          </div><!--/row-->      
          <div class="row text-center">
		       <tags:pagination page="${avUserInfo}" paginationSize="5"/>
		 </div>
        </div><!--/span-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas col-xs-12" id="sidebar" role="navigation">
          <div class="list-group">
            <a href="#" class="list-group-item active text-center">最新大片</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
          </div>
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>© Company 2014|作者:罗永亮</p>
      </footer>

    </div>
</body>
</html>