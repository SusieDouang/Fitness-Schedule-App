<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="B05.aspx.cs" 
    Inherits="VelocityCoders.FitnessSchedule.Webforms.B05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="con1" />
        </br>
        </br>
        Car Make:&nbsp;&nbsp;<asp:Textbox runat="server" ID="txtCarMake" />
        </br>
        (Honda, Ford, Chevy, etc.)
        </br>
        </br>
        <asp:Button runat="server" Text="Submit" />  
         </div>
    </form>
</body>
</html>
