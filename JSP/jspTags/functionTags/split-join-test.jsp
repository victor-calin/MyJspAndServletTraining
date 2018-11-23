<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<body>
		<c:set var="data" value="Onesti,Moinesti,Comanesti,Darmanesti" />
		<c:set var="citiesArray" value="${fn:split(data, ',')}" />
		
		<h3>Split Demo</h3>
			<c:forEach var="tempCity" items="${citiesArray}" >
				${tempCity} <br/>
			</c:forEach>

		<h3>Join Demo</h3>
			<c:set var="joined" value="${fn:join(citiesArray, '-')}" />
				Result of joining: ${joined}
	</body>
</html>
