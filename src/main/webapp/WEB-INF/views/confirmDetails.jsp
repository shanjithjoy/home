<%@include file="header.jsp"%>Register-Conformation<%@include file="Header2.jsp"%>
<style>
.content{
margin-bottom:400px;
}
	body
	{
	background-image: url("<c:url value='/resources/images/d7.jpg'/>");
	
	}
	.login
{
background-color:#fff;
width:350px;
height:275Px;
}
  

html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }
body { background-image: radial-gradient( cover, rgba(92,100,111,1) 0%,rgba(31,35,40,1) 100%), url('http://i.minus.com/io97fW9I0NqJq.png') }
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
  text-shadow: 0 -1px 0 rgba(0,0,0,0.2), 0 1px 0 #fff;
}
.register {
  background: #DCDCDC;
  border: 1px solid #42464b;
  border-radius: 6px;
  height: 570px;
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
  text-shadow: 0 -1px 0 rgba(0,0,0,0.2), 0 1px 0 #fff;
}
input[type="password"], input[type="text"] 
{
  background: url('http://i.minus.com/ibhqW9Buanohx2.png') center left no-repeat, linear-gradient(top, #d6d7d7, #dee0e0);
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
input[type="checkbox"]:checked + .toggle { background-position: 0 -16px }
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
.forgot:hover { color: #3b3b3b }
input[type="submit"] {
  width:240px;
  height:35px;
  display:block;
  font-family:Arial, "Helvetica", sans-serif;
  font-size:16px;
  font-weight:bold;
  color:#fff;
  text-decoration:none;
  text-transform:uppercase;
  text-align:center;
  text-shadow:1px 1px 0px #37a69b;
  padding-top:6px;
  margin: 29px 0 0 29px;
  position:relative;
  cursor:pointer;
  border: none;  
  background-color: #37a69b;
  background-image: linear-gradient(top,#3db0a6,#3111);
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius:5px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #497a78, 0px 10px 5px #999;
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
  top:4px;
  right:8px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 2px 0px 0px #31524d, 5px 5px 3px #999;
}

</style>
<body>
<%@include file="Navigaton.jsp"%>
<br>
<br>
		<div class="content">

		<div class="register">
			<h2 style="text-align:center">REGISTRATION CONFORMATION</h2>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
			<br />
			<div class="view col-md-4">
			<form:form modelAttribute="newuser">
				<form:label path="fname">Name:</form:label>${newuser.fname}
					<br />
				<br />
				<form:label path="email">Email Id:</form:label>${newuser.email}
					<br />
				<br />
				<form:label path="age">Age :</form:label>${newuser.age}
					<br />
				<br />
				<form:label path="username">Username:</form:label>${newuser.username}
					<br />
				<br />
			<!--  	<sf:label path="password">Password	:</sf:label>${newuser.password}
					<br />
				<br />
				<sf:label path="cPassword">Conformation password:</sf:label>${newuser.cPassword}
					<br />
				<br /> -->
				<form:label path="phnumber">Phonenumber:</form:label>${newuser.phnumber}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</div>
	</div>
<%@include file="Footerjsp.jsp"%>