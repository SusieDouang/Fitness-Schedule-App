<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntityTypeList.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Admin.EntityTypeList" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <h1>Email List</h1></br>
        <a href="Index.aspx">Index</a>
    <table>
        <asp:Repeater runat="server" ID="rptEntityTypeList">
            <HeaderTemplate>
                <tr>
                    <td>Entity Type Id</td>
                    <td>Entity Type Name</td>
                    <td>&nbsp;</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("EntityTypeId") %></td>
                    <td><%# Eval("EntityTypeName") %></td>                                                               
                </tr>
            </ItemTemplate>
         </asp:Repeater>
       </table>
    </div>
    </form>
</body>
</html>
