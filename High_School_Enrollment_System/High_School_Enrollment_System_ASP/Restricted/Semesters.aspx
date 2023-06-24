<%@ Page Title="Semesters" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Semesters.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Semesters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h1>Semesters</h1>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="SemesterId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">

                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">

                        <td>
                            <asp:Label CssClass="form-label" ID="SemesterIdLabel1" runat="server" Text='<%# Eval("SemesterId") %>' />
                        </td>
                        <td>
                            <asp:TextBox CssClass ="form-control" ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="YearTextBox" ID="RequiredFieldValidator1" runat="server" Text="Year is required!" ErrorMessage="Year is required!"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox CssClass ="form-control" ID="SemesterTextBox" runat="server" Text='<%# Bind("Semester") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="SemesterTextBox" ID="RequiredFieldValidator2" runat="server" Text="Semester is required!" ErrorMessage="Semester is required!"></asp:RequiredFieldValidator>

                        </td>
                        <td>
                            <asp:DropDownList CssClass="form-select" DataSourceID="SqlDataSource2" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" runat="server" Text="StudentID is required!" ErrorMessage="StudentID is required!"></asp:RequiredFieldValidator>

                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-success" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass ="btn btn-secondary " ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data to view!</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">

                        <td>&nbsp;</td>
                        <td>

                            <asp:TextBox CssClass ="form-control" ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="YearTextBox" ID="RequiredFieldValidator1" runat="server" Text="Year is required!" ErrorMessage="Year is required!"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox CssClass ="form-control" ID="SemesterTextBox" runat="server" Text='<%# Bind("Semester") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="SemesterTextBox" ID="RequiredFieldValidator2" runat="server" Text="Semester is required!" ErrorMessage="Semester is required!"></asp:RequiredFieldValidator>

                        </td>
                        <td>
                            <asp:DropDownList CssClass="form-select" DataSourceID="SqlDataSource2" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" runat="server" Text="StudentID is required!" ErrorMessage="StudentID is required!"></asp:RequiredFieldValidator>                            
                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-secondary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">

                        <td>
                            <asp:Label ID="SemesterIdLabel" runat="server" Text='<%# Eval("SemesterId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemesterLabel" runat="server" Text='<%# Eval("Semester") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-danger" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button CssClass="btn btn-warning" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table class="table" runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table class=" table table-bordered " id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr  runat="server" style="background-color: #DCDCDC; color: #000000; align-content:center">

                                        <th runat="server">SemesterId</th>
                                        <th runat="server">Year</th>
                                        <th runat="server">Semester</th>
                                        <th runat="server">StudentID</th>
                                        <th runat="server"></th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>

            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Semesters] WHERE [SemesterId] = @SemesterId" InsertCommand="INSERT INTO [Semesters] ([Year], [Semester], [StudentID]) VALUES (@Year, @Semester, @StudentID)" SelectCommand="SELECT * FROM [Semesters]" UpdateCommand="UPDATE [Semesters] SET [Year] = @Year, [Semester] = @Semester, [StudentID] = @StudentID WHERE [SemesterId] = @SemesterId">
                <DeleteParameters>
                    <asp:Parameter Name="SemesterId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Year" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="StudentID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Year" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="StudentID" Type="Int32" />
                    <asp:Parameter Name="SemesterId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>


        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
