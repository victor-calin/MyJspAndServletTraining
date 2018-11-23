<html>
	<body>
		<H3>Hello World of Java</H3>
			<%!
				String makeItOver(String data) {
					return data.toLowerCase();
				}
			%>
Lower case "HELLO WORLD": <%= makeItOver("HELLO WORLD") %>

	</body>
</html>

