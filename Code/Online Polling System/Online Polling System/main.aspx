<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="main.aspx.vb" Inherits="Online_Polling_System.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/about.css" rel="stylesheet" type="text/css" />

    <script src="script/JScript1.js" type="text/javascript"></script>
    <script src="script/JScript2.js" type="text/javascript"></script>
     <script>
         $(function () {
             $("#accordion").accordion();
         });
                 
    </script>








    <title>Online Polling system</title>
    <style type="text/css">
        .style2
        {
            width: 1088px;
            text-align: center;
        }
        .style4
        {
            width: 1088px;
            height: 120px;
            
        }
        .style7
        {
            width: 1088px;
            height: 24px;
            
            margin-left: 40px;
            margin-right :40px;
            
        }
        .style10
        {
            width: 1088px;
            height: 115px;
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
        .style15
        {
            width: 96px;
            height: 129px;
        
        }
        .style16
        {
            color: #FF0000;
        }
    </style>
</head>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<body>
    <form id="form1" runat="server">
    <span class="newStyle1"><span class="style11">ONLINE</span><span 
        class="style14">POLLING.COM</span></span><table 
        style="width: 99%; height: 445px;">
        <tr>
            <td class="style7">
                <span class="newStyle1"><span class="style14">&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/onlyyesno.jpg" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/graph.png" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="style15" src="images/poll1.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                    ImageUrl="~/images/register.jpg" Width="154px" 
                    PostBackUrl="~/Register.aspx" />
                </span></span>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#EFEBE8" 
                
                style="color: #473D38; font-weight: bolder; font-size: 51px; font-family: sans-serif; font-style: normal; text-align: center;">
                Online Polling System</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>

       
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Polling" Height="81px" 
                    style="margin-top: 0px" Width="242px"  BorderStyle="Solid" Font-Bold="True"
                    Font-Size="XX-Large" ForeColor="White" BackColor="#74A543" 
                    BorderColor="#4B7E17" PostBackUrl="~/Login.aspx"  />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#D85707" 
                    BorderColor="#AD4200" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" 
                    Height="80px" style="margin-top: 0px" Text="About Us" Width="269px" 
                    BorderStyle="Solid" PostBackUrl="~/about.aspx" />
            </td>
        </tr>
    </table>
   
    <p>
        &nbsp;</p>

   <div id="accordion">
    <h3> LOGIN NOW </h3>
    <div>
        <p>
            &nbsp;Click on login for give your poll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
            
            </p>
    </div>
    
    <h3> REGISTER NOW</h3>
       <p>  
           &nbsp; Not Registered? get register for free&nbsp;&nbsp;&nbsp;&nbsp;  
           <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
       &nbsp;</p>

         <h3> FEEDBACK </h3>
       <p>
       Feedback Form
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       

           <asp:TextBox ID="TextBox1" runat="server" Height="136px" Width="444px" 
               TextMode="MultiLine">Give your feedback</asp:TextBox>
         
         <br /> 
         <br />
           User ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp; <span class="style16">*optional</span>
       
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
           <br />
           <asp:Button ID="Button3" runat="server" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
          </p>




       </div> 

        </form>

  <p>      
  <center>© 2010-2013 onlinepolling.com. All Rights Reserved.</center><br />
<center>The content is copyrighted to Harish Bisht and may not be reproduced on other websites without permission from the owner.
</center> </p>
    </body>
</html>
