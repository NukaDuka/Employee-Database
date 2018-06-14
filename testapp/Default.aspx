<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testapp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h2 class="text-center">Employee database access portal</h2>
        <div class="row align-self-center">
            <div class="col-4 col-lg-4"></div>
            <div class="list-group col-4 col-lg-4">
                <a href="/DataEntry.aspx" class="list-group-item text-center">Enter employee details in database</a>
                <a href="/Table.aspx" class="list-group-item text-center">View database</a>
            </div>
        </div>
    </div>
</asp:Content>
