<%@ Page Title="View Employee Data" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="testapp.Table" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h2 class="text-center">View Employee table</h2>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <div class="table-responsive">
                    <asp:GridView ID="emptable" runat="server" AutoGenerateColumns="false"
	            AllowSorting="True" AllowPaging="True"
                PageSize="8" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="emptable_PageIndexChanging"
                Width="100%" CssClass="table table-striped table-bordered table-hover">
                        <Columns>
                            <asp:BoundField DataField="EMP_ID" HeaderText="Employee ID" />
                            <asp:BoundField DataField="EMP_FNAME" HeaderText="First Name" />
                            <asp:BoundField DataField="EMP_LNAME" HeaderText="Last Name" />
                            <asp:BoundField DataField="EMP_EMAIL" HeaderText="Email ID" />
                            <asp:BoundField DataField="EMP_GENDER" HeaderText="Gender" />
                            <asp:BoundField DataField="EMP_QUALIFICATION" HeaderText="Qualifications" />
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="imgemp" Width="93.6px" Height="120px" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <asp:Label ID="lblHidden" Width="100%" runat="server" Text="Label" CssClass="control-label text-center h4">No data available currently</asp:Label>
    </div>
</asp:Content>  