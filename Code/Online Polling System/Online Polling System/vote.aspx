<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vote.aspx.vb" Inherits="Online_Polling_System.vote" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ Register src="dataframe.ascx" tagname="dataframe" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Polling</title>
    <style type="text/css">
        .newStyle1
        {
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
        }
        .style2
        {
            width: 952px;
            color: #CCCCFF;
            font-size: large;
            border: thin solid #000080;
            background-color: #085A5D;
            background-attachment: fixed;
        }
        #form1
        {
            width: 948px;
            height: 259px;
        }
        .style3
        {
            width: 71px;
        }
        .style4
        {
            width: 693px;
        }
        .style5
        {
            width: 71px;
            height: 110px;
        }
        .style6
        {
            width: 693px;
            height: 110px;
        }
        .style7
        {
            height: 110px;
        }
        .style8
        {
            width: 71px;
            height: 58px;
        }
        .style9
        {
            width: 693px;
            height: 58px;
        }
        .style10
        {
            height: 58px;
        }
        </style>
</head>

<link href="css/styles.css" rel="stylesheet" type="text/css" />

<body>
    <form id="form1" runat="server">
   
    <table style="width:101%; position: fixed; top: -4px; left: -2px; height: 43px;">
        <tr>
            <td class="style2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO ONLINE POLLING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>&nbsp;HI!&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </td>
        </tr>
    </table>
     <br />  <br />
    <hr style="background-attachment: fixed; width: 1232px; position: fixed; top: 38px; left: -215px; height: -15px; color: #cccccc;" /><!-- border:solid; "  /> for same as horizontal line-->

  <!--  <table style="width: 45%; margin-top: 0px;">

   
    </table>
    -->
            </table>

        
    &nbsp;<table style="width: 100%; height: 319px;">
        <tr>
            <td class="style8">
                Question Category</td>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Politics</asp:ListItem>
                    <asp:ListItem>Lifestyle</asp:ListItem>
                    <asp:ListItem>Educational</asp:ListItem>
                    <asp:ListItem>Fashion</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="QUESTION"></asp:Label>
            </td>
            <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="75px" Width="657px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:Image ID="Image1" runat="server" Height="114px" 
                    ImageUrl="~/images/polling.jpg" Width="106px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="POLL"></asp:Label>
            </td>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="22px" 
                    RepeatDirection="Horizontal" Width="684px">
                    <asp:ListItem>button1</asp:ListItem>
                    <asp:ListItem>button2</asp:ListItem>
                    <asp:ListItem>button3</asp:ListItem>
                    <asp:ListItem>button4</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Submit/Vote" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Previous" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="24px" Text="Next" 
                    Width="59px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    
    </form>
        
    
    
    </body>
</html>
