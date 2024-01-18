<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="PrintGridview._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       GridView Value Print
    </h2>
     <hr />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
 <input type="button" id="btnPrint" value="Print" onclick="PrintGridData()" />

 <script type="text/javascript">
     function PrintGridData() {
         debugger;
      
         var grId = document.getElementById('<%=GridView1.ClientID %>');
        // grId.border = 0;
         var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
         prtwin.document.write(grId.outerHTML);
         prtwin.document.close();
         prtwin.focus();
         prtwin.print();
         //prtwin.close();
     }
 </script>
</asp:Content>
