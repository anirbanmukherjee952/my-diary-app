<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:userCreateEntry name="${ name }" pageTitle="Create entry">
	<br>
	<div class="container">
		<c:if test="${ blank!=null }">
			<c:if test="${ blank }">
				<div class="alert alert-danger alert-dismissible">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>Error!</strong> Blank entry.
				</div>
			</c:if>
		</c:if>
		<h1>Create new entry:</h1>
		<p class="lead"><i id="clock"></i></p>
		<form method="post" action="insertEntry">
			<div class="form-group">
				<textarea name="entrycontent" id="editor" rows="20" cols="80" required></textarea>
			</div>
			<input type="submit" class="btn btn-primary btn-block">
		</form>
	</div>
</t:userCreateEntry>
