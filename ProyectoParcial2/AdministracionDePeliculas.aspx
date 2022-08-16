<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdministracionDePeliculas.aspx.cs" Inherits="ProyectoParcial2.AdministracionDePeliculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaDePeliculas.aspx">Alta de Películas</asp:HyperLink><br /><br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BMCDePeliculas.aspx">Baja, Modificación y Consulta de Películas</asp:HyperLink>
</asp:Content>
