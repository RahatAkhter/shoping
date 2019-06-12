<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="tradBuy.aspx.cs" Inherits="shoping.admin.asset.tradBuy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
<link href="../../user/asset/css/table.css" rel="stylesheet" />

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
                    <th style=" font-size:18px; text-align:center;" >Price / BTC</th>
                    <th style=" font-size:18px; text-align:center;" >Limit</ths>
                    <th style=" font-size:18px; text-align:center;" >Date</th>
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
</div>


</asp:Content>


