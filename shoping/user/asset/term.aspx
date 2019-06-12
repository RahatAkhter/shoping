<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="term.aspx.cs" Inherits="shoping.user.asset.term" %>
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


            <!-- Banner Area Starts -->
		<section class="banner-area">
			<div class="banner-overlay">
				<div class="banner-text text-center">
					<div class="container">
						<!-- Section Title Starts -->
						<div class="row text-center">
							<div class="col-xs-12">
								<!-- Title Starts -->
								<h2 class="title-head">terms of <span>services</span></h2>
								<!-- Title Ends -->
								<hr>
								<!-- Breadcrumb Starts -->
								<ul class="breadcrumb">
 <li class="active"><a id="A1" runat="server" href="index.aspx">Home</a></li>									<li>terms of services</li>
								</ul>
								<!-- Breadcrumb Ends -->
							</div>
						</div>
						<!-- Section Title Ends -->
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Area Ends -->
		<!-- Section Terms of Services Starts -->
        <section class="terms-of-services">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<h3>Risk Notice</h3>
						<p>Bitcoin is a not backed or value guaranteed by any financial institution; when purchasing bitcoins the customer assumes all risk the bitcoins may become worthless in value.  Customers should research and consider the risks before purchasing any bitcoins.  The company makes absolutely no guarantee about the future value of the bitcoins purchased.</p>
						<h3>Severability</h3>
						<p>In the event any court shall declare any section or sections of this Agreement invalid or void, such declaration shall not invalidate the entire Agreement and all other paragraphs of the Agreement shall remain in full force and effect.</p>
						<h3>Customer input errors</h3>
						<p>It is the sole responsibility of the customer to check the accuracy of information entered and saved on the website.   Account details displayed on the order summary webpage will be the final transfer destination.  In the case that this information is incorrect, and funds are transferred to an unintended destination, the company shall not reimburse the customer and shall not transfer additional funds.  As such customers must ensure the Bitcoin address and bank information they enter is completely correct.</p>
						<h3>Binding Agreement</h3>
						<p>The terms and provisions of this Agreement are binding upon Your heirs, successors, assigns, and other representatives. This Agreement may be executed in counterparts, each of which shall be considered to be an original, but both of which constitute the same Agreement.</p>
						<h3>Expired orders</h3>
						<p>If the company receives payment for an order that has already expired, the company reserves the right to recalculate the Bitcoin to Thai Baht exchange rate at the time of processing the transfer to the customer.  This may result in the customer receiving less bitcoins or Thai Baht than the original ordered amount.</p>
						<h3>Choice of Law</h3>
						<p>This Agreement, and its application and interpretation, shall be governed exclusively by the laws of the State of Georgia, without regard to its conflict of law rules. You consent to the exclusive jurisdiction of the federal and state courts located in or near Atlanta, Georgia for any dispute arising under this Agreement.</p>
						<h3>Security</h3>
						<p>We have implemented security measures designed to secure your information from accidental loss and from unauthorized access, use, alteration or disclosure. However, we cannot guarantee that unauthorized persons will never gain access to your information, and you acknowledge that you provide your information at your own risk, except as otherwise provided by applicable law.</p>
					</div>
				</div>
			</div>
		</section>
		<!-- Section Terms of Services Ends -->
            </div>



</asp:Content>

