<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="shoping.admin.asset.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
    <div class="form-container" style="width:50%; margin-left:auto;margin-right: auto; "  >
								
					<div>
						<!-- Section Title Starts -->
						<div class="row text-center">
							<h2 class="title-head hidden-xs">ADMIM <span>GMAIL</span></h2>
							 <p class="info-form">Send, receive and securely store your coins in your wallet</p>
						</div>
						<!-- Section Title Ends -->
						<!-- Form Starts -->
					
							<!-- Input Field Starts -->
    <div class="form-group">
          <asp:TextBox ID="Textox1" runat="server"  Text="sarfaraaz.ahmed123@gmail.com"   required="" class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="Textbox2"  runat="server" Text="@pornhub"  required="" class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="User Email"  required="" class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox4" runat="server"  placeholder="Subjuct"  required="" class="form-control"></asp:TextBox>
	</div>
    <div class="form-group">
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Message"   required="" class="form-control"></asp:TextBox>
	</div>
    
							<!-- Input Field Ends -->
							<!-- Submit Form Button Starts -->
	<div class="form-group">
        <asp:Button ID="b1" runat="server" Text="sent" class="btn btn-primary" OnClick="b1_Click" />
        

   </div>
    </div>                    </div>
</asp:Content>


