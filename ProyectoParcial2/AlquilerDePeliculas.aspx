<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AlquilerDePeliculas.aspx.cs" Inherits="ProyectoParcial2.AlquilerDePeliculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Id de Pelicula"></asp:Label>
:&nbsp;
    <style>
        .pad{
            padding:  5px;
        }
    </style>
<asp:TextBox ID="TextBox1" runat="server" TextMode="Number" class="pad"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
<br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" class="pad"/>
<br />
<br />
<asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Mostrar peliculas alquiladas" class="pad"/>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"  DataSourceID="SqlDataSourceConsultarAlquiladas" ForeColor="#333333" GridLines="None" CellSpacing="10" CellPadding="15">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" Width="300px" Wrap="False" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <img src="ImagenDinamica.aspx" />
<br />
<asp:SqlDataSource ID="SqlDataSourceCargarAlquiler" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" SelectCommand="  select p.NOMBRE_PELICULA as 'Nombre',g.NOMBRE_GENERO as 'Genero', p.WEB_PELICULA as 'Web',p.ANIO as 'Anio', p.DESCRIPCION as 'Descripcion' from PELICULAS as p join
  GENEROS as g on p.ID_GENERO=g.ID_GENERO where p.ID_PELICULA=@id;" InsertCommand="insert into alquiler(ID_PELICULA,FECHA_ALQUILER) values(@id,@fechaHora);">
    <InsertParameters>
        <asp:Parameter Name="id" />
        <asp:Parameter Name="fechaHora" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter Name="id" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceConsultarAlquiladas" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3_Parcial2ConnectionString.ProviderName %>" SelectCommand="select p.NOMBRE_PELICULA,a.FECHA_ALQUILER from PELICULAS as p join ALQUILER as a on a.ID_PELICULA=p.ID_PELICULA;"></asp:SqlDataSource>
</asp:Content>
