<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>


<!DOCTYPE html>
<html>
<head>
<title>Railway</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
			<div class="head-t">
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
		<h3 >Register</h3>
		<h4><a href="Default.aspx">Home</a><label>/</label>Register</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->

	<div class="login"><div class="row"><div class="col-md-4">	
        <img src="images/reg img.png" 
            
            style="float:right; position: relative; z-index: auto; top: 0px; right: 0px;" 
            height=300 width=300 align="middle" /></div>
		<div class="col-md-6 main-agileits">
				<div class="form-w3agile form1">
				
					<h3>Register</h3>
					<form id="form1" runat="server">
					<div class="key">
                            <div class="clearfix">
                                <asp:DropDownList ID="DropDownList2" runat="server"  Height="35px" Width="400px" >
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                
                                
                                
                                </asp:DropDownList>
                        </div>
                            </div>
                           
						
						
                            <asp:Label ID="Label1" runat="server" style="float:left;color:Green;" Text="Name"></asp:Label>
                           
                           <div class="clearfix">        
                    </div>
						<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox2" placehoder="Name" name="Name"  required="" 
                                runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="nam" ControlToValidate="TextBox2" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>
					<div class="clearfix"></div>
						</div>
						<asp:Label ID="Label2" runat="server" style="float:left;color:Green;" Text="Email Address"></asp:Label>
                           <div class="clearfix"></div>
						<div class="key">
						
							<i class="fa fa-envelope" aria-hidden="true"></i>
							
                            <asp:TextBox ID="TextBox4" placehoder="Email" name="Email"  required="" 
                                runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
							<div class="clearfix"></div>
					
						</div>
						<asp:Label ID="Label3" runat="server" style="float:left;color:Green;" Text="Mobile No"></asp:Label>
                           <div class="clearfix"></div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox3" placehoder="Mobileno" name="Mobileno"  required="" 
                                runat="server" MaxLength="10" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
							<asp:RegularExpressionValidator ID="mno" runat="server" Display="Dynamic" ControlToValidate="TextBox3" ErrorMessage="Please Enter Numerics" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							<div class="clearfix"></div>
						</div>
						<asp:Label ID="Label4" runat="server" style="float:left;color:Green;" Text="UserName"></asp:Label>
                           <div class="clearfix"></div>
												<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
                            <asp:TextBox ID="TextBox5" placehoder="UserName" name="Username"  required="" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="uname" ControlToValidate="TextBox5" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

							<div class="clearfix"></div>
						</div>
												
							
                            <asp:TextBox ID="TextBox6" value="Password" name="Password" onFocus="this.value = '';" 
                                                        onBlur="if (this.value == '') {this.value = 'ConfirmPassword';}" required="" 
                                                        runat="server" Visible="False"></asp:TextBox>
							
						
						<asp:Button ID="Button1" runat="server" Text="Register" 
                            onclick="Button1_Click" />
                    &nbsp;</form>
				
				</div>
				
	  </div></div>
</div>
<!--footer-->
<div class="footer">
	<div class="container">
	  <div class="copy-right">
	    <div class="footer">
	          <div class="container">
	            <div class="copy-right">
	             	<p> © 2023 Southern Railway Madurai Division. All Rights Reserved | Design by 
                        SAndy...</div>
              </div>
        </div>
	        <!-- //footer-->
            <!-- smooth scrolling -->
            <script type="text/javascript">
		    </script>
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
