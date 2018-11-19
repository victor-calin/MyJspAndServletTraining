<html>

	<body>
		<h3>Training Portal</h3>
		
		<!-- read the favorite programming language cookie -->
		<%
			//the default....if there are no cookies
			String favLang = "Java";
	
			//get the cookies from the browser request
			Cookie[] theCookies = request.getCookies();
	
			//find out favorite language cookie
			if(theCookies != null) {
				for(Cookie tempCookie : theCookies) {
					if("myApp.favoriteLanguage".equals(tempCookie.getName())) {
						favLang = tempCookie.getValue();
						break;
					}
				}
			}
		%>

		<!--  now show a personalized page ... use the "favLang" variable -->

		<h4>New Books for <%= favLang %></h4>
		<ul>
			<li>blah blah blah</li>
			<li>blah blah blah</li>
		</ul>

		<h4>Latest News Reports <%= favLang %></h4>
		<ul>
			<li>blah blah blah</li>
			<li>blah blah blah</li>
		</ul>

		<h4>Hot jobs for <%= favLang %></h4>
		<ul>
			<li>blah blah blah</li>
			<li>blah blah blah</li>
		</ul>

		<a href="cookies-personalize-form.html">Personalize this page</a> 

	</body>
</html>