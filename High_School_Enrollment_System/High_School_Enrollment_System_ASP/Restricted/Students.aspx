<%@ Page Title="Students" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.6.3.js"></script>
    <link href="/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="/Content/bootstrap-datepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h3 style="text-align:center; color:darkcyan; font-weight:bold;font-size:250%;">Students</h3>
            <span><a class="btn btn-outline-primary mb-3" href="AddStudents.aspx">Add New Student</a></span>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="StudentID" DataSourceID="dsStudentsGrid">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="Stu.ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="F. Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="L. Name" SortExpression="LastName" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BirthDate" HeaderText="DOB" SortExpression="BirthDate" ReadOnly="False" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="BirthPlace" HeaderText="Birth Place" SortExpression="BirthPlace" />
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                    <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                    <asp:BoundField DataField="StudentPhone" HeaderText="St. Phone" SortExpression="StudentPhone" />
                    <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:TemplateField HeaderText="St.Image" SortExpression="StudentImage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudentImage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image CssClass="rounded-4" style="width:60px" ID="Image1" ImageUrl='<%# Eval("StudentImage","~/Uploads/{0}") %>' runat="server" />
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsStudentsGrid" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = @StudentID" InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [Age], [Gender], [BirthDate], [BirthPlace], [Nationality], [Religion], [StudentPhone], [Status], [StudentImage], [Address]) VALUES (@FirstName, @LastName, @Age, @Gender, @BirthDate, @BirthPlace, @Nationality, @Religion, @StudentPhone, @Status, @StudentImage, @Address)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Gender] = @Gender, [BirthDate] = @BirthDate, [BirthPlace] = @BirthPlace, [Nationality] = @Nationality, [Religion] = @Religion, [StudentPhone] = @StudentPhone, [Status] = @Status, [StudentImage] = @StudentImage, [Address] = @Address WHERE [StudentID] = @StudentID">
                <DeleteParameters>
                    <asp:Parameter Name="StudentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="BirthDate" />
                    <asp:Parameter Name="BirthPlace" Type="String" />
                    <asp:Parameter Name="Nationality" Type="String" />
                    <asp:Parameter Name="Religion" Type="String" />
                    <asp:Parameter Name="StudentPhone" Type="String" />
                    <asp:Parameter Name="Status" Type="Boolean" />
                    <asp:Parameter Name="StudentImage" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="BirthDate" />
                    <asp:Parameter Name="BirthPlace" Type="String" />
                    <asp:Parameter Name="Nationality" Type="String" />
                    <asp:Parameter Name="Religion" Type="String" />
                    <asp:Parameter Name="StudentPhone" Type="String" />
                    <asp:Parameter Name="Status" Type="Boolean" />
                    <asp:Parameter Name="StudentImage" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="StudentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="/Scripts/jquery-3.6.3.js"></script>
    <script src="/Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(".date").datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</asp:Content>
