<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<html>
	<body>

		<!-- Step 1: Create HTML form -->
		<form action="todoList.jsp">
			Add new item: 
			<input type="text" name="theItem" />
			<input type="submit" value="Submit" />
		</form>

		<!-- Step 2: Add new item to "To Do" -->
		<%
			//get the TO DO items from the session
			List<String> items = (List<String>) session.getAttribute("myToDoList");
	
			//if the TO DO items doesn't exist, then create a new one
			if(items == null) {
				items = new ArrayList<String>();
				session.setAttribute("myToDoList", items);
			}
	
			//see if there is a form data to add
			String theItem = request.getParameter("theItem");
			if((theItem != null) && (!theItem.trim().equals(""))) {
				items.add(theItem);
			}
		%>
		
		<hr>
		<!-- Step 3: Display all "To Do" items from session -->
		<b>To Do List Items: </b> <br/>

		<ol>
			<%
				for(String temp : items) {
					out.println("<li>" + temp + "</li>");
				}
			%>
		</ol>

	</body>
</html>