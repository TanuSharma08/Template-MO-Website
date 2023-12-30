<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:Button ID="addpro" runat="server" Text="Add New Product" class="button" />
        <asp:Button ID="dltpro" runat="server" Text="Delete Selected Product" class="button" />
    </div>

    <div class="container">
        <h2>Product Categories</h2>
        <asp:Button ID="addcat" runat="server" Text="Add New Category" class="button" />
    </div>
</asp:Content>

