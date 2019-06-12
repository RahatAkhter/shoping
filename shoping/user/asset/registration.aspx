<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="shoping.user.asset.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
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
                       <ul class="unstyled user">


                            <li class="sign-up"><asp:Button ID="REGISTRATION" runat="server" Text="REGISTRATION" class="btn btn-primary" OnClick="REGISTRATION_Click" style="border:solid 1px #00ff21; background:#000000;        color:#0d3c2b;  "/></li>
                           <li class="sign-up"><asp:Button ID="SINGIN" runat="server" Text="SINGIN" class="btn btn-primary" OnClick="SINGIN_Click" /></li>

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
    <!-- Wrapper Starts -->
    <div class="wrapper">
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
									<footer><span>Dalel Boubaker</span>, Russia</footer>
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

				<!-- Logo Ends -->
				<div class="form-container" style="width:70%; margin-left:4%; margin-right:4%;  ">
					<div>
						<!-- Section Title Starts -->
						<div class="row text-center">
							<h2 class="title-head hidden-xs">get <span>started</span></h2>
							 <p class="info-form">Open account for free and start trading Bitcoins now!</p>
						</div>
						<!-- Section Title Ends -->
						<!-- Form Starts -->
						
							<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="firstname" runat="server"  placeholder="First Name" required="" class="form-control"></asp:TextBox>
							</div>
							
							<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="lastname" runat="server"  placeholder="Last Name" required="" class="form-control" ></asp:TextBox>
							</div>							<!-- Input Field Ends -->
							<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="username" runat="server"  placeholder="Username Name" required="" class="form-control"></asp:TextBox>
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="email" runat="server"   placeholder="Email Address" required="" class="form-control" TextMode="Email"></asp:TextBox>
                               

							</div>
                            <div class="form-group">
                                <asp:TextBox ID="contact" runat="server"  placeholder="Contact" required="" class="form-control" TextMode="Number"></asp:TextBox>
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="password" runat="server"  placeholder="Pssword" TextMode="Password" required="" class="form-control"></asp:TextBox>
							</div>
							<!-- Input Field Ends -->
							<!-- Submit Form Button Starts -->
							<div class="form-group">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="create account"  OnClick="Button1_Click"/>
								<p class="text-center">already have an account ? <a href="/login">Login</a>
							</div>
                       
							<!-- Submit Form Button Ends -->
						
					</div>
				</div>
				<!-- Copyright Text Starts -->
				<p class="text-center copyright-text">Copyright &copy; 2019. All Rights Reserved</p>
				<!-- Copyright Text Ends -->
			</div>
		</div>
    <!-- JS Files -->
     
        </div>
    </div>
    <!-- Wrapper Ends -->
</asp:Content>