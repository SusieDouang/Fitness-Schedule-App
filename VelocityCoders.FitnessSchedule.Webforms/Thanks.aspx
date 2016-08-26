<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Thanks" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Thank You</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width" />
        
    <script type="text/javascript">
            function getValue(varname)
            {
                var url = window.location.href;
                var uparts = url.split("?");
                if (uparts.length == 0)
                {
                    return "";
                }
                var query = uparts[1];
                var vars = query.split("&");
                var value = "";
                for (i=0;i<vars.length;i++)
                {
                var parts = vars[i].split("=");
                if (parts[0] == varname)
                {
                    value = parts[1];
                    break
                }
                }
                value = unescape(value);
                value.replace(/\+/g," ");
                return value;
            }
        </script>
</head>
        <form id="form1" runat="server">
<body>
    <div>
    Thank you for clicking the submit button        
        <title>Thank You</title>       
        <table>
            <tr>
                <td>
                You entered the First Name:
                </td>
                <td>
                    <script type="text/javascript">
                        var name = getValue("firstName");
                        document.write(name);
                        </script>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
