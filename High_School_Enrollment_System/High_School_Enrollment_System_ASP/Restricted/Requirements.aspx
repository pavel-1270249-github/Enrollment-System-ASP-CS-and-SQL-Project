<%@ Page Title="Requirements" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Requirements.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Requirements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/bootstrap.bundle.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
         <div class="col-12">
            <h3 style="color:darkcyan; font-weight:bold;font-size:250%; text-align:center;" >Student Requirements</h3>
             <asp:ListView ID="ListView1" runat="server" DataKeyNames="RequirementsID" DataSourceID="dsRequirements" InsertItemPosition="LastItem">
                 
                 <EditItemTemplate>
                     <tr style="background-color: #999999;">
                         <td>
                             <asp:Button CssClass="btn btn-success btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                             <asp:Button CssClass="btn btn-secondary btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                         </td>
                         <td>
                             <asp:Label ID="RequirementsIDLabel1" runat="server" Text='<%# Eval("RequirementsID") %>' />

                         </td>
                         <td>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsStudents" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ValidationGroup="ed" CssClass="text-dark" ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" runat="server" Text="StudentID is required!" ErrorMessage="StudentID is required!"></asp:RequiredFieldValidator>

   
                         </td>
                         <td>
                             <asp:TextBox CssClass ="form-control" ID="EntranceExamResultTextBox" runat="server" Text='<%# Bind("EntranceExamResult") %>' placeholder="Marks from 100 to 500" />
                             <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="EntranceExamResultTextBox" ErrorMessage="Invalid Marks !!" MaximumValue="500" MinimumValue="100" Type="Integer"></asp:RangeValidator>

                         </td>
                         <td>
                             <asp:CheckBox  ID="CertificateOfTransferCheckBox" runat="server" Checked='<%# Bind("CertificateOfTransfer") %>' />
                         </td>
                     </tr>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                         <tr>
                             <td>No data to show!</td>
                         </tr>
                     </table>
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <tr style="">
                         <td>
                             <asp:Button CssClass="btn btn-success btn-sm" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                             <asp:Button CssClass="btn btn-primary btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                         </td>
                         <td>&nbsp;</td>
                         <td>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsStudents" SelectedValue='<%# Bind("StudentID") %>' AppendDataBoundItems="true" DataTextField="FirstName" DataValueField="StudentID" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <%-- <asp:TextBox CssClass ="form-control" ID="StudentIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' />--%>
                         </td>
                         <td>
                             <asp:TextBox CssClass ="form-control " ID="EntranceExamResultTextBox" runat="server" Text='<%# Bind("EntranceExamResult") %>' placeholder="Marks from 100 to 500" />
                             <asp:RangeValidator CssClass="form-control"  ID="RangeValidator2" runat="server" ControlToValidate="EntranceExamResultTextBox" ErrorMessage="Invalid Marks !!" MaximumValue="500" MinimumValue="100" Type="Integer"></asp:RangeValidator>

                         </td>
                         <td>
                             <asp:CheckBox ID="CertificateOfTransferCheckBox" runat="server" Checked='<%# Bind("CertificateOfTransfer") %>' />
                         </td>
                     </tr>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <tr style="background-color: #E0FFFF;color: #333333;">
                         <td>
                             <asp:Button CssClass="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                             <asp:Button CssClass="btn btn-success btn-sm" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                         </td>
                         <td>
                             <asp:Label ID="RequirementsIDLabel" runat="server" Text='<%# Eval("RequirementsID") %>' />
                         </td>
                         <td>
                             <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                         </td>
                         <td>
                             <asp:Label CssClass="col-form-label" ID="EntranceExamResultLabel" runat="server" Text='<%# Eval("EntranceExamResult") %>' />
                         </td>
                         <td>
                             <asp:CheckBox ID="CertificateOfTransferCheckBox" runat="server" Checked='<%# Eval("CertificateOfTransfer") %>' Enabled="false" />
                         </td>
                     </tr>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <div class="col-12">
                         <table  runat="server" class="table">
                         <tr runat="server">
                             <td runat="server">
                                 <table class="table table-bordered" id="itemPlaceholderContainer"  runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                     <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                         <th style="align-content:center" runat="server"></th>
                                         <th >Requirements ID</th>
                                         <th  runat="server">Student ID</th>
                                         <th  runat="server">Entrance Exam Result</th>
                                         <th  runat="server">Certificate Of Transfer</th>
                                     </tr>
                                     <tr id="itemPlaceholder" runat="server">
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                         <tr runat="server">
                             <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                 <asp:DataPager ID="DataPager1" runat="server">
                                     <Fields>
                                         <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                     </Fields>
                                 </asp:DataPager>
                             </td>
                         </tr>
                     </table>
                     </div>
                 </LayoutTemplate>
                 
             </asp:ListView>
             <br />
             <asp:SqlDataSource ID="dsRequirements" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" DeleteCommand="DELETE FROM [Requirements] WHERE [RequirementsID] = @RequirementsID" InsertCommand="INSERT INTO [Requirements] ([StudentID], [EntranceExamResult], [CertificateOfTransfer]) VALUES (@StudentID, @EntranceExamResult, @CertificateOfTransfer)" SelectCommand="SELECT * FROM [Requirements]" UpdateCommand="UPDATE [Requirements] SET [StudentID] = @StudentID, [EntranceExamResult] = @EntranceExamResult, [CertificateOfTransfer] = @CertificateOfTransfer WHERE [RequirementsID] = @RequirementsID">
                 <DeleteParameters>
                     <asp:Parameter Name="RequirementsID" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="StudentID" Type="Int32" />
                     <asp:Parameter Name="EntranceExamResult" Type="String" />
                     <asp:Parameter Name="CertificateOfTransfer" Type="Boolean" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="StudentID" Type="Int32" />
                     <asp:Parameter Name="EntranceExamResult" Type="String" />
                     <asp:Parameter Name="CertificateOfTransfer" Type="Boolean" />
                     <asp:Parameter Name="RequirementsID" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
             <br />
             <asp:SqlDataSource ID="dsStudents" runat="server" ConnectionString="<%$ ConnectionStrings:HighSchoolEnrollmentSystemDB %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
          </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
