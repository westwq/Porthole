﻿<%@ Page Language="C#" MasterPageFile="/Pages/Layouts/ControlTemplate.master" Inherits="Porthole.Pages.Controls.Student.UpdateProfile" CodeBehind="~/UpdateProfile.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="server">
    <h1>update profile</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphForm" Runat="server">
<div class="tile tile-centered">
    <div class="tile-icon">
        <img src="<%= CurrentStudent.Photo %>" class="avatar avatar-main" alt="avatar">
    </div>
    <div class="tile-content">
        <h1><%= CurrentStudent.Name %></h1>
        <p class="tile-subtitle text-gray">give us your information. we promise we won't sell it.</p>
    </div>
</div>

<div class="columns">
    <div class="column col-8">
        <form runat="server" class="form-horizontal">
            <div class="form-group">
                <div class="col-3 col-sm-12">
                    <label class="form-label" for="txtDescription">about me</label>
                </div>
                <div class="col-9 col-sm-12">
                    <asp:TextBox runat="server" class="form-input" id="txtDescription" placeholder="tell us a lil' bit about yourself" TextMode="MultiLine" Rows="8"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-3 col-sm-12">
                    <label class="form-label" for="txtURL">contacts</label>
                </div>
                <div class="col-9 col-sm-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icon icon-link"></i>
                        </span>
                        <asp:TextBox runat="server" class="form-input" id="txtURL" placeholder="webpage"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="text-right">
                <button class="btn">reset</button>
                <asp:Button runat="server" id="btnSubmit" OnClick="btnSubmit_Click" class="btn btn-primary" Text="submit" />
            </div>
        </form>
    </div>
</div>
</asp:Content>