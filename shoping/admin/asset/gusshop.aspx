<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="gusshop.aspx.cs" Inherits="shoping.admin.asset.gusshop" %>
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
                                    <th  style=" font-size:18px; text-align:center;">First Name</th>
                                    <th  style=" font-size:18px; text-align:center;">Last Name</th>
                                    <th  style=" font-size:18px; text-align:center;">Product Url</th>
                                    <th  style=" font-size:18px; text-align:center;">Email</th>
                                    <th  style=" font-size:18px; text-align:center;">Phone No</th>
                                    <th  style=" font-size:18px; text-align:center;">Address</th>
                                    <th  style=" font-size:18px; text-align:center;">Date</th>

                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("name") %></td>
                                <td><%#Eval("lastname") %></td>
                                <td><%#Eval("product") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("phone") %></td>
                                <td><%#Eval("address") %></td>  
                                <td><%#Eval("date") %></td>  
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
</asp:Content>

