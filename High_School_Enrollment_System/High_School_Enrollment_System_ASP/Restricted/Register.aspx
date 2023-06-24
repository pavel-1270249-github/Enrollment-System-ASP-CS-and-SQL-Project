<%@ Page Title="Register" Language="C#" MasterPageFile="~/High_School_Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="High_School_Enrollment_System_ASP.Restricted.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>Registration Here</h3>
            <div class="alert alert-warning alert-dismissible fade show" role="alert" id="alert" runat="server" visible="false">
                <strong>Error !</strong> Registration Fail!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <div class="form-group row mb-1">
                <label class="col-form-label col-form-label-sm col-2 text-end">
                    User Name
                </label>
                <div class="col-4">
                    <asp:TextBox  ID="username" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="username" ID="RequiredFieldValidator1" CssClass="text-danger small" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row mb-1">
                <label class="col-form-label col-form-label-sm col-2 text-end">
                    Password
                </label>
                <div class="col-4">
                    <asp:TextBox TextMode="Password" ID="password" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="password" ID="RequiredFieldValidator2" CssClass="text-danger small" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row mb-1">
                <label class="col-form-label col-form-label-sm col-2 text-end">
                    Re-type Password
                </label>
                <div class="col-4">
                    <asp:TextBox TextMode="Password" ID="confirmPassword" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="password" Display="Dynamic" ID="RequiredFieldValidator3" CssClass="text-danger small" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ControlToValidate="confirmPassword" ControlToCompare="password" Operator="Equal" Type="String" ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group row mb-1">
                <div class="col-4 offset-2">
                    <asp:Button CssClass="btn btn-primary btn-sm" OnClick="Button1_Click" ID="Button1" runat="server" Text="Register" />
                </div>
            </div>
            <div class="form-group row mb-1">
                <div class="col-4">
                <a class="btn btn-outline-primary mb-3" href="/Restricted/Login.aspx">For Login Click Here</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
