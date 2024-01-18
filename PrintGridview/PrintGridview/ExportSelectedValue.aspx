<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="ExportSelectedValue.aspx.cs" Inherits="ExportSelectedValue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 
          <div style="padding:10px">
                <h3>Export Gridview Selected Rows in ASP.NET</h3>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="OnSelectedIndexChanged" CellSpacing="10" OnPageIndexChanging="onPaging" PageSize="10" AllowPaging="true">
                    <Columns>
                        <asp:TemplateField>
                         <HeaderTemplate>  
                         <asp:CheckBox ID="CheckBox1" AutoPostBack="true" OnCheckedChanged="chckchanged" runat="server" /> 
                         </HeaderTemplate>  
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName = "Select"><asp:CheckBox ID="chkSelect" runat="server" /></asp:LinkButton>
                              
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="kyc_ref_no" HeaderText="kyc_ref_no" />
                        <asp:BoundField DataField="Full_name" HeaderText="Full_name" />
                        <asp:BoundField DataField="Pan_no" HeaderText="Pan_no" />
                        <asp:BoundField DataField="OTP_STATUS" HeaderText="STATUS" />
                        <asp:BoundField DataField="MOBILE_NO" HeaderText="MOBILE" />
                        <asp:BoundField DataField="SERVER_DATE" HeaderText="DATE" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="btnExport" runat="server" Text="Export Selected Rows" OnClick="btnExport_Click" />
            </div>
 

  <script type="text/javascript" language="javascript">
   functionCheckall(Checkbox)
      debugger;
   { 
   var GridView1 = document.getElementById("<%=GridView1.ClientID%>"); 
   for (i = 1; i< GridView1.rows.length; i++) 
      {
        GridView1.rows[i].cells[3].getElementsByTagName( "INPUT")[0].checked=Checkbox.checked; 
      } 
    } 
    </script>  
</asp:Content>

