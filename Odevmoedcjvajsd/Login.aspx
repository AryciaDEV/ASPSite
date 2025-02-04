<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="Odevmoedcjvajsd.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Kullanıcı Giriş Formu</h2>
        Kullanıcı Adı: 
    <asp:TextBox ID="txtKadi" runat="server"></asp:TextBox>
        <p></p>
        Şifre:
    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnKaydet" runat="server" Text="Giriş Yap" OnClick="btnKaydet_Click" />

        <p></p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </div>
</asp:Content>
