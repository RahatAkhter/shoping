<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="shoping.user.asset.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   <!-- Wrapper Starts -->
    <div class="wrapper">
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
          <li><a id="A1" runat="server" href="Dashbord.aspx">Dashbord</a></li>
           <li><a  id="link6" runat="server" href="contact.aspx">contact</a></li>

                            </ul>
                            <!-- Main Menu Ends -->
                        </div>
                    </div>
                </div>

            </nav>
            <!-- Navigation Menu Ends -->
        </header>
        <!-- Header Ends -->

      
        <div class="container-fluid user-auth">
			<div class="hidden-xs col-sm-4 col-md-4 col-lg-4">
				<!-- Logo Starts -->

				<!-- Logo Ends -->
				<!-- Slider Starts -->
				<div id="carousel-testimonials" class="carousel slide carousel-fade" data-ride="carousel">
					<!-- Indicators Starts -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-testimonials" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-testimonials" data-slide-to="1"></li>
						<li data-target="#carousel-testimonials" data-slide-to="2"></li>
					</ol>
					<!-- Indicators Ends -->
					<!-- Carousel Inner Starts -->
					<div class="carousel-inner">
						<!-- Carousel Item Starts -->
						<div class="item active item-1">
							<div>
								<blockquote>
									<p>This is a realistic program for anyone looking for site to invest. Paid to me regularly, keep up good work!</p>
									<footer><span>Lucy Smith</span>, England</footer>
								</blockquote>
							</div>
						</div>
						<!-- Carousel Item Ends -->
						<!-- Carousel Item Starts -->
						<div class="item item-2">
							<div>
								<blockquote>
									<p>Bitcoin doubled in 7 days. You should not expect anything more. Excellent customer service!</p>
									<footer><span>Slim Hamdi</span>, Tunisia</footer>
								</blockquote>
							</div>
						</div>
						<!-- Carousel Item Ends -->
						<!-- Carousel Item Starts -->
						<div class="item item-3">
							<div>
								<blockquote>
									<p>My family and me want to thank you for helping us find a great opportunity to make money online. Very happy with how things are going!</p>
									<footer><span>Rawia Chniti</span>, Russia</footer>
								</blockquote>
							</div>
						</div>
						<!-- Carousel Item Ends -->
					</div>
					<!-- Carousel Inner Ends -->
				</div>
				<!-- Slider Ends -->
			</div>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
				<!-- Logo Starts -->
				<a class="visible-xs" href="/">
                    <asp:Image ID="Image1" runat="server" class="img-responsive" ImageUrl="asset/pic/logo.png" alt="logo"/>
				</a>
				<!-- Logo Ends -->
				<div class="form-container" style="width:80%; margin-left:4%; margin-right:2%;">
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
                                <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email" placeholder="Enter email" required=""></asp:TextBox>
							</div>
							<!-- Input Field Ends -->
							<!-- Input Field Starts -->
							<div class="form-group">
                                 <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password" placeholder="Enter password" required=""></asp:TextBox>
							</div>
							<!-- Input Field Ends -->
							<!-- Submit Form Button Starts -->
							<div class="form-group">
                                <asp:Button ID="b1" runat="server" Text="LOGIN" class="btn btn-primary" OnClick="b1_Click" />
								<p class="text-center">don't have an account ? <a href="registration.aspx">>register now</a>
							</div>
							<!-- Submit Form Button Ends -->
						
						<!-- Form Ends -->
					</div>
				</div>
				<!-- Copyright Text Starts -->
				<p class="text-center copyright-text">Copyright &copy; 2019. All Rights Reserved</p>
				<!-- Copyright Text Ends -->
			</div>
		</div>
        <!-- JS Files -->
    </div>

    
    </asp:Content>