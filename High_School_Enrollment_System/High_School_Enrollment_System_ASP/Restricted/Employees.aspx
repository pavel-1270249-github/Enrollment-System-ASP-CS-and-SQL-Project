<%@ Page Title="Employees" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.6.3.js"></script>
    <link href="/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="/Content/bootstrap-datepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">


    <div class="row">
        <div class="col-6">
            <h3 style="text-align: center; color: darkcyan; font-weight: bold; font-size: 200%;">Add New Employee</h3>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmployeeID" Width="1000px" DataSourceID="dsEmployee" OnItemInserting="FormView1_ItemInserting" DefaultMode="Insert">
                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">First Name</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" TextMode="SingleLine" Placeholder="First Name" ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="FirstNameTextBox" ID="RequiredFieldValidator1" runat="server" Text="First Name is required!" ErrorMessage="First Name is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Last Name</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="LastNameTextBox" TextMode="SingleLine" Placeholder="Last Name" runat="server" Text='<%# Bind("LastName") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="LastNameTextBox" ID="RequiredFieldValidator2" runat="server" Text="Last Name is required!" ErrorMessage="Last Name is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Salary</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="SalaryTextBox" TextMode="SingleLine" Placeholder="Salary in Integer Value" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="SalaryTextBox" ID="RequiredFieldValidator3" runat="server" Text="Salary is required!" ErrorMessage="Salary is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Email</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" TextMode="Email" CssClass="form-control"  ID="EmailTextBox" Placeholder="Valid Email Address" runat="server" Text='<%# Bind("Email") %>'/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" ID="RequiredFieldValidator5"  runat="server" ControlToValidate="EmailTextBox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ValidationGroup="ins" ID="RegularExpressionValidator1" CssClass="text-danger" Text="Email is invalid!" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic" ErrorMessage = "Invalid email address" ControlToValidate="EmailTextBox" runat="server"></asp:RegularExpressionValidator>
                            
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Employee Image</label>
                        <div class="col-4">
                            <asp:FileUpload ValidationGroup="ins" CssClass="form-control" ID="EmployeeImage" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("EmployeeImage") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="EmployeeImage" CssClass="text-danger" Text="Employee Image is required!" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Employee Image is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <div class="col-4 offset-2">
                            <asp:LinkButton ValidationGroup="ins" CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>
                </InsertItemTemplate>
                <PagerSettings Mode="NextPrevious" />
                <PagerStyle BorderStyle="Solid" CssClass="btn btn-success" />
            </asp:FormView>
        </div>
        <div class="col-6">
            <h3 style="text-align: center; color: darkcyan; font-weight: bold; font-size: 200%;">Employees</h3>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="600px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="dsEmployee">
                <Fields>
                    <asp:TemplateField HeaderText="Employee ID" InsertVisible="False" SortExpression="EmployeeID">
                        <EditItemTemplate>
                            <asp:Label CssClass="form-label text-end" ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label style="font-size:150%; font:500;" CssClass="form-label text-end text-lg-start " ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label style="font-size:150%; font:500;"  CssClass="form-label text-end" ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Last Name" SortExpression="LastName">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label style="font-size:150%; font:500;"  ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Bind("Salary" , "{0:0.00}") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label style="font-size:150%; font:500;"  CssClass="form-label text-end" ID="Label4" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label style="font-size:150%; font:500;"  CssClass="form-label text-end" ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Employee Image" SortExpression="EmployeeImage">
                        <EditItemTemplate>
                            <asp:FileUpload  CssClass="form-control" ID="EmployeeImage" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("EmployeeImage") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="EmployeeImage" CssClass="text-danger" Text="Employee Image is required!" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Employee Image is required!"></asp:RequiredFieldValidator>
                           <%-- <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" Text='<%# Bind("EmployeeImage") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image Width="100px" ID="Image1" ImageUrl= '<%# Eval("EmployeeImage","~/Uploads/{0}") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass=" btn btn-outline-danger btn-sm m-1" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            </asp:DetailsView>
            
        </div>
    </div>
    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Salary], [Email], [EmployeeImage]) VALUES (@FirstName, @LastName, @Salary, @Email, @EmployeeImage)" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Salary] = @Salary, [Email] = @Email, [EmployeeImage] = @EmployeeImage WHERE [EmployeeID] = @EmployeeID">
        <DeleteParameters>
            <asp:Parameter Name="EmployeeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmployeeImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmployeeImage" Type="String" />
            <asp:Parameter Name="EmployeeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
