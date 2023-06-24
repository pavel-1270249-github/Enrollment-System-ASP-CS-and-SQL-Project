<%@ Page Title="Add Student Details" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="AddStudentDetails.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.AddStudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.6.3.js"></script>
    <link href="/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="/Content/bootstrap-datepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <div class="row">
         <div class="col-12">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;" >Add Student Details</h3>
             <asp:FormView DataKeyNames="DetailID" CssClass="table table-bordered" DefaultMode="Insert" ID="FormView1" runat="server" DataSourceID="ODSStudentDetails">
                 <InsertItemTemplate>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">StudentID</label>
                         <div class="col-4">
                            <asp:DropDownList ValidationGroup="ins" AppendDataBoundItems="true" DataSourceID="ODSStudents" DataTextField="FirstName" DataValueField="StudentID" CssClass="form-select" ID="DetailIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' >
                                <asp:ListItem Value="" Selected="True">Select one</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="DetailIDTextBox" CssClass="text-danger" Text="Student ID is Required!" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Student ID is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Fathers Name</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="FathersNameTextBox" runat="server" Placeholder="Fathers Name" Text='<%# Bind("FathersName") %>' />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="FathersNameTextBox" CssClass="text-danger" Text="Fathers Name is Required!" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fathers Name is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Fathers Occupation</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="FathersOccupationTextBox" runat="server" Text='<%# Bind("FathersOccupation") %>' Placeholder="FathersOccupation" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="FathersOccupationTextBox" CssClass="text-danger" Text="Fathers Occupation is Required!" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fathers Occupation is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Mothers Name</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="MothersNameTextBox" runat="server" Text='<%# Bind("MothersName") %>' Placeholder="Mothers Name" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="MothersNameTextBox" CssClass="text-danger" Text="Mothers Name is Required!" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mothers Name is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Mothers Occupation</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="MothersOccupationTextBox" runat="server" Text='<%# Bind("MothersOccupation") %>' Placeholder="Mothers Occupation" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="MothersOccupationTextBox" CssClass="text-danger" Text="Mothers Occupation is Required!" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mothers Occupation is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Guardians Name</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="GuardiansNameTextBox" runat="server" Text='<%# Bind("GuardiansName") %>' Placeholder="Guardians Name" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="GuardiansNameTextBox" CssClass="text-danger" Text="Guardians Name is Required!" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Guardians Name is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Guardians Occupation</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="GuardiansOccupationTextBox" runat="server" Text='<%# Bind("GuardiansOccupation") %>' Placeholder="Guardians Occupation" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="GuardiansOccupationTextBox" CssClass="text-danger" Text="Guardians Occupation is Required!" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Guardians Occupation is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Parents Address</label>
                         <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="ParentsAddressTextBox" runat="server" Text='<%# Bind("ParentsAddress") %>' Placeholder="Parents Address" />
                             <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="ParentsAddressTextBox" CssClass="text-danger" Text="Parents Address is Required!" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Parents Address is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2">Parents Phone</label>
                         <div class="col-4">
                             <asp:TextBox CssClass="form-control" ValidationGroup="ins" ID="ParentsPhoneTextBox" runat="server" Text='<%# Bind("ParentsPhone") %>' Placeholder="Parents Phone" />
                            <asp:RequiredFieldValidator ValidationGroup="ins" ControlToValidate="ParentsPhoneTextBox" CssClass="text-danger" Text="Parents Phone is Required!" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Parents Phone is Required!"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="form-group row mb-1">
                        <div class="col-12">
                             <asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="ins" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                             &nbsp;<asp:LinkButton CssClass="btn btn-primary btn-sm" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>
                 </InsertItemTemplate>
             </asp:FormView>
         </div>

    </div>
    <asp:ObjectDataSource ID="ODSStudentDetails" runat="server" DataObjectTypeName="High_School_Enrollment_System_ASP.App_Code.AddStudentDetails" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="High_School_Enrollment_System_ASP.App_Code.AddStudentDetailsRepository" UpdateMethod="Update"></asp:ObjectDataSource>
             <asp:ObjectDataSource ID="ODSStudents" runat="server" SelectMethod="Get" TypeName="High_School_Enrollment_System_ASP.App_Code.StudentsRepository"></asp:ObjectDataSource>
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
