<%@ Page Title="Success" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="testapp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="text-success text-center">Success!</h1>
        <p class="lead text-center">The employee details have been entered into the database successfully!</p>
        <div class="row align-self-center">
            <div class="col-4 col-lg-4"></div>
            <div class="list-group col-4 col-lg-4">
                <a href="/DataEntry.aspx" class="list-group-item text-center">Enter new data</a>
                <a href="/Default.aspx" class="list-group-item text-center">Back to home page</a>
            </div>
        </div>
    </div>
</asp:Content>