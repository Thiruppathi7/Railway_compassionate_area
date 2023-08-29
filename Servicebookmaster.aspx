<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Servicebookmaster.aspx.cs" Inherits="Servicebookmaster" %>


<!DOCTYPE html>
<html>
<head>
<title>Railway</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>

<div class="header">

		<div class="container">
			
			<div class="logo">
		<img src="images/logo.png">
			</div>
		  <div class="head-t"></div>
			
						
</div>
  <!---->
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/jquery.vide.min.js"></script>

<!--content-->
<div class="content-top ">
	<div class="container  col-lg-offset-3">
	  <div class="tab-head ">
				<nav class="nav-sidebar"> </nav>
				<div class=" tab-content tab-content-t ">
					<div class="tab-pane active text-style" id="tab1">
						<div class=" con-w3l">
						
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="ServiceBook.aspx"   class="offer-img">
								  <img src="images/of1.png" class="img-responsive" alt=""></a>
<div class="mid-1">
									  <div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="2" data-name="Sunflower Oil" data-summary="summary 2" data-price="9.00" data-quantity="1" data-image="images/of1.png">
                                               Service Book</button>
									  </div>
								  </div>
							  </div>
							</div>
				
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="workarea.aspx"   class="offer-img">
								  <img src="images/of2.png" class="img-responsive" alt=""></a>
<div class="mid-1">
									  <div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="2" data-name="Sunflower Oil" data-summary="summary 2" data-price="9.00" data-quantity="1" data-image="images/of1.png">
                                               WorkArea</button>
									  </div>
								  </div>
							  </div>
							</div>
							<p>&nbsp;</p>
							<div class="clearfix"></div>
					  </div>
					</div>
				
					
				</div>
	  </div>
		
  </div>
  </div>
</div>

<!--content-->
<!--content-->
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner" role="listbox">
        <div class="item">
         <a href="care.html"> <img class="second-slide " src="images/ba1.jpg" alt="Second slide"></a>
         
        </div>
        <div class="item">
          <a href="hold.html"><img class="third-slide " src="images/ba2.jpg" alt="Third slide"></a>
          
        </div>
  </div>
    
</div><!-- /.carousel -->

<!--content-->
	<div class="product">
		<div class="container">
		  <div class=" con-w3l">
		    
					
					
			
							<div class="clearfix"></div>
		  </div>
	  </div>
	</div>
<!--footer-->
<div class="footer">
	<div class="container">
	  <div class="copy-right">
			<p> &copy; </a></p>
	  </div>
  </div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
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
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>
  
  <!-- product -->
			
<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->

				<!-- product -->
			
				<!-- product -->

				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
				<!-- product -->
			
</body>
</html>