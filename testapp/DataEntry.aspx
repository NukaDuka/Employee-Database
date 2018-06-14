<%@ Page Title="Enter Employee Data" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="testapp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Enter details</h2>
        <div class="form-horizontal">
                <div class="form-group row">                     
                    <asp:Label ID="lbFName" runat="server" Text="First Name: " CssClass="control-label col col-lg-2"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:TextBox ID="txFName" runat="server" CssClass="form-control" placeholder="First Name" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                </div>  
                <div class="form-group row">
                    <asp:Label ID="lbLName" runat="server" Text="Last Name: " CssClass="col col-lg-2 control-label"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:TextBox ID="txLName" runat="server" CssClass="form-control" placeholder="Last Name" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="lbEmail" runat="server" Text="Email: " CssClass="col col-lg-2 control-label"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:TextBox ID="txEmail" runat="server" CssClass="col form-control" placeholder="example@abc.xyz" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                </div>  
                <div class="form-group row">
                    <asp:Label ID="lbID" runat="server" Text="Employee ID: " CssClass="col col-lg-2 control-label"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:TextBox ID="txID" runat="server" CssClass="col form-control" placeholder="9000XXXX" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>  
                </div>
                <div class="form-group row">
                    <asp:Label ID="lbGender" runat="server" Text="Gender: " CssClass="col col-lg-2 control-label"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:RadioButtonList ID="rdGender" RepeatLayout="Flow" RepeatDirection="Horizontal" runat="server">
                                <asp:ListItem class="font-weight-normal radio-inline" Text="Male"></asp:ListItem>
                                <asp:ListItem class="font-weight-normal radio-inline" Text="Female"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                        
                </div>
                <div class="form-group row">
                    <asp:Label ID="lbQu" runat="server" Text="Qualifications: " CssClass="col col-lg-2 control-label"></asp:Label>
                    <div class="col col-lg-10">
                        <div class="input-group input-group-sm">
                            <asp:DropDownList ID="ddQu" runat="server" CssClass="form-control">
                                <asp:ListItem Value="a" Text="--Select qualification--"></asp:ListItem>
                                <asp:ListItem Value="1" Text="7th grade"></asp:ListItem>
                                <asp:ListItem Value="2" Text="10th Grade"></asp:ListItem>
                                <asp:ListItem Value="3" Text="12th Grade"></asp:ListItem>
                                <asp:ListItem Value="4" Text="Graduation"></asp:ListItem>
                                <asp:ListItem Value="5" Text="Post-graduation"></asp:ListItem>
                             </asp:DropDownList>
                        </div>
                    </div>
                </div>
            <div class="form-group row">
                <asp:Label ID="lbImg" runat="server" CssClass="col col-lg-2 control-label" Text="Upload Image: "></asp:Label>
                <div class="col col-lg-10">
                    <div class="input-group input-group-sm">
                        <asp:FileUpload ID="imageFile" CssClass="form-control-file" runat="server"/>
                    </div>
                </div>
            </div>
                <div class="form-group row"> 
                    <div class="col col-lg-2"></div>
                    <div class="btn-group col col-lg-10">
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="submit_Click" />
                        <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-default" OnClick="Reload_Page" />
                    </div>
                </div>
        </div>
    </div>
    
    <!--<asp:SqlDataSource ID="update" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EMP_ID] = @EMP_ID" InsertCommand="INSERT INTO [Employee] ([EMP_ID], [EMP_FNAME], [EMP_LNAME], [EMP_EMAIL], [EMP_GENDER], [EMP_QUALIFICATION]) VALUES (@EMP_ID, @EMP_FNAME, @EMP_LNAME, @EMP_EMAIL, @EMP_GENDER, @EMP_QUALIFICATION)" SelectCommand="SELECT [EMP_ID], [EMP_FNAME], [EMP_LNAME], [EMP_EMAIL], [EMP_GENDER], [EMP_QUALIFICATION] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EMP_FNAME] = @EMP_FNAME, [EMP_LNAME] = @EMP_LNAME, [EMP_EMAIL] = @EMP_EMAIL, [EMP_GENDER] = @EMP_GENDER, [EMP_QUALIFICATION] = @EMP_QUALIFICATION WHERE [EMP_ID] = @EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="EMP_FNAME" Type="String" />
            <asp:Parameter Name="EMP_LNAME" Type="String" />
            <asp:Parameter Name="EMP_EMAIL" Type="String" />
            <asp:Parameter Name="EMP_GENDER" Type="String" />
            <asp:Parameter Name="EMP_QUALIFICATION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EMP_FNAME" Type="String" />
            <asp:Parameter Name="EMP_LNAME" Type="String" />
            <asp:Parameter Name="EMP_EMAIL" Type="String" />
            <asp:Parameter Name="EMP_GENDER" Type="String" />
            <asp:Parameter Name="EMP_QUALIFICATION" Type="String" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>-->
    </asp:Content>
