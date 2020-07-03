<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:user name="${name}" pageTitle="Dashboard">
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
			<form class="form-inline">
				<div class="form-group">
					<label class="mr-sm-1"><b>From:</b></label>
			 		<input type="date" class="form-control mr-sm-2" id="start">
			 	</div>
			 	<div class="form-group">
			 		<label class="mr-sm-1"><b>Upto:</b></label>
			 		<input type="date" class="form-control mr-sm-2" id="end">
			 	</div>
			 	<div class="form-group">
			  		<button type="submit" class="btn btn-primary mr-sm-2" onclick="fetchFilteredDiaryEntries()">Filter</button>
			  	</div>
			  	<div class="form-group">
			  		<button type="submit" class="btn btn-primary" onclick="">Reset</button>
			  	</div>
			</form>
			</div>
			<div class="col-2"></div>
		</div>
		<br>
		<hr>
		<!-- render diary entries -->
		<div id="entries"></div>
	</div>
</t:user>