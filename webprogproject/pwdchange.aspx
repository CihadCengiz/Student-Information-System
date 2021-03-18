<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pwdchange.aspx.cs" Inherits="webprogproject.pwdchange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-md-4">
        NEW PASSWORD:
        </div>
        <div class="col-md-4">
        <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        NEW PASSWORD:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
    </div>
   </div>
    <div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
                                        <br />
            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Change Password" Height="51px" Width="140px" OnClick="Button1_Click" OnClientClick="return alert('PASSWORD UPDATED SUCCESSFULLY!')" />

        </div>
    </div>



</asp:Content>
