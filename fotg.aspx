<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fotg.aspx.cs" Inherits="fotg" %>

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
<a href="offer.html"></a>
<div class="header">

		<div class="container">
			
			<div class="logo">
			  <img src="images/logo.png">
			</div>
			<div class="head-t" style="">
				<ul class="card"><li></li>
					<li><a href="Login.aspx" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
					<li><a href="Reg.aspx" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					<li></li>
				</ul>	
			</div>
			
						
</div>
  <!---->
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Login</h3>
		<h4><a href="Default.aspx">Home</a><label>/</label>Login</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login"><div class="row">
			<div class="col-md-4">	<img src="images/LoginImg.png" style="float:right;" /></div>
<div class=" col-md-6 main-agileits">
		<div class="form-w3agile">
					<h3>Forget Password?</h3>
					<form action="#" runat="server" method="post">
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox1" value="Regid" name="Regid" onFocus="this.value = '';"  required="" runat="server"></asp:TextBox>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox2" value="Name" name="Name" onFocus="this.value = '';"  required=""  runat="server"></asp:TextBox>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox3" value="Emailid" name="Email id" onFocus="this.value = '';"  required="" runat="server"></asp:TextBox>
							<div class="clearfix"></div>
						</div>
							
							
                            <asp:TextBox ID="TextBox4" value="Userkey" name="Userkey" 
                                    onFocus="this.value = '';"  required="" runat="server" Visible="False"></asp:TextBox>
							
						
                    <asp:Button ID="Button1" runat="server" Text="Forgot Password" onclick="Button1_Click" />
					</form>
				</div>
				<div class="forg">
					<a href="fotg.aspx" class="forg-left">Forgot Password</a>
					<a href="Reg.aspx" class="forg-right">Register</a>
				<div class="clearfix"></div>
				</div>
	  </div></div>
</div>
<!--footer-->
<div class="footer">
	<div class="container">
	  <div class="copy-right">
			<p>&copy; 2018 Southern Railway Madurai Division. All Rights Reserved | Design by <a href="http://w3layouts.com/"> Railnet Software Solutions </a></p>
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

</body>
</html>