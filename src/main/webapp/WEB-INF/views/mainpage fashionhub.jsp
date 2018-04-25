<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="footer.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			<div class="navbar-header">
				<a class="navbar-brand" href='<c:url value="/home"></c:url>'>FASHIONHUB.COM</a>
			</div>
			<div class="collapse navbar-collapse" id="collapse-example">
			<ul class="nav navbar-nav">
				<li class="active"><a href='<c:url value="/home"></c:url>'>Home</a></li>
				<li><a href='<c:url value="/Aboutus"></c:url>'>About Us</a></li>
				<li><a href='<c:url value="/Contactus"></c:url>'>Contact Us</a></li>
				
				<li><a href='<c:url value="/all/getproducts"></c:url>'>Browse All Products</a></li>
				 <security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href='<c:url value="/admin/getproductform"></c:url>'>Add Product</a></li>
				 </security:authorize>                                             
				<li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown">Select by Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li >
					<!-- Request parameter
					parameter name is 'searchCondition' -->
					   <a href='<c:url value="/all/searchbycategory?searchCondition=GIRLS WEAR"></c:url>'>GIRL's WEAR</a>
					   <a href='<c:url value="/all/searchbycategory?searchCondition=">WRIST WATCHES</c:url>'>MEN's WEAR</a>
					   <a href='<c:url value="/all/searchbycategory?searchCondition=">WRIST WATCHES</c:url>'>WRIST WATCHES</a>
					   <a href='<c:url value="/all/searchbycategory?searchCondition=WOMEN's WEAR"></c:url>'>WOMEN'S FOOTWEAR</a>
					   <a href='<c:url value="/all/searchbycategory?searchCondition=All"></c:url>'>All</a>
                    </li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-left">
				<form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
			</ul>
			 <ul class="nav navbar-nav navbar-right">
			 <c:if test="${pageContext.request.userPrincipal.name==null }">
      <li><a href='<c:url value="/all/registrationform"></c:url>'><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href='<c:url value="/login"></c:url>'><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
   </c:if>
   <c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li><a href='<c:url value="/j_spring_security_logout"></c:url>'>logout</a></li>
			</c:if>
    </ul>
			</div>
		</div>
	</nav>
	
	<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src='<c:url value="/resources/images/ap.jpg" ></c:url>'alt="first slide" height="10px" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO THE FASHION STORE</h1>
                            <p>Here You Can Browse And Buy .Order Now For Your Amazing New Arrivals</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src='<c:url value="/resources/images/fash.jpg"></c:url>' alt="second slide" height="10px" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>The FASHION Store.</h1>
                            <p>Gadgets that can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src='<c:url value="/resources/images/3.jpg" ></c:url>'alt="third slide" height="10px" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>The STYLE You Love</h1>
                            <p>Live Smart,Work Happily And Work Smart!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="forth-slide home-image " src='<c:url value="/resources/images/2.jpg" ></c:url>'alt="fourth slide" height="10px" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Fashion FOr TRAVEL LOVERS</h1>
                            
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->

</div>



	<footer class="myfooter">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<h4 class="title-widget">Contact us</h4>
					<p><b>BPTP princess park<br>
					Sector-86<br>
					Faridabad,Haryana<br>
					INDIA</b></p>
					<!--
					<ul class="social-icon">
					<a href="#" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					<a href="#" class="social"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					<a href="#" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					<a href="#" class="social"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
					<a href="#" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>
					<a href="#" class="social"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</ul>
					-->
					<ul class="social social-circle">
						<li> <a href="#" class="icoFacebook"><i class="fa fa-facebook"></i></a></li>
						<li> <a href="#" class="icoTwitter"> <i class="fa fa-twitter"></i> </a> </li>
						<li> <a href="#" class="icoGoogle"> <i class="fa fa-google-plus"></i> </a> </li>
						<li> <a href="#" class="icoRss"> <i class="fa fa-youtube"></i> </a> </li>
					</ul>
				</div>
				<div class="col-sm-3">
					<h4 class="title-widget">My Account</h4>
					<span class="acount-icon">          
						<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> Wish List</a>
						<a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
			  		<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Profile</a>
						<a href="#"><i class="fa fa-globe" aria-hidden="true"></i> Language</a>           
					</span>
				</div>
				<div class="col-sm-3">
					<h4 class="title-widget">Category</h4>
					<div class="category">
						<a href="#" class="zoom">TV Appliances</a>
						<a href="#" class="zoom">PCs</a>
						<a href="#" class="zoom">Smartphones</a>
						<a href="#" class="zoom">Bluetooth Headsets</a>
						<a href="#" class="zoom">pendrives</a>         
					</div>
				</div>
				<div class="col-sm-3">
					<h4 class="title">Payment Methods</h4>
					<p>EasyPay by using debit card and credit card</p>
					<ul class="payment">
						<li><a href="#"><i class="fa fa-cc-amex zoom" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-credit-card zoom" aria-hidden="true"></i></a></li>            
						<li><a href="#"><i class="fa fa-paypal zoom" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-visa zoom" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			</div>
			<hr>
			
			<div class="row text-center"> © 2018 Fashionhub.com</div>
		</div> <!-- ./container -->
    
    
    
    </footer>
    <div class="myfooter-bottom">
        <div class="container">
            <p class="pull-left"> Copyright ©Fashionhub 2018 All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                	<li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
       <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
</body>
</html>

