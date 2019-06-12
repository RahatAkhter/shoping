<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="fed.aspx.cs" Inherits="shoping.admin.asset.fed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
<asp:Repeater ID="r1" runat="server">

                        <HeaderTemplate>
                                      <table class="table table-condensed">
                                <tr>
                                    <th  style=" font-size:18px; text-align:center;">NANE</th>
                                    <th  style=" font-size:18px; text-align:center;">EMAIL</th>
                                    <th  style=" font-size:18px; text-align:center;">SUBJECT</th>
                                    <th  style=" font-size:18px; text-align:center;">MESSAGE</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Name") %></td>
                                <td><%#Eval("Email") %></td>
                                <td><%#Eval("Subject") %></td>
                                <td><%#Eval("mess") %></td>
                                                
                                
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>


</asp:Content>
