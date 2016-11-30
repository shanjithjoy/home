<%@include file="header.jsp"%>
Home
<%@include file="Header2.jsp"%>
<style>
body { 

background-image: url("<c:url value='resources/images/b5.jpg'/>");
color: #fff;

 }

</style>

<body >

<%@include file="Navigaton.jsp"%>

<div  class="container-fluid">
<BR><BR><BR><BR><BR>
  <h1 style="font-family:Edwardian Script ITC;"><b> <CENTER>JO WORLD</CENTER></b></h1>
  <h2 style="text-align:right;">WELCOME TO THE WORLD OF MUSIC</h2>
   <br>
   <div class="col-md-9">
   
 </div>

 <div class="col-md-3">
 
				<ul class="list-group">
					<li class="list-group-item active" ><strong><center>CATEGORIES</strong></center>
						<center></center> 
					</li>
					<c:forEach items="${productmodelList}" var="productModel">
					<li class="list-group-item"><a href="<c:url value="/home/${productModel.category}"/>">
							<center style="color:black">${productModel.category}</center>
					
					</a></li>
					</c:forEach>
					</ul>
					</div>
</div>
<BR><BR><BR><BR>


			
					</body>
					
					<%-- <li class="list-group-item"><a href="<c:url value="/Headphones"/>">
							<center style="color:black">HeadPhones</center>
					</a></li>
					<li class="list-group-item"><a href="<c:url value="/Chargers"/>">
							<center style="color:black">Chargers</center>
					</a></li>
					<li class="list-group-item"><a href="<c:url value="/screen"/>">
							<center style="color:black">ScreenGuards</center>
					</a></li>
					<li class="list-group-item"><a href="<c:url value="/cases"/>">
							<center style="color:black">Cases</center>
					</a></li>
					<li class="list-group-item"><a href="<c:url value="/memory"/>">
							<center style="color:black">MemoryCards</center>
					</a></li>
					<li class="list-group-item"><a href="<c:url value="/cables"/>">
							<center style="color:black">Cables</center>
					</a></li> --%>
	
<!--function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script> -->
  <!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->