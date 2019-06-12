<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="BuyC.aspx.cs" Inherits="shoping.user.asset.BuyC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="css/table.css" rel="stylesheet" />
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
                                <li class="active"><a id="link4" runat="server" href="~/user/asset/index.aspx">Home</a></li>
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
                                <h2 class="title-head">Buy<span>Bitcoins</span></h2>
                                <!-- Title Ends -->
                                
                                <!-- Breadcrumb Starts -->
                                <ul class="breadcrumb">
                                             <li class="active"><a id="A1" runat="server" href="asset/index.aspx">Home</a></li>
                                    <li>Buy Bitcoin</li>

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
     <!-- Banner Area start -->
    <div class="container-fluid">
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
                        <asp:DropDownList ID="Sel" runat="server" class="form-control">
                    <asp:ListItem Selected="true">Select Country</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>Afghanistan</asp:ListItem>
                    <asp:ListItem>Albania</asp:ListItem>
                    <asp:ListItem>Algeria</asp:ListItem>
                    <asp:ListItem>American Samoa</asp:ListItem>
                    <asp:ListItem>Andorra</asp:ListItem>
                    <asp:ListItem>Angola</asp:ListItem>
                    <asp:ListItem>Anguilla</asp:ListItem>
                    <asp:ListItem>Antarctica</asp:ListItem>
                    <asp:ListItem>Antigua And Barbuda</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Armenia</asp:ListItem>
                    <asp:ListItem>Aruba</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Austria</asp:ListItem>
                    <asp:ListItem>Azerbaijan</asp:ListItem>
                    <asp:ListItem>Bahamas</asp:ListItem>
                    <asp:ListItem>Bahrain</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>Barbados</asp:ListItem>
                    <asp:ListItem>Belarus</asp:ListItem>
                    <asp:ListItem>Belgium</asp:ListItem>
                    <asp:ListItem>Belize</asp:ListItem>
                    <asp:ListItem>Benin</asp:ListItem>
                    <asp:ListItem>Bermuda</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Bolivia</asp:ListItem>
                    <asp:ListItem>Bosnia And Herzegowina</asp:ListItem>
                    <asp:ListItem>Botswana</asp:ListItem>
                    <asp:ListItem>Bouvet Island</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
                    <asp:ListItem>Brunei Darussalam</asp:ListItem>
                    <asp:ListItem>Bulgaria</asp:ListItem>
                    <asp:ListItem>Burkina Faso</asp:ListItem>
                    <asp:ListItem>Burundi</asp:ListItem>
                    <asp:ListItem>Cambodia</asp:ListItem>
                    <asp:ListItem>Cameroon</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Cape Verde</asp:ListItem>
                    <asp:ListItem>Cayman Islands</asp:ListItem>
                    <asp:ListItem>Central African Republic</asp:ListItem>
                    <asp:ListItem>Chad</asp:ListItem>
                    <asp:ListItem>Chile</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Christmas Island</asp:ListItem>
                    <asp:ListItem>Cocos (Keeling) Islands</asp:ListItem>
                    <asp:ListItem>Colombia</asp:ListItem>
                    <asp:ListItem>Comoros</asp:ListItem>
                    <asp:ListItem>Congo</asp:ListItem>
                    <asp:ListItem>Cook Islands</asp:ListItem>
                    <asp:ListItem>Costa Rica</asp:ListItem>
                    <asp:ListItem>Cote D'Ivoire</asp:ListItem>
                    <asp:ListItem>Croatia (Local Name: Hrvatska)</asp:ListItem>
                    <asp:ListItem>Cuba</asp:ListItem>
                    <asp:ListItem>Cyprus</asp:ListItem>
                    <asp:ListItem>Czech Republic</asp:ListItem>
                    <asp:ListItem>Denmark</asp:ListItem>
                    <asp:ListItem>Djibouti</asp:ListItem>
                    <asp:ListItem>Dominica</asp:ListItem>
                    <asp:ListItem>Dominican Republic</asp:ListItem>
                    <asp:ListItem>East Timor</asp:ListItem>
                    <asp:ListItem>Ecuador</asp:ListItem>
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>El Salvador</asp:ListItem>
                    <asp:ListItem>Equatorial Guinea</asp:ListItem>
                    <asp:ListItem>Eritrea</asp:ListItem>
                    <asp:ListItem>Estonia</asp:ListItem>
                    <asp:ListItem>Ethiopia</asp:ListItem>
                    <asp:ListItem>Falkland Islands (Malvinas)</asp:ListItem>
                    <asp:ListItem>Faroe Islands</asp:ListItem>
                    <asp:ListItem>Fiji</asp:ListItem>
                    <asp:ListItem>Finland</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>French Guiana</asp:ListItem>
                    <asp:ListItem>French Polynesia</asp:ListItem>
                    <asp:ListItem>French Southern Territories</asp:ListItem>
                    <asp:ListItem>Gabon</asp:ListItem>
                    <asp:ListItem>Gambia</asp:ListItem>
                    <asp:ListItem>Georgia</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Ghana</asp:ListItem>
                    <asp:ListItem>Gibraltar</asp:ListItem>
                    <asp:ListItem>Greece</asp:ListItem>
                    <asp:ListItem>Greenland</asp:ListItem>
                    <asp:ListItem>Grenada</asp:ListItem>
                    <asp:ListItem>Guadeloupe</asp:ListItem>
                    <asp:ListItem>Guam</asp:ListItem>
                    <asp:ListItem>Guatemala</asp:ListItem>
                    <asp:ListItem>Guinea</asp:ListItem>
                    <asp:ListItem>Guinea-Bissau</asp:ListItem>
                    <asp:ListItem>Guyana</asp:ListItem>
                    <asp:ListItem>Haiti</asp:ListItem>
                    <asp:ListItem>Honduras</asp:ListItem>
                    <asp:ListItem>Hong Kong</asp:ListItem>
                    <asp:ListItem>Hungary</asp:ListItem>
                    <asp:ListItem>Icel And</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Iran (Islamic Republic Of)</asp:ListItem>
                    <asp:ListItem>Iraq</asp:ListItem>
                    <asp:ListItem>Ireland</asp:ListItem>
                    <asp:ListItem>Israel</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                    <asp:ListItem>Jamaica</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Jordan</asp:ListItem>
                    <asp:ListItem>Kazakhstan</asp:ListItem>
                    <asp:ListItem>Kenya</asp:ListItem>
                    <asp:ListItem>Kiribati</asp:ListItem>
                    <asp:ListItem>Korea</asp:ListItem>
                    <asp:ListItem>Kuwait</asp:ListItem>
                    <asp:ListItem>Kyrgyzstan</asp:ListItem>
                    <asp:ListItem>Lao People'S Dem Republic</asp:ListItem>
                    <asp:ListItem>Latvia</asp:ListItem>
                    <asp:ListItem>Lebanon</asp:ListItem>
                    <asp:ListItem>Lesotho</asp:ListItem>
                    <asp:ListItem>Liberia</asp:ListItem>
                    <asp:ListItem>Libyan Arab Jamahiriya</asp:ListItem>
                    <asp:ListItem>Liechtenstein</asp:ListItem>
                    <asp:ListItem>Lithuania</asp:ListItem>
                    <asp:ListItem>Luxembourg</asp:ListItem>
                    <asp:ListItem>Macau</asp:ListItem>
                    <asp:ListItem>Macedonia</asp:ListItem>
                    <asp:ListItem>Madagascar</asp:ListItem>
                    <asp:ListItem>Malawi</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Maldives</asp:ListItem>
                    <asp:ListItem>Mali</asp:ListItem>
                    <asp:ListItem>Malta</asp:ListItem>
                    <asp:ListItem>Marshall Islands</asp:ListItem>
                    <asp:ListItem>Martinique</asp:ListItem>
                    <asp:ListItem>Mauritania</asp:ListItem>
                    <asp:ListItem>Mauritius</asp:ListItem>
                    <asp:ListItem>Mayotte</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>Micronesia, Federated States</asp:ListItem>
                    <asp:ListItem>Moldova, Republic Of</asp:ListItem>
                    <asp:ListItem>Monaco</asp:ListItem>
                    <asp:ListItem>Mongolia</asp:ListItem>
                    <asp:ListItem>Montserrat</asp:ListItem>
                    <asp:ListItem>Morocco</asp:ListItem>
                    <asp:ListItem>Mozambique</asp:ListItem>
                    <asp:ListItem>Myanmar</asp:ListItem>
                    <asp:ListItem>Namibia</asp:ListItem>
                    <asp:ListItem>Nauru</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Netherlands</asp:ListItem>
                    <asp:ListItem>Netherlands Ant Illes</asp:ListItem>
                    <asp:ListItem>New Caledonia</asp:ListItem>
                    <asp:ListItem>New Zealand</asp:ListItem>
                    <asp:ListItem>Nicaragua</asp:ListItem>
                    <asp:ListItem>Niger</asp:ListItem>
                    <asp:ListItem>Nigeria</asp:ListItem>
                    <asp:ListItem>Niue</asp:ListItem>
                    <asp:ListItem>Norfolk Island</asp:ListItem>
                    <asp:ListItem>Northern Mariana Islands</asp:ListItem>
                    <asp:ListItem>Norway</asp:ListItem>
                    <asp:ListItem>Oman</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Palau</asp:ListItem>
                    <asp:ListItem>Panama</asp:ListItem>
                    <asp:ListItem>Papua New Guinea</asp:ListItem>
                    <asp:ListItem>Paraguay</asp:ListItem>
                    <asp:ListItem>Peru</asp:ListItem>
                    <asp:ListItem>Philippines</asp:ListItem>
                    <asp:ListItem>Pitcairn</asp:ListItem>
                    <asp:ListItem>Poland</asp:ListItem>
                    <asp:ListItem>Portugal</asp:ListItem>
                    <asp:ListItem>Puerto Rico</asp:ListItem>
                    <asp:ListItem>Qatar</asp:ListItem>
                    <asp:ListItem>Reunion</asp:ListItem>
                    <asp:ListItem>Romania</asp:ListItem>
                    <asp:ListItem>Russian Federation</asp:ListItem>
                    <asp:ListItem>Rwanda</asp:ListItem>
                    <asp:ListItem>Saint K Itts And Nevis</asp:ListItem>
                    <asp:ListItem>Saint Lucia</asp:ListItem>
                    <asp:ListItem>Saint Vincent, The Grenadines</asp:ListItem>
                    <asp:ListItem>Samoa</asp:ListItem>
                    <asp:ListItem>San Marino</asp:ListItem>
                    <asp:ListItem>Sao Tome And Principe</asp:ListItem>
                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                    <asp:ListItem>Senegal</asp:ListItem>
                    <asp:ListItem>Seychelles</asp:ListItem>
                    <asp:ListItem>Sierra Leone</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Slovakia (Slovak Republic)</asp:ListItem>
                    <asp:ListItem>Slovenia</asp:ListItem>
                    <asp:ListItem>Solomon Islands</asp:ListItem>
                    <asp:ListItem>Somalia</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>South Georgia , S Sandwich Is.</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Sri Lanka</asp:ListItem>
                    <asp:ListItem>St. Helena</asp:ListItem>
                    <asp:ListItem>St. Pierre And Miquelon</asp:ListItem>
                    <asp:ListItem>Sudan</asp:ListItem>
                    <asp:ListItem>Suriname</asp:ListItem>
                    <asp:ListItem>Svalbard, Jan Mayen Islands</asp:ListItem>
                    <asp:ListItem>Sw Aziland</asp:ListItem>
                    <asp:ListItem>Sweden</asp:ListItem>
                    <asp:ListItem>Switzerland</asp:ListItem>
                    <asp:ListItem>Syrian Arab Republic</asp:ListItem>
                    <asp:ListItem>Taiwan</asp:ListItem>
                    <asp:ListItem>Tajikistan</asp:ListItem>
                    <asp:ListItem>Tanzania, United Republic Of</asp:ListItem>
                    <asp:ListItem>Thailand</asp:ListItem>
                    <asp:ListItem>Togo</asp:ListItem>
                    <asp:ListItem>Tokelau</asp:ListItem>
                    <asp:ListItem>Tonga</asp:ListItem>
                    <asp:ListItem>Trinidad And Tobago</asp:ListItem>
                    <asp:ListItem>Tunisia</asp:ListItem>
                    <asp:ListItem>Turkey</asp:ListItem>
                    <asp:ListItem>Turkmenistan</asp:ListItem>
                    <asp:ListItem>Turks And Caicos Islands</asp:ListItem>
                    <asp:ListItem>Tuvalu</asp:ListItem>
                    <asp:ListItem>Uganda</asp:ListItem>
                    <asp:ListItem>Ukraine</asp:ListItem>
                    <asp:ListItem>United Arab Emirates</asp:ListItem>
                    <asp:ListItem>United Kingdom</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>United States Minor Is.</asp:ListItem>
                    <asp:ListItem>Uruguay</asp:ListItem>
                    <asp:ListItem>Uzbekistan</asp:ListItem>
                    <asp:ListItem>Vanuatu</asp:ListItem>
                    <asp:ListItem>Venezuela</asp:ListItem>
                    <asp:ListItem>Viet Nam</asp:ListItem>
                    <asp:ListItem>Virgin Islands (British)</asp:ListItem>
                    <asp:ListItem>Virgin Islands (U.S.)</asp:ListItem>
                    <asp:ListItem>Wallis And Futuna Islands</asp:ListItem>
                    <asp:ListItem>Western Sahara</asp:ListItem>
                    <asp:ListItem>Yemen</asp:ListItem>
                    <asp:ListItem>Yugoslavia</asp:ListItem>
                    <asp:ListItem>Zaire</asp:ListItem>
                    <asp:ListItem>Zambia</asp:ListItem>
                    <asp:ListItem>Zimbabwe</asp:ListItem>
                        </asp:DropDownList>					
							</div>

                            	<!-- Input Field Starts -->
							<div class="form-group">
    <asp:DropDownList ID="Sel1" runat="server" class="form-control">
        <asp:ListItem Selected="true">Select Currency</asp:ListItem>
            <asp:ListItem Value="AFA">Afghanistan Afghani</asp:ListItem>

            <asp:ListItem Value="AUD">Australian Dollar</asp:ListItem>

            <asp:ListItem Value="AFA">Afghanistan Afghani</asp:ListItem>

            <asp:ListItem Value="ALL">Albanian Lek</asp:ListItem>

            <asp:ListItem Value="DZD">Algerian Dinar</asp:ListItem>

            <asp:ListItem Value="ARS">Argentine Peso</asp:ListItem>

            <asp:ListItem Value="AWG">Aruba Florin</asp:ListItem>

            <asp:ListItem Value="AUD">Australian Dollar</asp:ListItem>

            <asp:ListItem Value="BSD">Bahamian Dollar</asp:ListItem>

            <asp:ListItem Value="BHD">Bahraini Dinar</asp:ListItem>

            <asp:ListItem Value="BDT">Bangladesh Taka</asp:ListItem>

            <asp:ListItem Value="BBD">Barbados Dollar</asp:ListItem>

            <asp:ListItem Value="BZD">Belize Dollar</asp:ListItem>

            <asp:ListItem Value="BMD">Bermuda Dollar</asp:ListItem>

            <asp:ListItem Value="BTN">Bhutan Ngultrum</asp:ListItem>

            <asp:ListItem Value="BOB">Bolivian Boliviano</asp:ListItem>

            <asp:ListItem Value="BWP">Botswana Pula</asp:ListItem>

            <asp:ListItem Value="BRL">Brazilian Real</asp:ListItem>

            <asp:ListItem Value="GBP">British Pound</asp:ListItem>

            <asp:ListItem Value="BND">Brunei Dollar</asp:ListItem>

            <asp:ListItem Value="BIF">Burundi Franc</asp:ListItem>

            <asp:ListItem Value="XOF">CFA Franc (BCEAO)</asp:ListItem>

            <asp:ListItem Value="XAF">CFA Franc (BEAC)</asp:ListItem>

            <asp:ListItem Value="KHR">Cambodia Riel</asp:ListItem>

            <asp:ListItem Value="CAD">Canadian Dollar</asp:ListItem>

            <asp:ListItem Value="CVE">Cape Verde Escudo</asp:ListItem>

            <asp:ListItem Value="KYD">Cayman Islands Dollar</asp:ListItem>

            <asp:ListItem Value="CLP">Chilean Peso</asp:ListItem>

            <asp:ListItem Value="CNY">Chinese Yuan</asp:ListItem>

            <asp:ListItem Value="COP">Colombian Peso</asp:ListItem>

            <asp:ListItem Value="KMF">Comoros Franc</asp:ListItem>

            <asp:ListItem Value="CRC">Costa Rica Colon</asp:ListItem>

            <asp:ListItem Value="HRK">Croatian Kuna</asp:ListItem>

            <asp:ListItem Value="CUP">Cuban Peso</asp:ListItem>

            <asp:ListItem Value="CYP">Cyprus Pound</asp:ListItem>

            <asp:ListItem Value="CZK">Czech Koruna</asp:ListItem>

            <asp:ListItem Value="DKK">Danish Krone</asp:ListItem>

            <asp:ListItem Value="DJF">Dijibouti Franc</asp:ListItem>

            <asp:ListItem Value="DOP">Dominican Peso</asp:ListItem>

            <asp:ListItem Value="XCD">East Caribbean Dollar</asp:ListItem>

            <asp:ListItem Value="EGP">Egyptian Pound</asp:ListItem>

            <asp:ListItem Value="SVC">El Salvador Colon</asp:ListItem>

            <asp:ListItem Value="EEK">Estonian Kroon</asp:ListItem>

            <asp:ListItem Value="ETB">Ethiopian Birr</asp:ListItem>

            <asp:ListItem Value="EUR">Euro</asp:ListItem>

            <asp:ListItem Value="FKP">Falkland Islands Pound</asp:ListItem>

            <asp:ListItem Value="GMD">Gambian Dalasi</asp:ListItem>

            <asp:ListItem Value="GHC">Ghanian Cedi</asp:ListItem>

            <asp:ListItem Value="GIP">Gibraltar Pound</asp:ListItem>

            <asp:ListItem Value="XAU">Gold Ounces</asp:ListItem>

            <asp:ListItem Value="GTQ">Guatemala Quetzal</asp:ListItem>

            <asp:ListItem Value="GNF">Guinea Franc</asp:ListItem>

            <asp:ListItem Value="GYD">Guyana Dollar</asp:ListItem>

            <asp:ListItem Value="HTG">Haiti Gourde</asp:ListItem>

            <asp:ListItem Value="HNL">Honduras Lempira</asp:ListItem>

            <asp:ListItem Value="HKD">Hong Kong Dollar</asp:ListItem>

            <asp:ListItem Value="HUF">Hungarian Forint</asp:ListItem>

            <asp:ListItem Value="ISK">Iceland Krona</asp:ListItem>

            <asp:ListItem Value="INR">Indian Rupee</asp:ListItem>

            <asp:ListItem Value="IDR">Indonesian Rupiah</asp:ListItem>

            <asp:ListItem Value="IQD">Iraqi Dinar</asp:ListItem>

            <asp:ListItem Value="ILS">Israeli Shekel</asp:ListItem>

            <asp:ListItem Value="JMD">Jamaican Dollar</asp:ListItem>

            <asp:ListItem Value="JPY">Japanese Yen</asp:ListItem>

            <asp:ListItem Value="JOD">Jordanian Dinar</asp:ListItem>

            <asp:ListItem Value="KZT">Kazakhstan Tenge</asp:ListItem>

            <asp:ListItem Value="KES">Kenyan Shilling</asp:ListItem>

            <asp:ListItem Value="KRW">Korean Won</asp:ListItem>

            <asp:ListItem Value="KWD">Kuwaiti Dinar</asp:ListItem>

            <asp:ListItem Value="LAK">Lao Kip</asp:ListItem>

            <asp:ListItem Value="LVL">Latvian Lat</asp:ListItem>

            <asp:ListItem Value="LBP">Lebanese Pound</asp:ListItem>

            <asp:ListItem Value="LSL">Lesotho Loti</asp:ListItem>

            <asp:ListItem Value="LRD">Liberian Dollar</asp:ListItem>

            <asp:ListItem Value="LYD">Libyan Dinar</asp:ListItem>

            <asp:ListItem Value="LTL">Lithuanian Lita</asp:ListItem>

            <asp:ListItem Value="MOP">Macau Pataca</asp:ListItem>

            <asp:ListItem Value="MKD">Macedonian Denar</asp:ListItem>

            <asp:ListItem Value="MGF">Malagasy Franc</asp:ListItem>

            <asp:ListItem Value="MWK">Malawi Kwacha</asp:ListItem>

            <asp:ListItem Value="MYR">Malaysian Ringgit</asp:ListItem>

            <asp:ListItem Value="MVR">Maldives Rufiyaa</asp:ListItem>

            <asp:ListItem Value="MTL">Maltese Lira</asp:ListItem>

            <asp:ListItem Value="MRO">Mauritania Ougulya</asp:ListItem>

            <asp:ListItem Value="MUR">Mauritius Rupee</asp:ListItem>

            <asp:ListItem Value="MXN">Mexican Peso</asp:ListItem>

            <asp:ListItem Value="MDL">Moldovan Leu</asp:ListItem>

            <asp:ListItem Value="MNT">Mongolian Tugrik</asp:ListItem>

            <asp:ListItem Value="MAD">Moroccan Dirham</asp:ListItem>

            <asp:ListItem Value="MZM">Mozambique Metical</asp:ListItem>

            <asp:ListItem Value="MMK">Myanmar Kyat</asp:ListItem>

            <asp:ListItem Value="NAD">Namibian Dollar</asp:ListItem>

            <asp:ListItem Value="NPR">Nepalese Rupee</asp:ListItem>

            <asp:ListItem Value="ANG">Neth Antilles Guilder</asp:ListItem>

            <asp:ListItem Value="NZD">New Zealand Dollar</asp:ListItem>

            <asp:ListItem Value="NIO">Nicaragua Cordoba</asp:ListItem>

            <asp:ListItem Value="NGN">Nigerian Naira</asp:ListItem>

            <asp:ListItem Value="KPW">North Korean Won</asp:ListItem>

            <asp:ListItem Value="NOK">Norwegian Krone</asp:ListItem>

            <asp:ListItem Value="OMR">Omani Rial</asp:ListItem>

            <asp:ListItem Value="XPF">Pacific Franc</asp:ListItem>

            <asp:ListItem Value="PKR">Pakistani Rupee</asp:ListItem>

            <asp:ListItem Value="XPD">Palladium Ounces</asp:ListItem>

            <asp:ListItem Value="PAB">Panama Balboa</asp:ListItem>

            <asp:ListItem Value="PGK">Papua New Guinea Kina</asp:ListItem>

            <asp:ListItem Value="PYG">Paraguayan Guarani</asp:ListItem>

            <asp:ListItem Value="PEN">Peruvian Nuevo Sol</asp:ListItem>

            <asp:ListItem Value="PHP">Philippine Peso</asp:ListItem>

            <asp:ListItem Value="XPT">Platinum Ounces</asp:ListItem>

            <asp:ListItem Value="PLN">Polish Zloty</asp:ListItem>

            <asp:ListItem Value="QAR">Qatar Rial</asp:ListItem>

            <asp:ListItem Value="ROL">Romanian Leu</asp:ListItem>

            <asp:ListItem Value="RUB">Russian Rouble</asp:ListItem>

            <asp:ListItem Value="WST">Samoa Tala</asp:ListItem>

            <asp:ListItem Value="STD">Sao Tome Dobra</asp:ListItem>

            <asp:ListItem Value="SAR">Saudi Arabian Riyal</asp:ListItem>

            <asp:ListItem Value="SCR">Seychelles Rupee</asp:ListItem>

            <asp:ListItem Value="SLL">Sierra Leone Leone</asp:ListItem>

            <asp:ListItem Value="XAG">Silver Ounces</asp:ListItem>

            <asp:ListItem Value="SGD">Singapore Dollar</asp:ListItem>

            <asp:ListItem Value="SKK">Slovak Koruna</asp:ListItem>

            <asp:ListItem Value="SIT">Slovenian Tolar</asp:ListItem>

            <asp:ListItem Value="SBD">Solomon Islands Dollar</asp:ListItem>

            <asp:ListItem Value="SOS">Somali Shilling</asp:ListItem>

            <asp:ListItem Value="ZAR">South African Rand</asp:ListItem>

            <asp:ListItem Value="LKR">Sri Lanka Rupee</asp:ListItem>

            <asp:ListItem Value="SHP">St Helena Pound</asp:ListItem>

            <asp:ListItem Value="SDD">Sudanese Dinar</asp:ListItem>

            <asp:ListItem Value="SRG">Surinam Guilder</asp:ListItem>

            <asp:ListItem Value="SZL">Swaziland Lilageni</asp:ListItem>

            <asp:ListItem Value="SEK">Swedish Krona</asp:ListItem>

            <asp:ListItem Value="TRY">Turkey Lira</asp:ListItem>

            <asp:ListItem Value="CHF">Swiss Franc</asp:ListItem>

            <asp:ListItem Value="SYP">Syrian Pound</asp:ListItem>

            <asp:ListItem Value="TWD">Taiwan Dollar</asp:ListItem>

            <asp:ListItem Value="TZS">Tanzanian Shilling</asp:ListItem>

            <asp:ListItem Value="THB">Thai Baht</asp:ListItem>

            <asp:ListItem Value="TOP">Tonga Pa'anga</asp:ListItem>

            <asp:ListItem Value="TTD">Trinidad&amp;Tobago Dollar</asp:ListItem>

            <asp:ListItem Value="TND">Tunisian Dinar</asp:ListItem>

            <asp:ListItem Value="TRL">Turkish Lira</asp:ListItem>

            <asp:ListItem Value="USD">U.S. Dollar</asp:ListItem>

            <asp:ListItem Value="AED">UAE Dirham</asp:ListItem>

            <asp:ListItem Value="UGX">Ugandan Shilling</asp:ListItem>

            <asp:ListItem Value="UAH">Ukraine Hryvnia</asp:ListItem>

            <asp:ListItem Value="UYU">Uruguayan New Peso</asp:ListItem>

            <asp:ListItem Value="VUV">Vanuatu Vatu</asp:ListItem>

            <asp:ListItem Value="VEB">Venezuelan Bolivar</asp:ListItem>

            <asp:ListItem Value="VND">Vietnam Dong</asp:ListItem>

            <asp:ListItem Value="YER">Yemen Riyal</asp:ListItem>

            <asp:ListItem Value="YUM">Yugoslav Dinar</asp:ListItem>

            <asp:ListItem Value="ZMK">Zambian Kwacha</asp:ListItem>

            <asp:ListItem Value="ZWD">Zimbabwe Dollar</asp:ListItem>

        </asp:DropDownList>
							</div>

                        		<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:DropDownList ID="Select" runat="server" class="form-control">
                    <asp:ListItem Selected="true">Select Payment Method</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>Afghanistan</asp:ListItem>
                    <asp:ListItem>Albania</asp:ListItem>
                    <asp:ListItem>Algeria</asp:ListItem>
                    <asp:ListItem>American Samoa</asp:ListItem>
                    <asp:ListItem>Andorra</asp:ListItem>
                                    </asp:DropDownList>
                             </div>


							<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="price" runat="server"  placeholder="Enter Your Price" TextMode="Number" class="form-control"></asp:TextBox>
							</div>
							
                            <!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="limet" runat="server"  placeholder="Enter Your Limit" TextMode="Number" class="form-control"></asp:TextBox>
							</div>    

							<!-- Input Field Starts -->
							<div class="form-group">
                                <asp:TextBox ID="date" runat="server"  class="form-control" ></asp:TextBox>
							</div>
                        <!-- Input Field Ends -->
                        <!-- Submit Form Button Starts -->
							<div class="form-group">
                                <asp:Button ID="BUY" runat="server" class="btn btn-primary" Text="OK"  OnClick="BUY_Click"/>
								</div>
                       
							<!-- Submit Form Button Ends -->
	
							
                        <!-- div Ends -->
                        </div>
        <!-- form-container Ends -->    
        </div>
        <!-- container-fluid Ends -->
        </div>
            
</asp:Content>