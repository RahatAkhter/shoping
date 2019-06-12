<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="shoping.user.asset.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
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


                            <li class="sign-up"><asp:Button ID="Button6" runat="server"  Text="REGISTRATION"  class="btn btn-primary"   OnClick="button6_Click"     style="border:solid 1px #00ff21; background:#000000; color:#0d3c2b;  "/></li>
                            <li class="sign-up"><asp:Button ID="Button5" runat="server" Text="SINGIN" class="btn btn-primary" OnClick="button5_Click"/></li>

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
                                <li class="active"><a id="link4" runat="server" href="~/user/asset/index.aspx">Home</a></li>
                                <li><a id="link5" runat="server" href="about.aspx">About Us</a></li>
                                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Services<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a id="link7" runat="server" href="cpshoping.aspx">Crypto Shopping</a></li>
          <li><a id="link8" runat="server" href="trading.aspx">Trading</a></li>

        </ul>
      </li>
         <li><a  id="link6" runat="server" href="contact.aspx">contact</a></li>

                                
    <li id="Button4" runat="server" class="dropdown" style="float:right; margin-right:50px; "><a class="dropdown-toggle" data-toggle="dropdown" href="#">User<span class="caret"></span></a>
        <ul class="dropdown-menu" style="text-align:left;border-left:solid 1px #ffffff;border-bottom:solid 1px #ffffff; border-right:solid 1px #ffffff;" >
          <li><a id="A1" runat="server" href="userinfo.aspx">DASHBORD</a></li>
          <li><a id="A2" runat="server" href="logout.aspx" >LOGOUT</a></li>
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


    <!-- Slider Starts -->
        <div id="main-slide" class="carousel slide carousel-fade" data-ride="carousel">
            <!-- Indicators Starts -->
            <ol class="carousel-indicators visible-lg visible-md">
                <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                <li data-target="#main-slide" data-slide-to="1"></li>
                <li data-target="#main-slide" data-slide-to="2"></li>
            </ol>
            <!-- Indicators Ends -->
            <!-- Carousel Inner Starts -->
            <div class="carousel-inner">
                <!-- Carousel Item Starts -->
                <div class="item active bg-parallax item-1">
                    <div class="slider-content">
                        <div class="container">
                            <div class="slider-text text-center">
                                <h3 class="slide-title"><span>Secure</span> and <span>Easy Way</span><br/> To Bitcoin</h3>
                               <!--  <p>
                                    <a href="about.html" class="slider btn btn-primary">Learn more</a>
                                </p> -->
                            </div>
                            <center><center>
            <asp:TextBox ID="TextBox1" runat="server" class="form__field" placeholder="Your E-Mail Address"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Send"></asp:Button>
        </center>
                        </div>
                    </div>
                </div>
                <!-- Carousel Item Ends -->
                <!-- Carousel Item Starts -->
                <div class="item bg-parallax item-2">
                    <div class="slider-content">
                        <div class="col-md-12">
                            <div class="container">
                                <div class="slider-text text-center">
                                    <h3 class="slide-title"><span>Bitcoin</span> Exchange <br/>You can <span>Trust</span> </h3>
                                   <!--  <p>
                                        <a href="pricing.html" class="slider btn btn-primary">our prices</a>
                                    </p> -->
                                </div>
                                <center><center>
            <asp:TextBox ID="TextBox2" runat="server" class="form__field" placeholder="Your E-Mail Address"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Send"></asp:Button>
        </center>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Carousel Item Ends -->
            </div>
            <!-- Carousel Inner Ends -->
            <!-- Carousel Controlers Starts -->
            <a class="left carousel-control" href="http://slimhamdi.net/bayya/index.html#main-slide" data-slide="prev">
                <span><i class="fa fa-angle-left"></i></span>
            </a>
            <a class="right carousel-control" href="http://slimhamdi.net/bayya/index.html#main-slide" data-slide="next">
                <span><i class="fa fa-angle-right"></i></span>
            </a>
            <!-- Carousel Controlers Ends -->
        </div>
        <!-- Slider Ends -->
        <!-- Features Section Starts -->
        <section class="features">
            <div class="container">
                <div class="row features-row">
                    <!-- Feature Box Starts -->
                    <div class="feature-box col-md-4 col-sm-12">
                        <span class="feature-icon">
                            <asp:Image ID="Image1" runat="server" ImageUrl="pic/icon/download-bitcoin.png" /> 
                        </span>
                        <div class="feature-box-content">
                            <h3>Download Bitcoin Wallet</h3>
                            <p>Get it on PC or Mobile to create, send and receive bitcoins.</p>
                        </div>
                    </div>
                    <!-- Feature Box Ends -->
                    <!-- Feature Box Starts -->
                    <div class="feature-box two col-md-4 col-sm-12">
                        <span class="feature-icon">
                            <asp:Image ID="Image2" runat="server" ImageUrl="pic/icon/add-bitcoins.png" />
                        </span>
                        <div class="feature-box-content">
                            <h3>Add coins to your Wallet</h3>
                            <p>Add bitcoins you’ve created or exchanged via credit card.</p>
                        </div>
                    </div>
                    <!-- Feature Box Ends -->
                    <!-- Feature Box Starts -->
                    <div class="feature-box three col-md-4 col-sm-12">
                        <span class="feature-icon">
                            <asp:Image ID="Image3" runat="server" ImageUrl="pic/icon/buy-sell-bitcoins.png" />

                        </span>

                        <div class="feature-box-content">
                            <h3>Buy/Sell with Wallet</h3>
                            <p>Enter receiver's address, specify the amount and send.</p>
                        </div>
                    </div>
                    <!-- Feature Box Ends -->
                </div>
            </div>
        </section>
        <!-- Features Section Ends -->
        <!-- About Section Starts -->
        <section class="about-us">
            <div class="container">
                <!-- Section Title Starts -->
                <div class="row text-center">
                    <h2 class="title-head">About <span>Us</span></h2>
                    <div class="title-head-subtitle">
                        <p>a commercial website that lists wallets, exchanges and other bitcoin related info</p>
                    </div>
                </div>
                <!-- Section Title Ends -->
                <!-- Section Content Starts -->
                <div class="row about-content">
                    <!-- Image Starts -->
                    <div class="col-sm-12 col-md-5 col-lg-6 text-center">
                        <asp:Image ID="Image4" runat="server" ImageUrl="pic/about-us.png" class="img-responsive img-about-us" />
                    </div>
                    <!-- Image Ends -->
                    <!-- Content Starts -->
                    <div class="col-sm-12 col-md-7 col-lg-6">
                        <h3 class="title-about">WE ARE CoinGrace</h3>
                        <p class="about-text">A place for everyone who wants to simply buy and sell Bitcoins. Deposit funds using your Visa/MasterCard or bank transfer. Instant buy/sell of Bitcoins at fair price is guaranteed. Nothing extra. Join over 700,000 users from all over the world satisfied with our services.</p>
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#menu1">Our Mission</a></li>
                            <li><a data-toggle="tab" href="#menu2">Our advantages</a></li>
                            <li><a data-toggle="tab" href="#menu3">Our guarantees</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="menu1" class="tab-pane fade in active">
                                <p>Bitcoin is based on a protocol known as the blockchain, which allows to create, transfer and verify ultra-secure financial data without interference of third parties.</p>
                            </div>
                            <div id="menu2" class="tab-pane fade">
                                <p>Our mission as an official partner of Bitcoin Foundation is to help you enter and better understand the world of #1 cryptocurrency and avoid any issues you may encounter.</p>
                            </div>
                            <div id="menu3" class="tab-pane fade">
                                <p>We are here because we are passionate about open, transparent markets and aim to be a major driving force in widespread adoption, we are the first and the best in cryptocurrency. </p>
                            </div>
                        </div>
                        <a class="btn btn-primary" href="about">Read More</a>
                    </div>
                    <!-- Content Ends -->
                </div>
                <!-- Section Content Ends -->
            </div>
        </section>
        <!-- About Section Ends -->
        <!-- Features and Video Section Starts -->
        <section class="image-block">

            <div class="container-fluid">

                <div class="row">

                    <!-- Features Starts -->
                    <div class="ts-padding">
                        <!-- Section Title Starts -->
                <div class="row text-center">
                    <h2 class="title-head">Why <span>Us</span></h2>
                    <div class="title-head-subtitle">
                        <p>a commercial website that lists wallets, exchanges and other bitcoin related info</p>
                    </div>
                </div>
                <!-- Section Title Ends -->
                        <div class="gap-20"></div>
                        <div class="row">
                            <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center">
                                      <span class="feature-icon">
                                        <asp:Image ID="Image5" runat="server" ImageUrl="pic/icon/strong-security.png" /> 
                                        
                                    </span>
                                    <h3 class="feature-title">Strong Security</h3>
                                    <p>Protection against DDoS attacks, <br>full data encryption</p>
                                </div>
                            </div>
                            <!-- Feature Ends -->
                            <div class="gap-20-mobile"></div>
                            <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center">
                                    <span class="feature-icon">
                                        <asp:Image ID="Image6" runat="server" ImageUrl="pic/icon/world-coverage.png" />
                                        
                                    </span>
                                    <h3 class="feature-title">World Coverage</h3>
                                    <p>Providing services in 99% countries<br> around all the globe</p>
                                </div>
                            </div>
                             <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center">
                                    <span class="feature-icon">
                                        <asp:Image ID="Image7" runat="server" ImageUrl="pic/icon/cost-efficiency.png" />
                                    </span>
                                    <h3 class="feature-title">Cost efficiency</h3>
                                    <p>Reasonable trading fees for takers<br> and all market makers</p>
                                </div>
                            </div>
                            <!-- Feature Ends -->
                            <div class="gap-20-mobile"></div>
                            <!-- Feature Ends -->
                        </div>
                        <div class="gap-20"></div>
                        <div class="row">
                            <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center">
                                    <span class="feature-icon">
                                        <asp:Image ID="Image8" runat="server" ImageUrl="pic/icon/payment-options.png" />
                                    </span>
                                    <h3 class="feature-title">Payment Options</h3>
                                    <p>Popular methods: Visa, MasterCard, <br>bank transfer, cryptocurrency</p>
                                </div>
                            </div>
                            <!-- Feature Ends -->
                            <div class="gap-20-mobile"></div>
                            <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center"><span class="feature-icon">
                                        <asp:Image ID="Image9" runat="server" ImageUrl="pic/icon/mobile-app.png" />
                                    </span>
                                    <h3 class="feature-title">Mobile App</h3>
                                    <p>Trading via our Mobile App, Available<br> in Play Store & App Store</p>
                                </div>
                            </div>
                            <!-- Feature Ends -->
                            <!-- Feature Starts -->
                            <div class="col-sm-6 col-md-6 col-xs-12">
                                <div class="feature text-center">
                                    <span class="feature-icon">
                                        <asp:Image ID="Image10" runat="server" ImageUrl="pic/icon/high-liquidity.png" />
                                    </span>
                                    <h3 class="feature-title">High Liquidity</h3>
                                    <p>Fast access to high liquidity orderbook<br> for top currency pairs</p>
                                </div>
                            </div>
                            <!-- Feature Ends -->
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- Features and Video Section Ends -->
        <br>
