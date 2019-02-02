<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="clientpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Holiday a Travel Category Flat Bootstrap responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Holiday Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- gallery -->
<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- //gallery -->
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
	<!-- banner -->
	<div class="banner">
		<!-- banner-info -->
		<div class="banner-info">
			<div class="container">
				<div class="agileinfo-logo">
					<h1><a href="#"><img src="images/logo.png" alt="" /></a></h1>
				</div>
			
			</div>
		</div>
        <br />
		<!-- //banner-info -->
		<!-- modal -->
		<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header"> 
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title">Holiday</h4>
					</div> 
					<div class="modal-body">
						<div class="agileits-w3layouts-info">
							<img src="images/g9.jpg" alt="" />
							<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //modal -->
		<!--header-->
		<div class="header">
			<div class="container">	
				<div class="heade-grids">
					<div class="w3l-header-left">
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<!--navbar-header-->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav navbar-right">
									<li><a href="#home" class="active">Singapore</a></li>
									<li><a href="#about" class="scroll">Malaysia</a></li>
									<li><a href="#services" class="scroll">Thailand</a></li>
									
								</ul>	
								<div class="clearfix"> </div>	
							</div>
						</nav>
					</div>
					<div class="w3l-header-right">
						<div class="search">
							<%--<form action="#" method="post">
								<input type="search" name="Search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
								<input type="submit" value=" ">
							</form>--%>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--//header-->
	</div>
	
	<div class="gallery" id="home">
		<div class="container">
			<h3>Singapore Gallery</h3>
			<div class=" w3-agileits-gallery">

                <asp:Repeater  ID="rptsingapore" runat="server" >
                <ItemTemplate>
                <div class="gallery-small gallery-middle">
					    <div class="gallery-bg-text effect-3">
						    <a href="#" class="big"><img src='images/<%#eval("photos")  %>' alt="" title='<%#eval ("name") %>' /></a>
					    </div>
				    </div>
                     <%--<div class="gallery-small gallery-middle">
					    <div class="gallery-small-text effect-3">
						    <a href="#"><img src='images/<%#eval("photos")  %>' alt="" title="Donec dictum nisi sit amet ex volutpat interdum."/></a>
					    </div>
				    </div>--%>
                </ItemTemplate>
               
                </asp:Repeater>

				
				
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
    <br />
    <br />

    <div class="gallery" id="about">
		<div class="container">
			<h3>Malaysia Gallery</h3>
			<div class=" w3-agileits-gallery">
            <asp:Repeater ID="rptmalaysia" runat="server" >
                <ItemTemplate>
                <div class="gallery-bg">
					    <div class="gallery-bg-text effect-2">
						    <a href="#" class="big"><img src='images/<%#eval("photos")  %>' alt="" title='<%#eval ("name") %>' /></a>
					    </div>
				    </div>
                     <%--<div class="gallery-small gallery-middle">
					    <div class="gallery-small-text effect-3">
						    <a href="#"><img src='images/<%#eval("photos")  %>' alt="" title="Donec dictum nisi sit amet ex volutpat interdum."/></a>
					    </div>
				    </div>--%>
                </ItemTemplate>
               
                </asp:Repeater>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

    <br />
    <br />
    <div class="gallery" id="services">
		<div class="container">
			<h3>Thailand Gallery</h3>
			<div class=" w3-agileits-gallery">
             <asp:Repeater ID="rptthailand" runat="server" >
                <ItemTemplate>
                <div class="gallery-bg">
					    <div class="gallery-bg-text effect-2">
						    <a href="#" class="big"><img src='images/<%#eval("photos")  %>' alt="" title='<%#eval ("name") %>' /></a>
					    </div>
				    </div>
                     <%--<div class="gallery-small gallery-middle">
					    <div class="gallery-small-text effect-3">
						    <a href="#"><img src='images/<%#eval("photos")  %>' alt="" title="Donec dictum nisi sit amet ex volutpat interdum."/></a>
					    </div>
				    </div>--%>
                </ItemTemplate>
               
                </asp:Repeater>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/simple-lightbox.js"></script>
	<script>
	    $(function () {
	        var $gallery = $('.gallery a').simpleLightbox();

	        $gallery.on('show.simplelightbox', function () {
	            console.log('Requested for showing');
	        })
					.on('shown.simplelightbox', function () {
					    console.log('Shown');
					})
					.on('close.simplelightbox', function () {
					    console.log('Requested for closing');
					})
					.on('closed.simplelightbox', function () {
					    console.log('Closed');
					})
					.on('change.simplelightbox', function () {
					    console.log('Requested for change');
					})
					.on('next.simplelightbox', function () {
					    console.log('Requested for next');
					})
					.on('prev.simplelightbox', function () {
					    console.log('Requested for prev');
					})
					.on('nextImageLoaded.simplelightbox', function () {
					    console.log('Next image loaded');
					})
					.on('prevImageLoaded.simplelightbox', function () {
					    console.log('Prev image loaded');
					})
					.on('changed.simplelightbox', function () {
					    console.log('Image changed');
					})
					.on('nextDone.simplelightbox', function () {
					    console.log('Image changed to next');
					})
					.on('prevDone.simplelightbox', function () {
					    console.log('Image changed to prev');
					})
					.on('error.simplelightbox', function (e) {
					    console.log('No image found, go to the next/prev');
					    console.log(e);
					});
	    });
	</script>
	
	<div class="footer">
		<div class="container">
			<div class="agileinfo-social-grids">
				<h4>We are social</h4>
				<div class="border"></div>
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
					<li><a href="#"><i class="fa fa-vk"></i></a></li>
				</ul>
			</div>
			<div class="copyright">
				<p>© 2016 Holiday. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<script src="js/jarallax.js"></script>
	<script type="text/javascript">
	    /* init Jarallax */
	    $('.jarallax').jarallax({
	        speed: 0.5,
	        imgWidth: 1366,
	        imgHeight: 768
	    })
	</script>
	<script src="js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
<!-- //here ends scrolling icon -->

    </div>
    </form>
</body>
</html>
