<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mailogin.aspx.cs" Inherits="shoping.admin.asset.mailogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link rel="shortcut icon" type="image/ico" href="asset/pic/icon/favicon.png" />
    
    <!-- CSS Files -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/magnific-popup.css" rel="stylesheet" />
    <link href="css/select2.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/green.css" rel="stylesheet" />


    <link rel="alternate stylesheet" type="text/css" title="green" href="css/green.css" />
    <link rel="stylesheet" type="text/css" href="css/styleswitcher.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- JS Files -->
    <script src="js/select2.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div class="form-container" style="width:50%; margin-left:auto; margin-right:auto;">
					<div>
						<!-- Section Title Starts -->
						<div class="row text-center">
							<h2 class="title-head hidden-xs">Admin <span>login</span></h2>
								</div>
						<!-- Section Title Ends -->
						<!-- Form Starts -->
				
        	<div class="form-group">
                                <asp:TextBox ID="emaill" runat="server" class="form-control"  placeholder="Enter email" required=""></asp:TextBox>
							</div>
							<!-- Input Field Ends -->
							<!-- Input Field Starts -->
							<div class="form-group">
                                 <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password" placeholder="Enter password" required=""></asp:TextBox>
							</div>
							<!-- Input Field Ends -->
							<!-- Submit Form Button Starts -->
							<div class="form-group">
                                <asp:Button ID="login" runat="server" Text="LOGIN" class="btn btn-primary"  OnClick="login_Click" />
										</div>
							<!-- Submit Form Button Ends -->
						
						<!-- Form Ends -->
                        </div>
            </div>
        
    </form>
      <script src="js/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/select2.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/custom.js"></script>

		<!-- Live Style Switcher JS File - only demo -->
		<script src="js/styleswitcher.js"></script>
</body>
</html>
