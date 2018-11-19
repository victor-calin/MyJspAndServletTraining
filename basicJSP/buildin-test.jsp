<html>
	<body>
		<h3>JSP Build-In Objects</h3>
			<!-- get the browser -->
			Request user agent: <%= request.getHeader("User-Agent") %>
		<br/><br/>
			<!-- get the language -->
			Request language: <%= request.getLocale() %>
	</body>
</html>