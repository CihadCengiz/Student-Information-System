<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="showallrecords.aspx.cs" Inherits="webprogproject.showallrecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [kad], [ad], [soyad], [bolumu], [dogumtarihi], [sehir] FROM [kullanicilar]"></asp:SqlDataSource>
<p>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kad" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="kad" HeaderText="Username" ReadOnly="True" SortExpression="kad" />
        <asp:BoundField DataField="ad" HeaderText="Name" SortExpression="ad" />
        <asp:BoundField DataField="soyad" HeaderText="Surname" SortExpression="soyad" />
        <asp:BoundField DataField="bolumu" HeaderText="Major" SortExpression="bolumu" />
        <asp:BoundField DataField="dogumtarihi" HeaderText="Birth Date" SortExpression="dogumtarihi" />
        <asp:BoundField DataField="sehir" HeaderText="City" SortExpression="sehir" />
    </Columns>
</asp:GridView>
</asp:Content>
