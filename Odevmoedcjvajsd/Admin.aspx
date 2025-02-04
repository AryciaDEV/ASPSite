<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="Odevmoedcjvajsd.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="col-md-3">
            <table class="table">
                <tr>
                    <th>No</th>
                    <th>Ad Soyad</th>
                </tr>


                <itemtemplate>
                    <tr>
                        <td><%# Eval("numara") %> </td>
                        <td><%# Eval("adsoyad") %>
                        </td>
                </itemtemplate>

            </table>
        </div>



    </main>

</asp:Content>
