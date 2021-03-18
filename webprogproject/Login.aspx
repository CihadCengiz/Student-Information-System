<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webprogproject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

</br>

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
    <br />
    <div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">

            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="LOGIN" Height="51px" Width="120px" OnClick="Button1_Click" />
                            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

    </div>
<br />
        <p>
        FIRST LOGIN <br />USERNAME: admin PASSWORD: admin 
        </p>
</asp:Content>