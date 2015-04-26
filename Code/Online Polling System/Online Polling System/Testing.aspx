<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Testing.aspx.vb" Inherits="Online_Polling_System.Testing" %>

<%@ Register src="dataframe.ascx" tagname="dataframe" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/XMLFile1.xml" />
    </p>
    </form>
</body>
</html>
