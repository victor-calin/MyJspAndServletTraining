<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList, com.luv2code.jsp.tagdemo.Student" %>

<%
	//just create some sample data ... normally provided by MVC
	ArrayList<Student> data = new ArrayList<>();
	
	data.add(new Student("Ion", "Ciobanu", false));
	data.add(new Student("Marius", "Iordache", false));
	data.add(new Student("Maria", "Enache", true));

	pageContext.setAttribute("myStudent", data);
%>

<html>
	<body>
		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>
	
			<c:forEach var="tempStudent" items="${myStudent}">
				<tr>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>
						<c:choose>
							<c:when test="${tempStudent.goldCustomers}"> 
								Special Discount
							</c:when> 
					
							<c:otherwise> 
								Regular
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>