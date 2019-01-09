﻿<%@ Page Language="C#" MasterPageFile="Layouts/ControlTemplate.master" Inherits="Porthole.Pages.Login" CodeBehind="~/Login.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphForm" Runat="server">
<div class="columns">
    <div class="column col-8">
        <form runat="server" class="form-horizontal">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a style="color:#62bad1" href="#" onclick="document.getElementById('cphMain_cphContent_cphForm_txtEmail').value='s1234112@ap.edu.sg';document.getElementById('cphMain_cphContent_cphForm_txtPassword').value='p@55Student';return false;">login as Amy</a></li>
                <li class="breadcrumb-item"><a style="color:#62bad1" href="#" onclick="document.getElementById('cphMain_cphContent_cphForm_txtEmail').value='Peter_Ghim@ap.edu.sg';document.getElementById('cphMain_cphContent_cphForm_txtPassword').value='p@55Mentor';return false;">login as Teacher</a></li>
                <li class="breadcrumb-item"><a style="color:#62bad1" href="#" onclick="document.getElementById('cphMain_cphContent_cphForm_txtEmail').value='admin@ap.edu.sg';document.getElementById('cphMain_cphContent_cphForm_txtPassword').value='passAdmin';return false;">login as Admin</a></li>
            </ul>
            <div class="form-group columns">
                <div class="column col-3 col-sm-12">
                    <label class="form-label" for="txtEmail">email</label>
                </div>
                <div class="column col-9 col-sm-12">
                    <asp:TextBox runat="server" class="form-input" id="txtEmail" placeholder="you know the one with the @"></asp:TextBox>
                </div>
            </div>

            <div class="form-group columns">
                <div class="column col-3 col-sm-12">
                    <label class="form-label" for="txtPassword">password</label>
                </div>
                <div class="column col-9 col-sm-12">
                    <asp:TextBox runat="server" class="form-input" TextMode="Password" id="txtPassword" placeholder="the one you dont share"></asp:TextBox>
                </div>
            </div>
            <a href="/Pages/Register.aspx">are you a parent? register here!</a>

            <div class="form-group columns">
                <div class="column col-9 col-sm-12">
                    <asp:Label runat="server" id="lblError" class="text-error" />
                </div>
                <div class="column col-3 col-sm-12">
                    <div class="text-right">
                        <asp:Button runat="server" id="btnLogin" OnClick="btnLogin_Click" class="btn btn-primary" Text="let's go" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</asp:Content>