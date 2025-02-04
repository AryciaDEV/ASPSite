<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.cs" Inherits="Odevmoedcjvajsd.Register" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
  <h2>Kullanıcı Kayıt Formu</h2>
    Kullanıcı Adı: 
    <asp:TextBox ID="txtKadi" runat="server"></asp:TextBox>
    <p></p>
    Adı: 
    <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
    <p></p>
    Soyadı:
    <asp:TextBox ID="txtSoyadi" runat="server"></asp:TextBox>
    <p></p>
    E-posta:
    <asp:TextBox ID="txtEposta" runat="server" TextMode="Email"></asp:TextBox>
    <p></p>
    Şifre:
    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
    <p></p>
    <asp:Button ID="btnKaydet" runat="server" Text="Kayıt Ol" OnClick="btnKaydet_Click" />
</div>
</asp:Content> 
