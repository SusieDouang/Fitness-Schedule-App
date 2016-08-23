<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FitnessClassList.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Admin.FitnessClassList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <h1>Instructor List</h1></br>
        <a href="Index.aspx">Index</a>
    <table>
        <asp:Repeater runat="server" ID="rptFitnessClassList">
            <HeaderTemplate>
                <tr>
                    <td>Fitness Class Id</td>
                    <td>Fitness Class Name</td>
                    <td>&nbsp;</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("FitnessClassId") %></td>
                    <td><%# Eval("FitnessClassName") %></td>                                                               
                </tr>
            </ItemTemplate>
         </asp:Repeater>
       </table>
    </div>
    </form>
</body>
</html>
