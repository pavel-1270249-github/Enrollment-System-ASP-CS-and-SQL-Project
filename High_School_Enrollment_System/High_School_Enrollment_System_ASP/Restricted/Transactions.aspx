<%@ Page Title="Transactions" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.bundle.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <div class="row">
         <div class="col-6">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;" >Transations</h3>
             <asp:ValidationSummary CssClass="text-danger text-decoration-none" ValidationGroup="grid" ID="ValidationSummary1" runat="server" />
             
             <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="dsTransation" PageSize="6" CssClass="table table-bordered">
                 <Columns>
                     <asp:TemplateField HeaderText="Student ID" SortExpression="StudentID">
                         <EditItemTemplate>
                             <%--<asp:TextBox ValidationGroup="grid" CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("StudentID") %>' ></asp:TextBox>--%>
                             <asp:DropDownList ValidationGroup="grid" CssClass="form-select" DataSourceID="dsStudents" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ValidationGroup="grid" CssClass="text-danger" ControlToValidate="DropDownList1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="StudentID is required!"></asp:RequiredFieldValidator>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label class="col-form-label col-2" ID="Label1" runat="server" Text='<%# Bind("StudentID") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Monthly Fees" SortExpression="MonthlyFees">
                         <EditItemTemplate>
                             <asp:TextBox ValidationGroup="grid" CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("MonthlyFees","{0:0.00}") %>' Placeholder="Monthly Fees"></asp:TextBox>
                           <asp:RequiredFieldValidator ValidationGroup="grid" CssClass="text-danger" ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Monthly Fees is required!"></asp:RequiredFieldValidator>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label class="col-form-label col-2" ID="Label2" runat="server" Text='<%# Bind("MonthlyFees","{0:0.00}") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Payment Date" SortExpression="PaymentDate">
                         <EditItemTemplate>
                             <asp:TextBox ValidationGroup="grid" CssClass="form-control date" ID="TextBox3" runat="server" Text='<%# Bind("PaymentDate", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                           <asp:RequiredFieldValidator ValidationGroup="grid" CssClass="text-danger" ControlToValidate="TextBox3" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Payment Date is required!"></asp:RequiredFieldValidator>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label class="col-form-label col-2 date" ID="Label3" runat="server" Text='<%# Bind("PaymentDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField ShowHeader="False">
                         <EditItemTemplate> 
                             <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="grid" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="grid" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton CssClass="btn btn-success btn-sm" ValidationGroup="grid" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ValidationGroup="grid" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns> 
             </asp:GridView>
        </div>
         <div class="col-6">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;" >Add New Transations</h3>
             <asp:ValidationSummary CssClass="text-danger text-decoration-none" ValidationGroup="detail" ID="ValidationSummary2" runat="server" />
             <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="500px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TransactionID" DataSourceID="dsTransation" DefaultMode="Insert">
                 <Fields>
                     <asp:TemplateField HeaderText="Student ID" SortExpression="StudentID">
                         
                         <InsertItemTemplate>
                             <%--<asp:TextBox ValidationGroup="detail" CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("StudentID") %>'></asp:TextBox>--%>
                             <asp:DropDownList ValidationGroup="detail" CssClass="form-select" DataSourceID="dsStudents" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ValidationGroup="detail" CssClass="text-danger" ControlToValidate="DropDownList1" ID="RequiredFieldValidator11" runat="server" ErrorMessage="StudentID is required!"></asp:RequiredFieldValidator>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label  class="col-form-label col-2" ID="Label1" runat="server" Text='<%# Bind("StudentID") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Monthly Fees" SortExpression="MonthlyFees">
                         
                         <InsertItemTemplate>
                             <asp:TextBox ValidationGroup="detail" CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("MonthlyFees","{0:0.00}") %>'></asp:TextBox>
                           <asp:RequiredFieldValidator ValidationGroup="detail" CssClass="text-danger" ControlToValidate="TextBox2" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Monthly Fees is required!"></asp:RequiredFieldValidator>

                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label class="col-form-label col-2" ID="Label2" runat="server" Text='<%#Bind("MonthlyFees","{0:0.00}") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Payment Date" SortExpression="PaymentDate">
                         
                         <InsertItemTemplate>
                             <asp:TextBox ValidationGroup="detail" CssClass="form-control date" ID="TextBox3" runat="server" Text='<%# Bind("PaymentDate", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                           <asp:RequiredFieldValidator ValidationGroup="detail" CssClass="text-danger" ControlToValidate="TextBox3" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Payment Date is required!"></asp:RequiredFieldValidator>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label class="col-form-label col-2 date" ID="Label3" runat="server" Text='<%# Bind("PaymentDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField ShowHeader="False">
                        
                         <InsertItemTemplate>
                             <asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="detail" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="detail" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="detail" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-dark btn-sm" ValidationGroup="detail" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ValidationGroup="detail" ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Fields>
             </asp:DetailsView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsTransation" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Transactions] WHERE [TransactionID] = @TransactionID" InsertCommand="INSERT INTO [Transactions] ([StudentID], [MonthlyFees], [PaymentDate]) VALUES (@StudentID, @MonthlyFees, @PaymentDate)" SelectCommand="SELECT Transactions.TransactionID, Transactions.StudentID, Transactions.MonthlyFees, Transactions.PaymentDate FROM Transactions INNER JOIN Students ON Transactions.StudentID = Students.StudentID" UpdateCommand="UPDATE [Transactions] SET [StudentID] = @StudentID, [MonthlyFees] = @MonthlyFees, [PaymentDate] = @PaymentDate WHERE [TransactionID] = @TransactionID">
        <DeleteParameters>
            <asp:Parameter Name="TransactionID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudentID" Type="Int32" />
            <asp:Parameter Name="MonthlyFees" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="PaymentDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="StudentID" Type="Int32" />
            <asp:Parameter Name="MonthlyFees" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="PaymentDate" />
            <asp:Parameter Name="TransactionID" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsStudents" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="Scripts/jquery-3.6.3.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(".date").datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</asp:Content>
