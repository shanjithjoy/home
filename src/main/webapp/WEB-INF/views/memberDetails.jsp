<%@include file="header.jsp"%>REGISTRATION<%@include file="Header2.jsp"%>
<style>
body {
	background-image: url("<c:url value='/resources/images/d7.jpg'/>");
}

.login {
	background-color: #fff;
	width: 350px;
	height: 275Px;
}

html {
	height: 100%
}

::-moz-selection {
	background: #fe57a1;
	color: #fff;
	text-shadow: none;
}

::selection {
	background: #fe57a1;
	color: #fff;
	text-shadow: none;
}

body {
	background-image: radial-gradient(cover, rgba(92, 100, 111, 1) 0%,
		rgba(31, 35, 40, 1) 100%), url('http://i.minus.com/io97fW9I0NqJq.png')
}

.login {
	background: #DCDCDC;
	border: 1px solid #42464b;
	border-radius: 6px;
	height: 250px;
	padding-top: 10px;
	width: 400px;
	margin: 150px 50px 50px 109px
}

.login h1 {
	background-image: linear-gradient(top, #f1f3f3, #d4dae0);
	border-bottom: 1px solid #a6abaf;
	border-radius: 6px 6px 0 0;
	box-sizing: border-box;
	color: #727678;
	display: block;
	height: 43px;
	font: 600 14px/1 'Open Sans', sans-serif;
	padding-top: 1px;
	margin: 0;
	text-align: left;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2), 0 1px 0 #fff;
}

.register {
	background: #DCDCDC;
	border: 1px solid #42464b;
	border-radius: 6px;
	height: 590px;
	padding-top: 1px;
	width: 400px;
	margin: 100px 50px 50px 10px
}

.register h1 {
	background-image: linear-gradient(top, #f1f3f3, #d4dae0);
	border-bottom: 1px solid #a6abaf;
	border-radius: 6px 6px 0 0;
	box-sizing: border-box;
	color: #727678;
	display: block;
	height: 43px;
	font: 600 14px/1 'Open Sans', sans-serif;
	padding-top: 1px;
	margin: 0;
	text-align: left;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2), 0 1px 0 #fff;
}

input[type="password"], input[type="text"] {
	background: url('http://i.minus.com/ibhqW9Buanohx2.png') center left
		no-repeat, linear-gradient(top, #d6d7d7, #dee0e0);
	border: 1px solid #a1a3a3;
	border-radius: 4px;
	box-shadow: 0 1px #fff;
	box-sizing: border-box;
	color: #696969;
	height: 39px;
	margin: 31px 0 0 29px;
	padding-left: 37px;
	transition: box-shadow 0.3s;
	width: 350px;
}

input[type="password"]:focus, input[type="text"]:focus {
	box-shadow: 0 0 4px 1px rgba(55, 166, 155, 0.3);
	outline: 0;
}

.show-password {
	display: block;
	height: 16px;
	margin: 26px 0 0 28px;
	width: 87px;
}

input[type="checkbox"] {
	cursor: pointer;
	height: 16px;
	opacity: 0;
	position: relative;
	width: 64px;
}

input[type="checkbox"]:checked {
	left: 29px;
	width: 58px;
}

.toggle {
	background: url(http://i.minus.com/ibitS19pe8PVX6.png) no-repeat;
	display: block;
	height: 16px;
	margin-top: -20px;
	width: 87px;
	z-index: -1;
}

input[type="checkbox"]:checked+.toggle {
	background-position: 0 -16px
}

.forgot {
	color: #7f7f7f;
	display: inline-block;
	float: right;
	font: 12px/1 sans-serif;
	left: -19px;
	position: relative;
	text-decoration: none;
	top: 5px;
	transition: color .4s;
}

.forgot:hover {
	color: #3b3b3b
}

input[type="submit"] {
	width: 240px;
	height: 35px;
	display: block;
	font-family: Arial, "Helvetica", sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
	text-decoration: none;
	text-transform: uppercase;
	text-align: center;
	text-shadow: 1px 1px 0px #37a69b;
	padding-top: 6px;
	margin: 29px 0 0 29px;
	position: relative;
	cursor: pointer;
	border: none;
	background-color: #37a69b;
	background-image: linear-gradient(top, #3db0a6, #3111);
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
	box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #497a78, 0px 10px
		5px #999;
}

.shadow {
	background: #000;
	border-radius: 12px 12px 4px 4px;
	box-shadow: 0 0 20px 10px #000;
	height: 12px;
	margin: 30px auto;
	opacity: 0.2;
	width: 290px;
}

input[type="submit"]:active {
	top: 4px;
	right: 8px;
	box-shadow: inset 0px 1px 0px #2ab7ec, 0px 2px 0px 0px #31524d, 5px 5px
		3px #999;
}
</style>
<body>
	<%@include file="Navigaton.jsp"%>
	<div class="content">

		<div class="register">


			<form:form modelAttribute="newuser" accept-charset="utf-8"
				class="form" role="form">

				<form:input path="fname" type="text" pattern="[a-zA-Z\s]{3,30}"
					required="true" title="Size Must Be 3-30 "
					class="form-control input-lg" placeholder="Name" />

				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('fname')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach>

				<form:input path="email"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					title="ex1@ex.com" class="form-control input-lg"
					placeholder="Your Email" />

				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach>

				<form:input path="age" type="text" required="true"
					title='Numberic value is Valid' class="form-control input-lg"
					placeholder="Your Age" pattern="[1-9]{1,3}" />

				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('age')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach>



				<form:input path="phnumber" required="true"
					title="PhoneNumber Starts with Either 7,8 or 9.Length Must Be 10"
					class="form-control input-lg" placeholder="phone number"
					pattern="[789][0-9]{9}" />

				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('phnumber')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach>
	
		<form:input path="username" required="true"
			class="form-control input-lg" placeholder="Username" />
		<br />
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>


		<form:input path="password" type="password" required="true"
			class="form-control input-lg" placeholder="Password"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
		<br />
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>

		<form:input path="cPassword" type="password" required="true"
			class="form-control input-lg" placeholder="Re-type Password"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />

		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('cPassword')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>


		
		<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->


<br>
<center>
		<button style="align: center"
			class="btn btn-md btn-success  signup-btn"
			name="_eventId_submit" type="submit" value="Submit"
			onclick="return validatePassword()">Sign Up</button>


		
			<button class="btn btn-md btn-success  signup-btn"
				type="reset">Reset</button>

		</div>
		</form:form>







		<script type="text/javascript">
			function validatePassword() {
				var password = document.getElementById("password").value;
				var confirmPassword = document.getElementById("cPassword").value;
				if (password != confirmPassword) {
					alert("Passwords does not match.");
					return false;
				}
				return true;
			}
		</script>
		<!-- </body>
</html> -->
		<%@include file="Footerjsp.jsp"%>