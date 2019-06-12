<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="shoping.user.asset.faq" %>
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


                            <li class="sign-up"><asp:Button ID="REGISTRATION" runat="server" Text="REGISTRATION" class="btn btn-primary" OnClick="REGISTRATION_Click" style="border:solid 1px #00ff21; background:#000000; color:#0d3c2b;  "/></li>
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




      <section class="banner-area">
			<div class="banner-overlay">
				<div class="banner-text text-center">
					<div class="container">
						<!-- Section Title Starts -->
						<div class="row text-center">
							<div class="col-xs-12">
								<!-- Title Starts -->
								<h2 class="title-head">Frequenty Asked <span>Questions</span></h2>
								<!-- Title Ends -->
								<hr>
								<!-- Breadcrumb Starts -->
								<ul class="breadcrumb">
									<li><a id="ah" runat="server" href="index.aspx"> home</a></li>
									<li>faq</li>
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
        <!-- Section FAQ Starts -->
        <section class="faq">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- Panel Group Starts -->
                        <div class="panel-group" id="accordion">
                            <!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
								what is bitcoin ?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse1" class="panel-collapse collapse in">
                                    <div class="panel-body">Bitcoin is a form of digital currency which is based on an open source code that was created and is held electronically. Bitcoin is a decentralized form of currency, meaning that it does not belong to any form of government and is not controlled by anyone.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
                            <!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
								Who Developed Bitcoin?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body">The original Bitcoin code was designed by Satoshi Nakamoto under MIT open source credentials. In 2008 Nakamoto outlined the idea behind Bitcoin in his White Paper, which scientifically described how the cryptocurrency would function. Bitcoin is the first successful digital currency designed with trust in cryptography over central authorities. Satoshi left the Bitcoin code in the hands of developers and the community in 2010. Thus far hundreds of developers have added to the core code throughout the years.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
							<!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3">
								What is Bitcoin Mining?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body">Bitcoin mining is analogous to the mining of gold, but its digital form. The process involves specialized computers solving algorithmic equations or hash functions. These problems help miners to confirm blocks of transactions held within the network. Bitcoin mining provides a reward for miners by paying out in Bitcoin in turn the miners confirm transactions on the blockchain. Miners introduce new Bitcoin into the network and also secure the system with transaction confirmation. They are also rewarded network fees for when they harvest new coin and a time when the last bitcoin is found mining will continue.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
							<!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4">
								Is Bitcoin Used For Illegal Activities?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse4" class="panel-collapse collapse">
                                    <div class="panel-body">This is a yet another controversial topic. Because of the freedom and the degree of anonymity that the use of Bitcoin offers, many users who were seeking to purchase or solicit illegal goods or services initially turned to the use of Bitcoin as a method of payment.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
							<!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5">
								Can Bitcoin Be Regulated In Any Way?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">Again, when a user decides to use a specific type of software for their Bitcoin wallet, they are deciding what direction the Bitcoin network is heading towards. In other words, you need the cooperation of nearly every single user in order to modify any aspect of the Bitcoin protocol.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
							<!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6">
								Is Bitcoin anonymous?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">Participants in Bitcoin transactions are identified by public addresses – those are the long strings of around 30 characters you see in a person’s Bitcoin address, usually starting with the numerals ‘1’ or ‘3’. For every transaction, the sending and receiving addresses are publicly-viewable.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
							<!-- Panel Starts -->
                            <div class="panel panel-default">
                                <!-- Panel Heading Starts -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7">
								How Can I Sell Bitcoins?</a>
                                    </h4>
                                </div>
                                <!-- Panel Heading Ends -->
                                <!-- Panel Content Starts -->
                                <div id="collapse7" class="panel-collapse collapse">
                                    <div class="panel-body">Bitcoins can be sold locally using LocalBitcoins, on Bitcoin brokerages / exchanges, using two-way Bitcoin Teller Machines (BTM’s) or you can pay for a good or service with them. Bitcoins can be sold to just about anyone as long as they have a Bitcoin address, and can be sold for any fiat currency in the world or traded for a physical good. Feel free to check out our recommended list of exchanges and brokerage services to sell your bitcoins online.</div>
                                </div>
                                <!-- Panel Content Starts -->
                            </div>
                            <!-- Panel Ends -->
                        </div>
                        <!-- Panel Group Ends -->
                    </div>

                </div>
            </div>
        </section>
        <!-- Section FAQ Ends -->
      </div>

</asp:Content>

