<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Alogin.aspx.cs" Inherits="Alogin" Title="Untitled Page" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   


	<div class="clearfix"></div>
	<!-- //testimonials -->
<div class="newsletter-tp" style="margin-top:200px;">

<div class="container" >
    <div class="row vertical-offset-100"><div class="col-md-5 ">	<img src="images/admin.png" style="float:right;" /></div>
    	<div class="col-md-4 ">
    	
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Admin Login</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" >
                    <fieldset>
			    	  	<div class="form-group">
                              <asp:TextBox class="form-control" ID="email" runat="server" placeholder="Username"></asp:TextBox>
			    		   
			    		</div>
			    		<div class="form-group">
                            <asp:TextBox class="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
			    			
			    		</div>
			    	
			    	    
                        <asp:Button class="btn btn-lg btn-success btn-block" ID="Button1" 
                            runat="server" Text="Login" onclick="Button1_Click" />
			    		
			    	</fieldset>
			      	</form>
			    </div>
		
			</div>
		</div>
	</div>
</div>
</div>
</asp:content>

