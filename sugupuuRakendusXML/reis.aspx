<%@ Page Title="Minu sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2>Reis</h2>
        <h3>Igor Aleksejev</h3>
        <address>
         
        </address>

         <div>
  <asp:xml runat="server"
    DocumentSource="~/reis.xml"
    TransformSource="~/ReisiParing.xslt" />
 </div>
    </main>
</asp:Content>
