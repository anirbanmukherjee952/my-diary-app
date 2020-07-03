<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:default>
	<br>
	<br>
	<div class="container">
		<!-- Flash message -->
		<div>
			<c:if test="${requestScope.success ne null}">
				<c:choose>
					<c:when test="${requestScope.success}">
						<div class="alert alert-success alert-dismissible">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  <strong>Success!</strong> Sign in to continue.
						</div>
					</c:when>
					<c:otherwise>
						<div class="alert alert-danger alert-dismissible">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  <strong>Failed!</strong> <c:out value="${requestScope.message}"></c:out>
						</div>
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>
		<!-- Sign up form -->
		<h1>Not an user? Join us...</h1>
		<form method="post" action="registerUser" style="padding-top:50px">
			<div class="form-group">
				<label><b>Name:</b></label>
				<input type="text" class="form-control" placeholder="Enter your name" name="name" required/>
			</div>
			<div class="form-group">
				<label><b>Email:</b></label>
				<input type="email" class="form-control" placeholder="Enter your email" name="email" required/>
			</div>
			<div class="form-group">
				<label><b>Password:</b></label>
				<input type="password" class="form-control" placeholder="Enter new password" name="password" required/>
			</div>
			<div class="form-group">
				<label><b>Confirm password:</b></label>
				<input type="password" class="form-control" placeholder="Enter again password" name="confirmedPassword" required/>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary btn-block" value="Sign up">
			</div>
		</form>
	</div>
</t:default>