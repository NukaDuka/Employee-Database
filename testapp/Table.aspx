<%@ Page Title="View Employee Data" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="testapp.Table" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h2 class="text-center">View Employee table</h2>
        <asp:GridView ID="emptable" runat="server" AutoGenerateColumns="false"
	AllowSorting="True" AllowPaging="True"
    PageSize="4" OnRowDataBound="OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="EMP_ID" HeaderText="Employee ID" />
                <asp:BoundField DataField="EMP_FNAME" HeaderText="First Name" />
                <asp:BoundField DataField="EMP_LNAME" HeaderText="Last Name" />
                <asp:BoundField DataField="EMP_EMAIL" HeaderText="Email ID" />
                <asp:BoundField DataField="EMP_GENDER" HeaderText="Gender" />
                <asp:BoundField DataField="EMP_QUALIFICATION" HeaderText="Qualifications" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="imgemp" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>  