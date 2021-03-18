<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="deleteuser.aspx.cs" Inherits="webprogproject.deleteuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <div class="row">
        <div class="col-md-4">
        Username: 
        </div>
        <div class="col-md-4">
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
        </div> 
           </div>

        <div class="row">
            <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
                <br />

            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Delete Record" Height="51px" Width="120px" OnClick="Button1_Click" OnClientClick="return alert('SUCCESS!')"/>

        </div>
    </div>
    
</asp:Content>
