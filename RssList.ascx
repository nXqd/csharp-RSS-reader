<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RssList.ascx.cs" Inherits="RssList" %>
<%@ OutputCache Duration="3600" VaryByParam="None" %>

<asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
        <table>
            <thead>
                <tr style="font-weight: bold;">
                    <td><%# Title %></td>
                </tr>
                <tr style="font-style: italic;">
                    <td><%# Description %></td>
                </tr>
            </thead>
    </HeaderTemplate>
    <ItemTemplate>
        <tr class=<%# DataBinder.Eval(Container.DataItem, "Source") %> >
            <td>
                <a href=<%# DataBinder.Eval(Container.DataItem, "Link") %> target="article" >
                 <%# DataBinder.Eval(Container.DataItem, "Title") %> </a>
                 <div class="time"><%# DataBinder.Eval(Container.DataItem, "Date") %></div>
                 <div class="source"><%# DataBinder.Eval(Container.DataItem, "Source") %></div>
             </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>