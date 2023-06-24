<%@ Page Title="Master Details" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="SemestersRequirements.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.SemestersRequirements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-6">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;">Semesters</h3>
            
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="dsStudents">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" SortExpression="BirthPlace" />
                    <asp:BoundField DataField="StudentPhone" HeaderText="StudentPhone" SortExpression="StudentPhone" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-6">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;">Students Master Details</h3>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="dsSemester">
                <Columns>
                    <asp:BoundField DataField="SemesterId" HeaderText="SemesterId" InsertVisible="False" ReadOnly="True" SortExpression="SemesterId" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField ControlStyle-CssClass="date" DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0: yyyy-MM-dd}" />
                    <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" SortExpression="BirthPlace" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsSemester" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Semesters] WHERE [SemesterId] = @SemesterId" InsertCommand="INSERT INTO [Semesters] ([Year], [Semester], [StudentID]) VALUES (@Year, @Semester, @StudentID)" SelectCommand="SELECT Semesters.SemesterId, Semesters.Year, Semesters.Semester, Semesters.StudentID, Students.FirstName, Students.Age, Students.Gender, Students.BirthDate, Students.BirthPlace, Students.Nationality, Students.StudentPhone FROM Semesters INNER JOIN Students ON Semesters.StudentID = Students.StudentID" UpdateCommand="UPDATE [Semesters] SET [Year] = @Year, [Semester] = @Semester, [StudentID] = @StudentID WHERE [SemesterId] = @SemesterId">
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
    <asp:SqlDataSource ID="dsStudents" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" SelectCommand="SELECT [FirstName], [Age], [Gender], [BirthDate], [BirthPlace], [StudentPhone], [StudentImage] FROM [Students]"></asp:SqlDataSource>
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
