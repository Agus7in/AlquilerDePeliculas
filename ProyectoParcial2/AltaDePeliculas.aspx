<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AltaDePeliculas.aspx.cs" Inherits="ProyectoParcial2.AltaDePeliculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .pad{
            padding:  5px;
        }
    </style>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nombre pelicula: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="373px" class="pad"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ingresar un nombre de pelicula." ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
        &nbsp;</p>
    <p>
        Genero pelicula:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceLlenarComboGenero" DataTextField="NOMBRE_GENERO" DataValueField="ID_GENERO" Height="30px" Width="305px" class="pad">
        </asp:DropDownList>
    </p>
<p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Web pelicula:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Url" Width="400px" class="pad"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ingresar una url válida." ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ingresar una url válida" ForeColor="Red"></asp:RequiredFieldValidator>
        .</p>
<p>
        &nbsp;</p>
    <p>
        Descripción:<asp:TextBox ID="TextBox3" runat="server" Height="81px" TextMode="MultiLine" Width="407px" class="pad"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ingresar una descripción." ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
        &nbsp;</p>
    <p>
        Año:<asp:TextBox ID="TextBox4" runat="server" TextMode="Number" class="pad"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Debe ingresar un año válido." ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    </p>
<p>
        &nbsp;</p>
    <p>
        Archivo:<asp:FileUpload ID="FileUpload1" runat="server" class="pad"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Dede seleccionar un archivo." ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    </p>
<p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
    </p>
<p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Pelicula" class="pad"/>
    </p>
    <asp:SqlDataSource ID="SqlDataSourceLlenarComboGenero" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" SelectCommand="SELECT * FROM [GENEROS]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceInsertarPeliculas" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" InsertCommand="insert into peliculas(ID_GENERO,NOMBRE_PELICULA,WEB_PELICULA,DESCRIPCION,ANIO,ARCHIVO) values (@id,@nombre,@web,@descripcion,@anio,@archivo)" ProviderName="<%$ ConnectionStrings:LP3_Parcial2ConnectionString.ProviderName %>">
        <InsertParameters>
            <asp:Parameter Name="id" />
            <asp:Parameter Name="nombre" />
            <asp:Parameter Name="web" />
            <asp:Parameter Name="descripcion" />
            <asp:Parameter Name="anio" />
            <asp:Parameter Name="archivo" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    
</asp:Content>
