<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewProduct.aspx.cs" Inherits="AddNewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div>
            <h2>Add Product</h2>

            <asp:Label ID="Label1" runat="server" Text="Product Name" />
            <asp:TextBox ID="pnm" runat="server" CssClass="tb" />

            <asp:Label ID="Label2" runat="server" Text="Description" />
            <asp:TextBox ID="desc" TextMode="MultiLine" runat="server" CssClass="tb desc" />

            <asp:Label ID="Label3" runat="server" Text="Category" />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb dl">
                <asp:ListItem Text="Select category" Value="" />
                <asp:ListItem Text="New Arrival" Value="New Arrival" />
                <asp:ListItem Text="Most Popular" Value="Most Popular" />
                <asp:ListItem Text="Trending" Value="Trending" />
            </asp:DropDownList>

            <asp:Label ID="Label4" runat="server" Text="Expire Date" />
            <asp:TextBox ID="expdt" runat="server" TextMode="Date" CssClass="tb" />
            <%--<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>--%>

            <asp:Label ID="Label5" runat="server" Text="Units in Stock" />
            <asp:TextBox ID="unistock" runat="server" CssClass="tb" />
        </div>

        <div>
            <div></div>
            <i class="fas fa-cloud-upload-alt tm-upload-icon" onclick="document.getElementById('fileInput').click();"></i>
            <asp:Button ID="uploadimg" runat="server" Text="Upload Product Image" class="button" />
        </div>

        <asp:Button ID="addpro" runat="server" Text="Add Product Now" class="button" />

    </div>
</asp:Content>

