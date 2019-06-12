<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="shoping.user.asset.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <!-- Header Starts -->
            <header class="header">
            <div class="container">
                <div class="row">
                    <!-- Logo Starts -->
                    <div class="main-logo col-xs-12 col-md-3 col-md-2 col-lg-2 hidden-xs">
                        <a id="link1" runat="server" href="~/user/asset/index.aspx">
							<asp:Image ID="logo" runat="server" class="img-responsive" ImageUrl="pic/logo.png" alt="logo"/>
						</a>
                        
                    </div>
                    <!-- Logo Ends -->
                    <!-- Statistics Starts -->
                    <div class="col-md-7 col-lg-7">
                        <ul class="unstyled bitcoin-stats text-center">
                            <li>
                                <h6>9,450 USD</h6><span>Last trade price</span></li>
                            <li>
                                <h6>+5.26%</h6><span>24 hour price</span></li>
                            <li>
                                <h6>12.820 BTC</h6><span>24 hour volume</span></li>
                            <li>
                                <h6>2,231,775</h6><span>active traders</span></li>
                            <li>
                                <div class="btcwdgt-price" data-bw-theme="light" data-bw-cur="usd"></div>
                                <span>Live Bitcoin price</span>
							</li>
                        </ul>
                    </div>
                    <!-- Statistics Ends -->
                    <!-- User Sign In/Sign Up Starts -->
                    <div class="col-md-3 col-lg-3">
                       <ul class="unstyled user">


                           
                          
                        </ul>
                    </div>
                    <!-- User Sign In/Sign Up Ends -->
                </div>
            </div>
            <!-- Navigation Menu Starts -->
            <nav class="site-navigation navigation" id="site-navigation">
                <div class="container">
                    <div class="site-nav-inner">
                        <!-- Logo For ONLY Mobile display Starts -->
                        
                        <!-- Logo For ONLY Mobile display Ends -->
                        <!-- Toggle Icon for Mobile Starts -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
                        <!-- Toggle Icon for Mobile Ends -->
                        <div class="collapse navbar-collapse navbar-responsive-collapse">
                            <!-- Main Menu Starts -->
                           <ul class="nav navbar-nav">
                                <li class="active"><a id="link4" runat="server" href="index.aspx">Home</a></li>
                                <li><a id="link5" runat="server" href="about.aspx">About Us</a></li>
                                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Services<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a id="link7" runat="server" href="cpshoping.aspx">Crypto Shopping</a></li>
              <li><a id="link8" runat="server" href="trading.aspx">Trading</a></li>
        </ul>
      </li>
         <li><a  id="link6" runat="server" href="contact.aspx">contact</a></li>
                               <li id="dashbord" runat="server" class="dropdown" style="float:right; margin-right:50px; "><a class="dropdown-toggle" data-toggle="dropdown" href="#">User<span class="caret"></span></a>
        <ul class="dropdown-menu" style="text-align:left;border-left:solid 1px #ffffff;border-bottom:solid 1px #ffffff; border-right:solid 1px #ffffff;" >
          <li><a id="A2" runat="server" href="userinfo.aspx">DASHBORD</a></li>
          <li><a id="A3" runat="server" href="logout.aspx" >LOGOUT</a></li>
        </ul>
      </li>


                            </ul>
                            <!-- Main Menu Ends -->
                        </div>
                    </div>
                </div>

            </nav>
            <!-- Navigation Menu Ends -->
        </header>
        <!-- Header Ends -->

      
    <div class="form-container" style="width:50%; margin-left:auto;margin-right: auto; "  >
								
					<div>
						<!-- Section Title Starts -->
						<div class="row text-center">
							<h2 class="title-head hidden-xs">member <span>login</span></h2>
							 <p class="info-form">Send, receive and securely store your coins in your wallet</p>
						</div>
						<!-- Section Title Ends -->
						<!-- Form Starts -->
					
							<!-- Input Field Starts -->
  

    <div class="form-group">
        <asp:TextBox ID="em" runat="server" Text="sarfaraaz.ahmed123@gmail.com" class="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:TextBox ID="passs" runat="server" Text="@pornhub" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:TextBox ID="sub" runat="server" Text="Conform Your Order & Address " class="form-control"></asp:TextBox>
    </div>


    <div class="form-group">
          <asp:TextBox ID="TextBox2" runat="server" TextMode="Url"  placeholder="Product Url"  class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"  placeholder="Enter Buyer Gmail Address" required="" class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox5" runat="server"    placeholder="Enter Address"  class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox6" runat="server"  TextMode="Number" placeholder="Enter Buyer Number"  class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox7" runat="server"  placeholder=""  TextMode="DateTime"  class="form-control"></asp:TextBox>
	</div>
							<!-- Input Field Ends -->
							<!-- Submit Form Button Starts -->
	<div class="form-group">
        <asp:Button ID="button1" runat="server" Text="Buy" class="btn btn-primary"  OnClick="button1_Click"/>
		<p class="text-center">don't have an account ? <a href="/register">register now</a>
			</div>
							<!-- Submit Form Button Ends -->
						<!-- Form Ends -->
					</div>
        </div>
</asp:Content>

