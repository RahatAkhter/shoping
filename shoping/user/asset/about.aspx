<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="shoping.user.asset.about" %>
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


                       <li class="sign-up"><asp:Button ID="REGISTRATION" runat="server" Text="REGISTRATION" class="btn btn-primary" OnClick="REGISTRATION_Click"  style="border:solid 1px #00ff21; background:#000000; color:#0d3c2b;  "/></li>
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

<!-- Banner Area Starts -->
        <section class="banner-area">
            <div class="banner-overlay">
                <div class="banner-text text-center">
                    <div class="container">
                        <!-- Section Title Starts -->
                        <div class="row text-center">
                            <div class="col-xs-12">
                                <!-- Title Starts -->
                                <h2 class="title-head">About <span>Us</span></h2>
                                <!-- Title Ends -->
                                <hr>
                                <!-- Breadcrumb Starts -->
                                <ul class="breadcrumb">
                                     <li class="active"><a id="A1" runat="server" href="asset/index.aspx">Home</a></li>
                                    <li>About</li>
                                </ul>
                                <!-- Breadcrumb Ends -->
                            </div>
                        </div>
                        <!-- Section Title Ends -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Banner Area Starts -->
        <!-- About Section Starts -->
        <section class="about-page">
            <div class="container">
                <!-- Section Content Starts -->
                <div class="row about-content">
                    <!-- Image Starts -->
                    <div class="col-sm-12 col-md-5 col-lg-6 text-center">
                         <asp:Image ID="Image4" runat="server" ImageUrl="pic/about-us.png" class="img-responsive img-about-us" />
                    
                    </div>
                    <!-- Image Ends -->
                    <!-- Content Starts -->
                    <div class="col-sm-12 col-md-7 col-lg-6">
                        <div class="feature-about">
                            <h3 class="title-about">WE ARE CoinGrace</h3>
                            <p>A place for everyone who wants to simply buy and sell Bitcoins. Deposit funds using your Visa/MasterCard or bank transfer. Instant buy/sell of Bitcoins at fair price is guaranteed. Nothing extra. Join over 700,000 users from all over the world satisfied with our services.</p>
                        </div>
                        <div class="feature-about">
                            <h3 class="title-about risk-title"><i class="fa fa-warning"></i> risk warning</h3>
                            <p>Bitcoin is not legal tender and is not backed by any government. Accounts and value balances are not subject to any government backed deposit insurance or any other government protections.</p>
                        </div>

                    </div>
                    <!-- Content Ends -->

                </div>
                <!-- Section Content Ends -->
            </div><!--/ Content row end -->
        </section>
        <!-- About Section Ends -->
        <!-- Facts Section Starts -->
        <section class="facts">
            <!-- Container Starts -->
            <div class="container">
                <!-- Fact Badges Starts -->
                <div class="row text-center facts-content">
                    <div class="text-center heading-facts">
                        <h2>CoinGrace<span> numbers</span></h2>
                        <p>leading cryptocurrency exchange since day one of Bitcoin distribution</p>
                    </div>
                    <!-- Fact Badge Item Starts -->
                    <div class="col-xs-12 col-md-3 col-sm-6 fact">
                        <h3>$77.45B</h3>
                        <h4>market cap</h4>
                    </div>
                    <!-- Fact Badge Item Ends -->
                    <!-- Fact Badge Item Starts -->
                    <div class="col-xs-12 col-md-3 col-sm-6 fact fact-clear">
                        <h3>165k</h3>
                        <h4>daily transactions</h4>
                    </div>
                    <!-- Fact Badge Item Ends -->
                    <!-- Fact Badge Item Starts -->
                    <div class="col-xs-12 col-md-3 col-sm-6 fact">
                        <h3>1726</h3>
                        <h4>active accounts</h4>
                    </div>
                    <!-- Fact Badge Item Ends -->
                    <!-- Fact Badge Item Starts -->
                    <div class="col-xs-12 col-md-3 col-sm-6">
                        <h3>17</h3>
                        <h4>years on the market</h4>
                    </div>
                    <!-- Fact Badge Item Ends -->

                </div>
                <!-- Fact Badges Ends -->
            </div>
            <!-- Container Ends -->
        </section>
        <!-- facts Section Ends -->
        <!-- Team Section Starts -->

        <!-- Call To Action Section Starts -->
        <section class="call-action-all">
            <div class="call-action-all-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <!-- Call To Action Text Starts -->
                            <div class="action-text">
                                <h2>Get Started Today With Bitcoin</h2>
                                <p class="lead">Open account for free and start trading Bitcoins!</p>
                            </div>
                            <center>
                                <asp:TextBox ID="TextBox2" runat="server" class="form__field" placeholder="Your E-Mail Address"></asp:TextBox>
                                <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Send"></asp:Button></center>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call To Action Section Ends -->
</asp:Content>