<!-- Section Title Starts -->
                <div class="row text-center">
                    <h2 class="title-head">Coming <span>Soon</span></h2>
                    <div class="title-head-subtitle">
                        <p>a commercial website that lists wallets, exchanges and other bitcoin related info</p>
                    </div>
                </div>
                <!-- Section Title Ends -->

  <section id="timeline">



  <div class="tl-item">

    <div class="tl-bg" style="background-image: url(https://placeimg.com/801/801/nature)"></div>

    <div class="tl-content">
      <h1>Lorem ipsum dolor sit</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit.</p>
    </div>

  </div>

  <div class="tl-item">

    <div class="tl-bg" style="background-image: url(https://placeimg.com/802/802/nature)"></div>

    <div class="tl-content">
      <h1 class="f3 text--accent ttu">Vestibulum laoreet lorem</h1>
      <p>Suspendisse potenti. Sed sollicitudin eros lorem, eget accumsan risus dictum id. Maecenas dignissim ipsum vel mi rutrum egestas. Donec mauris nibh, facilisis ut hendrerit vel, fringilla sed felis. Morbi sed nisl et arcu.</p>
    </div>

  </div>

  <div class="tl-item">

    <div class="tl-bg" style="background-image: url(https://placeimg.com/803/803/nature)"></div>

    <div class="tl-content">
      <h1 class="f3 text--accent ttu">Phasellus mauris elit</h1>
      <p>Mauris cursus magna at libero lobortis tempor. Suspendisse potenti. Aliquam interdum vulputate neque sit amet varius. Maecenas ac pulvinar nisi. Fusce vitae nunc ultrices, tristique dolor at, porttitor dolor. Etiam id cursus arcu, in dapibus nibh. Pellentesque non porta leo. Nulla eros odio, egestas quis efficitur vel, pretium sed.</p>
    </div>

  </div>

