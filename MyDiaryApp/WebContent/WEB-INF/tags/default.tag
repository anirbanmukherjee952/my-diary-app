<%@tag description="Default page template" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<title>MyDiaryApp</title>
	</head>
	<body>
		<!-- navigation bar -->
		<div id="header">
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
				<ul class="navbar-nav">
					<!-- Brand -->
					<li>
						<a class="navbar-brand">MyDiaryApp</a>
					</li>
					<!-- Links -->
					<li class="nav-item">
				    	<a class="nav-link" href="index.jsp">Home</a>
				    </li>
				    <li class="navbar-nav">
				    	<a class="nav-item nav-link" href="#">About</a>
				    </li>
				    <li class="navbar-nav">
				    	<a class="nav-item nav-link" href="#">Contact us</a>
				    </li>
				</ul>
				<!-- Sign in form -->
				<div class="justify-content-end">
				  	<form class="form-inline" method="post" action="authenticateUser">
					 	<input type="email" class="form-control form-control-sm mr-sm-2" placeholder="Enter email" name="email" required>
					 	<input type="password" class="form-control form-control-sm mr-sm-2" placeholder="Enter password" name="password" required>
					  	<button type="submit" class="btn btn-primary btn-sm">Sign in</button>
					</form>
				</div>
			</nav>
		</div>
		<jsp:doBody></jsp:doBody>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>

