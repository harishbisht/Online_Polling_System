<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Online_Polling_System.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    
    <title>Login</title>

    <style type="text/css">
        #form1
        {
            height: 899px;
            width: 966px;
        }

        .newStyle1
        {
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
        }
        .style11
        {
            color: #000099;
        }
        .style14
        {
            color: #0099FF;
            text-align: right;
        }
        .style7
        {
            width: 1088px;
            height: 24px;
            
            margin-left: 40px;
            margin-right :40px;
            
        }
        .style15
        {
            width: 96px;
            height: 129px;
        
        }
        .style4
        {
            width: 1088px;
            height: 120px;
            
        }
        .style10
        {
            width: 1088px;
            height: 115px;
        }
        .style2
        {
            width: 1088px;
            text-align: center;
        }
        .style16
        {
            width: 332px;
        }
    </style>

</head>
<body>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="newStyle1"><span class="style11">ONLINE</span><span 
        class="style14">POLLING.COM</span></span><table 
        style="width: 99%; height: 445px;">
        <tr>
            <td class="style7">
                <span class="newStyle1"><span class="style14">&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/images/onlyyesno.jpg" PostBackUrl="~/main.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/graph.png" 
                    PostBackUrl="~/main.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="style15" src="images/poll1.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                    ImageUrl="~/images/register.jpg" Width="154px" 
                    PostBackUrl="~/Register.aspx" />
                </span></span>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#EFEBE8" 
                
                style="color: #473D38; font-weight: bolder; font-size: 51px; font-family: sans-serif; font-style: normal; text-align: center;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SQLEXPRESSConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:SQLEXPRESSConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [username], [password] FROM [login]">
                </asp:SqlDataSource>
                LOGIN</td>
        </tr>
        <tr>
            <td class="style10">
&nbsp;
                <table style="width:100%;">
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            <asp:Login ID="Login1" runat="server" Height="146px" Width="259px">
                                <LayoutTemplate>
                                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                        <tr>
                                            <td>
                                                <table cellpadding="0" style="height:146px;width:259px;">
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                                ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                                                                ontextchanged="Password_TextChanged"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                                ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color:Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2">
                                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                                                                onclick="LoginButton_Click1" Text="Log In" ValidationGroup="Login1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                            </asp:Login>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>

       
            <td class="style2">

                <asp:LinkButton ID="LinkButton1" runat="server">Forgot your password?</asp:LinkButton>

                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                 
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Visible="False">
                    <QuestionTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" colspan="2">
                                                Identity Confirmation</td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                Answer the following question to receive your password.</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                User Name:</td>
                                            <td>
                                                <asp:Literal ID="UserName" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Question:</td>
                                            <td>
                                                <asp:Literal ID="Question" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Answer:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                    ControlToValidate="Answer" ErrorMessage="Answer is required." 
                                                    ToolTip="Answer is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                                    ValidationGroup="PasswordRecovery1" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </QuestionTemplate>
                    <UserNameTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" colspan="2">
                                                Forgot Your Password?</td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                Enter your User Name to receive your password.</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                    ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" 
                                                    onclick="SubmitButton_Click" Text="Submit" 
                                                    ValidationGroup="PasswordRecovery1" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </UserNameTemplate>
                </asp:PasswordRecovery>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    </form>
    </body>
</html>
