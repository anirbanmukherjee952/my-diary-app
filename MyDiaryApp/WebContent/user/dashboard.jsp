<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:user name="${name}" pageTitle="Dashboard">
	<div class="container">
		<br>
		<hr>
		<!-- render diary entries -->
		<div id="entries"></div>
	</div>
</t:user>