<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BMCDePeliculas.aspx.cs" Inherits="ProyectoParcial2.BMCDePeliculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Id de pelicula:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="pad"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar Pelicula" class="pad"/>
    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <style>
        .pad{
            padding:  5px;
        }
    </style>

    <asp:Label ID="Label2" runat="server" Text="Nombre de la pelicula:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="305px" class="pad"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Genero de la pelicula:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceLlenarComboGenero" DataTextField="NOMBRE_GENERO" DataValueField="ID_GENERO" Height="35px" Width="279px" CssClass="pad">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Web de la pelicula:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="400px" class="pad"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Anio de pelicula:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" class="pad"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Descripcion de la pelicula:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" Height="113px" TextMode="MultiLine" Width="360px" class="pad"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar Pelicula" class="pad"/>
    <br />
    <asp:Label ID="Label8" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLlenarGridView" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="10" CellPadding="15">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
            <asp:BoundField DataField="Web" HeaderText="Web" SortExpression="Web" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Anio" HeaderText="Anio" SortExpression="Anio" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceLlenarGridView" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" DeleteCommand="delete from peliculas where NOMBRE_PELICULA=@nombre" SelectCommand="  select p.ID_PELICULA as 'Id', p.NOMBRE_PELICULA as 'Nombre',g.NOMBRE_GENERO as 'Genero', p.WEB_PELICULA as 'Web', p.DESCRIPCION as 'Descripcion', p.ANIO as 'Anio' from PELICULAS as p join
  GENEROS as g on p.ID_GENERO=g.ID_GENERO;">
        <DeleteParameters>
            <asp:Parameter Name="nombre" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceBuscarPorId" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" SelectCommand="select p.NOMBRE_PELICULA as 'Nombre',g.ID_GENERO as 'id_genero', p.WEB_PELICULA as 'Web',p.ANIO as 'Anio', p.DESCRIPCION as 'Descripcion' from PELICULAS as p join
  GENEROS as g on p.ID_GENERO=g.ID_GENERO where p.ID_PELICULA=@id;">
        <SelectParameters>
            <asp:Parameter Name="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceSeleccionarDelGridViewParaElDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" SelectCommand=" select ID_GENERO as 'Id' from GENEROS where NOMBRE_GENERO=@nombre">
        <SelectParameters>
            <asp:Parameter Name="nombre" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceLlenarComboGenero" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" SelectCommand="SELECT * FROM [GENEROS]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceModificarPelicula" runat="server" UpdateCommand="UPDATE PELICULAS SET ID_GENERO = @id_genero, NOMBRE_PELICULA = @nombre, WEB_PELICULA = @web, DESCRIPCION = @descripcion, ANIO = @anio WHERE (ID_PELICULA = @id_pelicula)" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3_Parcial2ConnectionString.ProviderName %>">
        <UpdateParameters>
            <asp:Parameter Name="id_genero" />
            <asp:Parameter Name="nombre" />
            <asp:Parameter Name="web" />
            <asp:Parameter Name="descripcion" />
            <asp:Parameter Name="anio" />
            <asp:Parameter Name="archivo" />
            <asp:Parameter Name="id_pelicula" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
