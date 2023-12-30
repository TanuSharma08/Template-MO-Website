<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container ddl">
        <h2 class="ac">List of Accounts</h2>
        <p>Accounts</p>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb dl">
            <asp:ListItem Text="Select account" Value="" />
            <asp:ListItem Text="Admin" Value="Admin" />
            <asp:ListItem Text="Editor" Value="Editor" />
            <asp:ListItem Text="Merchant" Value="Merchant" />
            <asp:ListItem Text="Customer" Value="Customer" />
        </asp:DropDownList>
    </div>

    <div class="container flex">
        <h2>Change Avatar</h2>

        <asp:Image ID="Image1" runat="server" class="img" ImageUrl="https://templatemo.com/templates/templatemo_524_product_admin/img/avatar.png" />
        <i class="far fa-trash-alt tm-product-delete-icon"></i>
        <asp:Button ID="updpic" runat="server" Text="Upload New Photo" class="button" />
    </div>

    <div class="container flex">
        <h2>Account Settings</h2>

        <asp:Label ID="Label1" runat="server" Text="Account Name" />
        <asp:TextBox ID="acnm" runat="server" CssClass="tb" />

        <asp:Label ID="Label2" runat="server" Text="Account Email" />
        <asp:TextBox ID="acemail" runat="server" CssClass="tb" />

        <asp:Label ID="Label3" runat="server" Text="Password" />
        <asp:TextBox ID="password" runat="server" CssClass="tb" />

        <asp:Label ID="Label4" runat="server" Text="Re-enter Password" />
        <asp:TextBox ID="repassword" runat="server" CssClass="tb" />

        <asp:Label ID="Label5" runat="server" Text="Phone" />
        <asp:TextBox ID="phone" runat="server" CssClass="tb" />

        <asp:Button ID="updprofile" runat="server" Text="Update Your Profile" class="button" />

        <asp:Button ID="dltprofile" runat="server" Text="Delete Your Account" class="button" />

    </div>
</asp:Content>


