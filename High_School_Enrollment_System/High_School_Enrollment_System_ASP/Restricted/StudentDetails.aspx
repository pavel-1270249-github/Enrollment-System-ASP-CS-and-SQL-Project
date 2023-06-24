<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="Scripts/jquery-3.6.3.js"></script>
    <link href="/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="/Content/bootstrap-datepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>Students Details</h3>
            <span><a class="btn btn-outline-primary mb-3" href="AddStudentDetails.aspx">New Student Details</a></span>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="dsStudentDetails" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="DetailID" PageSize="9">
                <Columns>
                    <asp:BoundField DataField="DetailID" HeaderText="DetailID" InsertVisible="False" ReadOnly="True" SortExpression="DetailID" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="FathersName" HeaderText="FathersName" SortExpression="FathersName" />
                    <asp:BoundField DataField="FathersOccupation" HeaderText="FathersOccupation" SortExpression="FathersOccupation" />
                    <asp:BoundField DataField="MothersName" HeaderText="MothersName" SortExpression="MothersName" />
                    <asp:BoundField DataField="MothersOccupation" HeaderText="MothersOccupation" SortExpression="MothersOccupation" />
                    <asp:BoundField DataField="GuardiansName" HeaderText="GuardiansName" SortExpression="GuardiansName" />
                    <asp:BoundField DataField="GuardiansOccupation" HeaderText="GuardiansOccupation" SortExpression="GuardiansOccupation" />
                    <asp:BoundField DataField="ParentsAddress" HeaderText="ParentsAddress" SortExpression="ParentsAddress" />
                    <asp:BoundField DataField="ParentsPhone" HeaderText="ParentsPhone" SortExpression="ParentsPhone" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsStudentDetails" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [StudentDetails] WHERE [DetailID] = @DetailID" InsertCommand="INSERT INTO [StudentDetails] ([StudentID], [FathersName], [FathersOccupation], [MothersName], [MothersOccupation], [GuardiansName], [GuardiansOccupation], [ParentsAddress], [ParentsPhone]) VALUES (@StudentID, @FathersName, @FathersOccupation, @MothersName, @MothersOccupation, @GuardiansName, @GuardiansOccupation, @ParentsAddress, @ParentsPhone)" SelectCommand="SELECT * FROM [StudentDetails]" UpdateCommand="UPDATE [StudentDetails] SET [StudentID] = @StudentID, [FathersName] = @FathersName, [FathersOccupation] = @FathersOccupation, [MothersName] = @MothersName, [MothersOccupation] = @MothersOccupation, [GuardiansName] = @GuardiansName, [GuardiansOccupation] = @GuardiansOccupation, [ParentsAddress] = @ParentsAddress, [ParentsPhone] = @ParentsPhone WHERE [DetailID] = @DetailID">
                <DeleteParameters>
                    <asp:Parameter Name="DetailID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StudentID" Type="Int32" />
                    <asp:Parameter Name="FathersName" Type="String" />
                    <asp:Parameter Name="FathersOccupation" Type="String" />
                    <asp:Parameter Name="MothersName" Type="String" />
                    <asp:Parameter Name="MothersOccupation" Type="String" />
                    <asp:Parameter Name="GuardiansName" Type="String" />
                    <asp:Parameter Name="GuardiansOccupation" Type="String" />
                    <asp:Parameter Name="ParentsAddress" Type="String" />
                    <asp:Parameter Name="ParentsPhone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentID" Type="Int32" />
                    <asp:Parameter Name="FathersName" Type="String" />
                    <asp:Parameter Name="FathersOccupation" Type="String" />
                    <asp:Parameter Name="MothersName" Type="String" />
                    <asp:Parameter Name="MothersOccupation" Type="String" />
                    <asp:Parameter Name="GuardiansName" Type="String" />
                    <asp:Parameter Name="GuardiansOccupation" Type="String" />
                    <asp:Parameter Name="ParentsAddress" Type="String" />
                    <asp:Parameter Name="ParentsPhone" Type="String" />
                    <asp:Parameter Name="DetailID" Type="Int32" />
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
