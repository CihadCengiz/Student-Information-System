<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="queryselect.aspx.cs" Inherits="webprogproject.queryselect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [kad], [ad], [soyad], [bolumu], [dogumtarihi], [sehir] FROM [kullanicilar]"></asp:SqlDataSource>
    <br />
    <div class="row">
    <div class="col-md-4">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Username</asp:ListItem>
        <asp:ListItem>Name</asp:ListItem>
        <asp:ListItem>Surname</asp:ListItem>
        <asp:ListItem>Major</asp:ListItem>
</asp:DropDownList>
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
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Search" Height="51px" Width="120px" OnClick="Button1_Click" />


    </div>
    <div class="col-md-4">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="Username" DataField="kad" />
            <asp:BoundField HeaderText="Name" DataField="ad" />
            <asp:BoundField HeaderText="Surname" DataField="soyad" />
            <asp:BoundField HeaderText="Major" DataField="bolumu" />
            <asp:BoundField HeaderText="Birth Date" DataField="dogumtarihi" />
            <asp:BoundField HeaderText="City" DataField="sehir" />
        </Columns>
    </asp:GridView>
    </div>
   </div
</asp:Content>
