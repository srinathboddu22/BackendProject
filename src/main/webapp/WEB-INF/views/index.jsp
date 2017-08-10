<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
      <link rel="stylesheet" href="<c:url value="/resources/assets/css/home.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/register.css"/>">
     <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    
    
    
</head>


<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <p class="navbar-text">Compare </p>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a href="admin">Admin </a></li>
                    
                    <li role="presentation"><a href="register">Register </a></li>
                    <li role="presentation"><a href="login.html">Login </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="carousel slide" data-ride="carousel" id="carousel-1">
        <div class="carousel-inner" role="listbox">
            <div class="item"><img src="<c:url value="/resources/assets/img/blackberry-q10-specs_TECHCRIBNG.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/MacBook-Alternative1.jpg"/>" alt="Slide Image"/>"></div>
            <div class="item active"><img src="<c:url value="/resources/assets/img/which-router-is-suitable-for-bsnl-broadband.png" />" alt="Slide Image"></div>
        </div>
        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
            <a class="right carousel-control" href="#carousel-1" role="button" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2" class="active"></li>
        </ol>
    </div>
    <div class="well">
        <div class="row">
            <div class="col-sm-4 col-xs-8 text-col-1"><i class="fa fa-product-hunt icons"></i>
                <p>We provide products based on Performance,Quality,Normal catagories to give you the best product you desire.</p>
            </div>
            <div class="col-sm-4 col-xs-8"><i class="glyphicon glyphicon-user icons"></i>
                <p>If you want access a product you need to be a full fledged user.That can only be possible if you register and sign-in properly</p>
            </div>
            <div class="col-sm-4 col-xs-8"><i class="glyphicon glyphicon-barcode icons"></i>
                <p>We will send a barcode for you.When product arrived at your place please check your product with the barcode that has provided for you</p>
            </div>
        </div>
    </div>
    <footer>
        <div class="row footer-row">
            <div class="col-md-12">
                <div>
                    <div class="col-sm-4 col-xs-8">
                        <h1>Description </h1>
                        <p>Our main moto is to give you the best product.We are working very hard to analyse the product s to provide you easily choose our product</p>
                    </div>
                    <div class="col-sm-4 col-xs-8">
                        <h1>Contact Us</h1>
                        <p>Phone -Number:9022332584 Mail-id:naveen.chilak@gmail.com Git-Hub:www.github/naveen00123</p>
                    </div>
                    <div class="col-sm-4 col-xs-8 footer-icons"><i class="fa fa-facebook-square footer-icons"></i><i class="fa fa-instagram footer-icons"></i><i class="fa fa-pinterest-square footer-icons"></i></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 footer-row-2">
                <div>
                    <div class="col-md-12">
                        <p>@Naveen Designs</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
</body>
</html>