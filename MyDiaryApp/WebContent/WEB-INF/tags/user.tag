<%@tag description="User template" pageEncoding="UTF-8"%>
<%@attribute name="name" required="true"%>
<%@attribute name="pageTitle" required="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<title>${ pageTitle }</title>
	</head>
	<body onload="fetchDiaryEntries()">
		<!-- navigation bar -->
		<div id="header">
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
				<!-- Links -->
				<ul class="navbar-nav">
					<!-- Brand -->
					<li class="nav-item">
						<a class="navbar-brand">MyDiaryApp</a>
					</li>
					<li class="nav-item">
				    	<a class="nav-link" href="dashboard.jsp?page=1">${ sessionScope.user.name }</a>
				   	</li>
				   	<li class="nav-item">
				    	<a class="nav-link" href="create_entry.jsp">Create Entry</a>
				   	</li>
				   	<li class="nav-item">
				     	<a class="nav-link" href="signout">Sign out</a>
				   	</li>
				 </ul>
			</nav>
		</div>
		<jsp:doBody></jsp:doBody>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script src="../js/fetch_entries.js"></script>
	</body>
</html>