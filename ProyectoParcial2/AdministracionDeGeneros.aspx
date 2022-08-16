<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdministracionDeGeneros.aspx.cs" Inherits="ProyectoParcial2.AdministracionDeGeneros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        .pad{
            padding:  5px;
        }
    </style>

    <asp:Label ID="Label1" runat="server" Text="Nombre del Género:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="251px" class="pad"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ingresar un nombre de genero" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Genero" class="pad"/>
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar Genero" class="pad"/>
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
     <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="10" CellPadding="15">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
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
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" DeleteCommand="delete from generos where id_genero=@id" InsertCommand="insert into generos(nombre_genero) values (@nombre_genero)" SelectCommand="select id_genero as 'Id', nombre_genero as 'Genero' from generos" UpdateCommand="UPDATE GENEROS SET NOMBRE_GENERO = @nombre_genero WHERE (ID_GENERO = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre_genero" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre_genero" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>

<br />
<asp:SqlDataSource ID="SqlDataSourceUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:LP3_Parcial2ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3_Parcial2ConnectionString.ProviderName %>" UpdateCommand="update GENEROS set NOMBRE_GENERO=@nombre where ID_GENERO=@id">
    <UpdateParameters>
        <asp:Parameter Name="nombre" />
        <asp:Parameter Name="id" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