</section>


        <!-- Quote and Chart Section Starts -->
        <section class="image-block2">
            <div class="container-fluid">
                <div class="row">
                    <!-- Quote Starts -->
                    <div class="col-md-4 img-block-quote bg-image-2">
                        <blockquote>
                            <p>Bitcoin is one of the most important inventions in all of human history. For the first time ever, anyone can send or receive any amount of money with anyone else, anywhere on the planet, conveniently and without restriction. It’s the dawn of a better, more free world.</p>
                            <footer><asp:Image ID="Image11" runat="server" ImageUrl="pic/ceo.jpg" /> <span>Marc Smith</span> - CEO</footer>
                        </blockquote>
                    </div>
                    <!-- Quote Ends -->
                    <!-- Chart Starts -->
                    <div class="col-md-8 bg-grey-chart">
                        <div class="chart-widget dark-chart chart-1">
                            <div>
                                <div class="btcwdgt-chart" data-bw-theme="dark"></div>
                            </div>
                        </div>

                    </div>
                    <!-- Chart Ends -->
                </div>
            </div>
        </section>
        <!-- Quote and Chart Section Ends -->

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
                            <!-- Call To Action Text Ends -->
                            <!-- Call To Action Button Starts -->
                            <center><asp:TextBox ID="TextBox3" runat="server" class="form__field" placeholder="Your E-Mail Address"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Send"></asp:Button></center>
</center>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call To Action Section Ends -->


</asp:Content>

