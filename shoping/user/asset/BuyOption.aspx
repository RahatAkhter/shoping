<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="BuyOption.aspx.cs" Inherits="shoping.user.asset.BuyOption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
  <link href="css/table.css" rel="stylesheet" />
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
                <div class="container-fluid">
                    <br />
                <h2 style="text-align:center;" class="title-head">Buy <span>Bitcoins</span></h2>
<asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <br />
            <table id="t01" style="width:80%;margin-left:auto;margin-right:auto;" >
                <tr>
                    <th style=" font-size:18px; text-align:center;">Buyer</th>
                    <th style=" font-size:18px; text-align:center;">Country</th>
                    <th style=" font-size:18px; text-align:center;">Currency</th>
                    <th style=" font-size:18px; text-align:center;">Payment Method</th>
                    <th style=" font-size:18px; text-align:center;" >Price / BTC	</th>
                    <th style=" font-size:18px; text-align:center;" >Limit</ths>
                    <th style=" font-size:18px; text-align:center;" >Date</ths>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                 <td style=" font-size:12px; text-align:left;"><%#Eval("email") %></td>
                <td style=" font-size:12px; text-align:left;"><%#Eval("country") %></td>
                <td style=" font-size:12px; text-align:left;"><%#Eval("crurncy") %></td>
                <td style=" font-size:12px; text-align:left;"><%#Eval("paymethod") %></td>
                <td style=" font-size:12px; text-align:left;"><%#Eval("price") %></td>
                <td style=" font-size:12px; text-align:left;"><%#Eval("limit") %></td>
                <td style=" font-size:12px; text-align:center;"><%#Eval("date") %></td>
           </tr>
 
            </ItemTemplate>
    
            
        <FooterTemplate>
            </table>
        </FooterTemplate>
</asp:Repeater>
             <asp:Button ID="Button1" runat="server" Text="Chat" class="btn btn-primary" Style="float:right;margin-right:50%"  />

</div>  

    
     
    
</</asp:Content>