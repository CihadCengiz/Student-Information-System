<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="webprogproject.Kayitekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <br />
    <div class="row">
    <div class="col-md-4">
        USERNAME:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        PASSWORD:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
    </div>
   </div>
     <div class="row">
      <div class="col-md-4">
        NAME:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
    </div>
   </div>
     <div class="row">
      <div class="col-md-4">
        SURNAME:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
    </div>
   </div>
    <div class="row">
      <div class="col-md-4">
        MAJOR:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
    </div>
   </div>
    <div class="row">
      <div class="col-md-4">
        BIRTH DATE:
    </div>
    <div class="col-md-4">
        <asp:TextBox textmode="Date" ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
    </div>
   </div>
    <div class="row">
      <div class="col-md-4">
        CITY:
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
    </div>
   </div>
    <div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
              <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SIGN UP" Height="51px" Width="120px" OnClick="Button1_Click" OnClientClick="return alert('SUCCESS!')" />
        </div>
        </div>

</asp:Content>
