<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addmininfo.aspx.cs" Inherits="shoping.admin.asset.addmininfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
                        <asp:Repeater ID="r1" runat="server">

                        <HeaderTemplate>
                                      <table class="table table-condensed">
                                <tr>
                                    <th  style=" font-size:18px; text-align:center;">First Name</th>
                                    <th  style=" font-size:18px; text-align:center;">Last Name</th>
                                    <th  style=" font-size:18px; text-align:center;">User Name</th>
                                    <th  style=" font-size:18px; text-align:center;">Email</th>
                                    <th  style=" font-size:18px; text-align:center;">Contact</th>
                                    <th  style=" font-size:18px; text-align:center;">Password</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("firstname") %></td>
                                <td><%#Eval("lastname") %></td>
                                <td><%#Eval("username") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("contact") %></td>
                                <td><%#Eval("password") %></td>   
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>

</asp:Content>