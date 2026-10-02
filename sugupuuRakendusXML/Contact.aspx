<%@ Page Title="Minu sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Igor Aleksejev</h3>
        <address>
            Igor poolt proovitud XSLT funktsioonid
        </address>

         <div>
     <asp:xml runat="server" DocumentSource="~/MinuSugupuu.xml" TransformSource="~/sugupuuParing.xslt"></asp:xml>
 </div>
    </main>
</asp:Content>
