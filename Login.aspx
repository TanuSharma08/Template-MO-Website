<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <h2>Welcome To Dashboard, Login</h2>

        <asp:Label ID="Label1" runat="server" Text="Username" />
        <asp:TextBox ID="unm" runat="server" CssClass="tb" />
        <asp:Label ID="Label2" runat="server" Text="Password" />
        <asp:TextBox ID="password" runat="server" CssClass="tb" />

        <asp:Button ID="login" runat="server" Text="Login" class="button" OnClick="login_Click" />
    </div>
</asp:Content>


