<%@ Page Title="Add Student" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.AddStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="Scripts/jquery-3.6.3.js"></script>
    <link href="/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="/Content/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.bundle.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
         <div class="col-12">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;" >Add New Student</h3>
            <asp:FormView RenderOuterTable="False" ID="FormView1" runat="server" DefaultMode="Insert" DataKeyNames="StudentID" DataSourceID="dsStudents" OnItemInserting="FormView1_ItemInserting1">

                

                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">First Name</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="FirstName" runat="server" TextMode="SingleLine" Placeholder="First Name" Text='<%# Bind("FirstName") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="FirstName" ID="RequiredFieldValidator1" runat="server" Text="First Name is required!" ErrorMessage="First Name is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Last Name</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="LastName" runat="server" TextMode="SingleLine" Placeholder="Last Name" Text='<%# Bind("LastName") %>'/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="LastName" ID="RequiredFieldValidator2" runat="server" Text="Last Name is required!"  ErrorMessage="Last Name is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Age</label>
                        <div class="col-4">
                            <asp:TextBox  ValidationGroup="ins" CssClass="form-control" ID="Age" runat="server" Placeholder="Numbers Only" Text='<%# Bind("Age") %>' TextMode="Number" />
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="Age" ID="RequiredFieldValidator3" runat="server" Text="Input Age in numbers only!"  ErrorMessage="Input Age in numbers only!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Gender</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="Gender" runat="server" Text='<%# Bind("Gender") %>' Placeholder="Male/Female" TextMode="SingleLine"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="Gender" ID="RequiredFieldValidator4" runat="server" Text="Male/Female Only!"  ErrorMessage="Male/Female Only!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">DOB</label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control date" ValidationGroup="ins" ID="BirthDate" runat="server" Text='<%# Bind("BirthDate", "{0:yyyy-MM-dd}") %>' TextMode="Date"/>
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="ins" CssClass="text-danger" ControlToValidate="BirthDate" ID="RequiredFieldValidator5" runat="server" Text="Birth Date is Required!" ErrorMessage="Birth Date is Required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Birth Place</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="BirthPlace" runat="server" Text='<%# Bind("BirthPlace") %>' Placeholder="Distric Name" TextMode="SingleLine"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="BirthPlace" ID="RequiredFieldValidator6" runat="server" Text="District Name Only!"  ErrorMessage="District Name Only!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Nationality</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="Nationality" runat="server" Text='<%# Bind("Nationality") %>'  TextMode="SingleLine" Placeholder="Nationality"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="Nationality" ID="RequiredFieldValidator7" runat="server" Text="Nationality is Required!"  ErrorMessage="Nationality is Required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Religion</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="Religion" runat="server" Text='<%# Bind("Religion") %>'  TextMode="SingleLine" Placeholder="Religion"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="Religion" ID="RequiredFieldValidator8" runat="server" Text="Religion is Required!"  ErrorMessage="Religion is Required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Student Phone</label>
                        <div class="col-4">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="StudentPhone" runat="server" Text='<%# Bind("StudentPhone") %>'  TextMode="SingleLine" Placeholder="Student Phone Example: (+8801XXXXXXXXX)"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="StudentPhone" ID="RequiredFieldValidator9" runat="server" Text="Student Phone Number is Required!"  ErrorMessage="Student Phone Number is Required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Student Status</label>
                        <div class="col-4 pt-2">
                            <asp:CheckBox ID="OnSaleCheckBox" runat="server" Checked='<%# Bind("Status") %>' />
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Student Image</label>
                        <div class="col-4">
                            <asp:FileUpload CssClass="form-control" ID="StudentImage" runat="server" />
                            <asp:HiddenField  ID="HiddenField1" runat="server" Value='<%# Bind("StudentImage") %>'/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="StudentImage" CssClass="text-danger" Text="Student Image is required!" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Student Image is required!"></asp:RequiredFieldValidator>
                        </div>
                    </div
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">Address</label>
                        <div class="col-4 offset-2">
                            <asp:TextBox ValidationGroup="ins" CssClass="form-control" ID="Address" runat="server" Text='<%# Bind("Address") %>' TextMode="MultiLine" Placeholder="Full Address"/>
                            <asp:RequiredFieldValidator ValidationGroup="ins" CssClass="text-danger" ControlToValidate="Address" ID="RequiredFieldValidator13" runat="server"  ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">

                        <div class="col-12">
                            <asp:LinkButton ValidationGroup="ins" CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary"  ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>
                   

                </InsertItemTemplate>
                
            </asp:FormView>
             <asp:SqlDataSource ID="dsStudents" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = @StudentID" InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [Age], [Gender], [BirthDate], [BirthPlace], [Nationality], [Religion], [StudentPhone], [Status], [StudentImage], [Address]) VALUES (@FirstName, @LastName, @Age, @Gender, @BirthDate, @BirthPlace, @Nationality, @Religion, @StudentPhone, @Status, @StudentImage, @Address)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Gender] = @Gender, [BirthDate] = @BirthDate, [BirthPlace] = @BirthPlace, [Nationality] = @Nationality, [Religion] = @Religion, [StudentPhone] = @StudentPhone, [Status] = @Status, [StudentImage] = @StudentImage, [Address] = @Address WHERE [StudentID] = @StudentID">
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
