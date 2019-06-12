<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="chose.aspx.cs" Inherits="shoping.user.asset.chose" %>
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
          <li><a id="A1" runat="server" href="logout.aspx" >LOGOUT</a></li>
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

    <div class="container">
                    


         <div class="row" style="width:80%; height:auto; margin-left:auto; margin-right:auto;">
 
             <div class="fa-columns" style="width:45%; float:left; margin-left:3%;">
                 <asp:Image ID="Image1" runat="server" src="pic/1.jpg"  style="width:55%; height:260px;" />
                 <br /><br />
                <a id="A3" runat="server" href="~/user/asset/shop.aspx" class="btn btn-primary" style="margin-left:19%;">User</a>

             </div>
             <div class="fa-columns" style="width:45%; float:left; margin-left:3%;">
                 <asp:Image ID="Image2" runat="server" src="pic/2.jpg" style="width:55%; height:250px;" />
                 <br /><br />
                 <a id="A4" runat="server" href="~/user/asset/gust1.aspx" class="btn btn-primary" style="margin-left:19%;" >Guest</a>

             </div>
            </div>
 
</div>
    
</asp:Content>