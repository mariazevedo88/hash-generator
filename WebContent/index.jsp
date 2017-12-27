<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
	<head>
	  <!-- BASICS -->
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	  <title>HashGenerator</title>
	  <meta name="description" content="">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap-theme.css">
		<link rel="stylesheet" href="css/style.css">
		<!-- Plugins CSS -->
        <link rel="stylesheet" href="css/font-awesome.css">
		<!-- skin -->
		<link rel="stylesheet" href="css/default.css">
	</head>
	<body>
		<section id="header" class="appear"></section>
		<div class="navbar navbar-fixed-top skrollable skrollable-between" role="navigation" data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:60px; background-color:rgba(0,0,0,1);">
		    <div class="container">
		      <div class="navbar-header">
		        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="fa fa-bars color-white"></span>
				</button>
		        <h1><a class="navbar-brand skrollable skrollable-between" href="index.html" data-0="line-height:90px;" data-300="line-height:50px;"
		        style="line-height: 80px">Hash Generator</a></h1>
		      </div>
		      <div class="navbar-collapse collapse">
		        <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
		          <li class="active"><a href="#">Home</a></li>
		          <li><a href="#section-about">About</a></li>
		        </ul>
		      </div>
		      <!--/.navbar-collapse -->
		    </div>
		</div>

		<section class="featured">
			<div class="container">
				<div class="row">
			        <div class="col-md-6 col-md-offset-4">
			          <div class="cform">
				           <form action="generate" method="POST" role="form" class="hash-form">
					           <div class="form-group">
	                				<label for="name">String</label>
									<input class="" type="text" name="hash" />
									<button type="submit" class="btn btn-theme center">Generate</button>
								</div>
						   </form>
					  </div>
		          </div>
		        </div>
		    </div>
		</section>
		
		<c:if test="${not empty hashGenerated}">
			<section id="section-services" class="section pad-bot30 bg-white">
			    <div class="container">
			    	<div class="row mar-bot40">
			      		<div class="col-md-12">
			          		<div class="align-center">
			          			<h4 class="text-bold">Your Hash Code Generated:</h4>
		            			<p>${hashGenerated}</p>
		           				<form action="clean" method="POST" role="form" class="hash-form">
		           					<button type="submit" class="btn btn-theme center">Clean code</button>
		           				</form>
			          		</div>
			        	</div>
			       </div>
			    </div>
			</section>
		</c:if>
		<!-- about -->
	    <section id="section-about" class="section appear clearfix">
	    	<div class="container">
	
		    	<div class="row mar-bot40">
		        	<div class="col-md-offset-3 col-md-6">
		          		<div class="section-header">
		            		<h2 class="section-heading animated" data-animation="bounceInUp">Developed by</h2>
		            		<p>Mariana Azevedo</p>
		          		</div>
		        	</div>
		      	</div>
		      	
		      	<div class="row mar-bot40">
		        	<div class="col-md-offset-3 col-md-6">
		          		<div class="section-header">
		            		<a href="https://mariazevedo88.github.io/"><i class="fa fa-github fa-2x"></i></a>
		          		</div>
		        	</div>
		      	</div>
	    	</div>
	  	</section>
	  	<!-- /about -->
		
		<section id="footer" class="section footer">
			<div class="row align-center copyright">
		        <div class="col-sm-12">
		          <p>Copyright &copy; Hash Generator, 2017</p>
		        </div>
	        </div>
	    </section>
		
	  <script src="js/jquery.min.js"></script>
  	  <script src="js/bootstrap.min.js"></script>
	</body>
</html>