<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ckusershop.aspx.cs" Inherits="shoping.admin.asset.ckusershop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
 
          <table class="table table-condensed" style="width:50%; margin-left:auto; margin-right:auto;">
        <br />
              <td>
                  <br />
                  Buyer Gmail  
              </td>
              <td>
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"  placeholder="Enter Buyer Gmail Address" required="" class="form-control" AutoCompleteType="Email" AutoPostBack="True"></asp:TextBox>
              </td>
              <td>
                  
                  <asp:Button ID="b1" runat="server" Text="SEARCH" class="form-control"  OnClick="b1_Click"/>
              </td>
              <br />
              </table>
    
    <asp:Repeater ID="r1" runat="server">
      <HeaderTemplate>
          <table class="table table-condensed">
              <tr>
                  <th  style=" font-size:18px; text-align:center;">Product Url</th>
                  <th  style=" font-size:18px; text-align:center;">Email Address</th>
                  <th  style=" font-size:18px; text-align:center;">Buyer Gemail</th>
                  <th  style=" font-size:18px; text-align:center;">Address</th>
                  <th  style=" font-size:18px; text-align:center;">Phone</th>
                  <th  style=" font-size:18px; text-align:center;">Date</th>
              </tr>
      </HeaderTemplate>
        <ItemTemplate>

            <tr>
                  <td style=" font-size:10px; text-align:left;"><%#Eval("ProductURL") %></td>
                  <td style=" font-size:10px; text-align:center;"><%#Eval("Email") %></td>
                  <td style=" font-size:10px; text-align:center;"><%#Eval("BuyerGmail") %></td>
                  <td style=" font-size:10px; text-align:left;"><%#Eval("Address") %></td>
                  <td style=" font-size:10px; text-align:center;"><%#Eval("PhoneNo") %></td>
                  <td style=" font-size:10px; text-align:center;"><%#Eval("Date") %></td>
               
              </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>




    </asp:Repeater>

</asp:Content>

