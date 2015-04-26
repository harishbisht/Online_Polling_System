<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="about.aspx.vb" Inherits="Online_Polling_System.about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<head>
<title>About Us</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/about.css" rel="stylesheet" type="text/css" />

    <script src="script/JScript1.js" type="text/javascript"></script>
    <script src="script/JScript2.js" type="text/javascript"></script>
     <script>
         $(function () {
             $("#accordion").accordion();
         });
    </script>



    <style type="text/css">

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
        </style>
</head>
    <form id="form1" runat="server">
    <span class="newStyle1"><span class="style11">ONLINE</span><span 
        class="style14">POLLING.COM</span></span><table 
        style="width: 99%; height: 363px;">
        <tr>
            <td class="style7">
                <span class="newStyle1"><span class="style14">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="106px" 
                    ImageUrl="~/images/main.png" PostBackUrl="~/main.aspx" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/graph.png" 
                    PostBackUrl="~/main.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="style15" src="images/poll1.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                    ImageUrl="~/images/register.jpg" Width="154px" 
                    PostBackUrl="~/Register.aspx" />
                </span></span>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#EFEBE8" 
                
                style="color: #473D38; font-weight: bolder; font-size: 51px; font-family: sans-serif; font-style: normal; text-align: center;">
                About Us</td>
        </tr>
        </table>
    </form>
     
<div id="accordion">
    <h3> History</h3>
    <div>
        <p>
       Polling has been used as a feature of democracy since the 6th century BC, when democracy was introduced by the Athenian democracy
polling theory became an object of academic study around the time of the French Revolution. Jean-Charles de Borda proposed the Borda count in 1770 as a method for electing members to the French Academy of Sciences. His system was opposed by the Marquis de Condorcet, who proposed instead the method of pairwise comparison that he had devised. Implementations of this method are known as Condorcet methods. He also wrote about the Condorcet paradox, which he called the intransitivity of majority preferences.

         </p>
    </div>
    <h3> AIM</h3>
    <div>
        <p>
     The purpose of this project is to provide an online polling system for the polling department.  The polling department has so far been using a paper voting system, which made it difficult for full participation and lack of automated style.  The online polling system will help improve these difficulties by providing automated system through any web browser. The voters can vote on a particular subject and view the current polls.  The administrators can create polls or delete polls from the database.  The system will also keep track of non-voters so that proper notifications can be sent to those users upon deadline.  This system will provide an up-to-date result of the poll while providing a simple interface for both administrators and voters.
Online Polling System is a platform where people can give there opinion about the ongoing  
agenda. 

        </p>
    </div>
    <h3> Scope</h3>
    <div>
        <p>
       
       <ul>
            <li> Advanced technology- It is an advanced technology used now a days. It increases the
                E knowledge of the users which is very necessary for current generation.</li>
            <li>Internet: It is an online facility and hence very useful for the users. 
                Voters can vote from any where at any time in India.</li>
            <li>E-Mails:  polling commision of India can send the error report to a particular user if he\she entered false information.</li>
            <li>E-SMS: People they have not internet connection  they can not check the emails or not have email they can be informed by SMS on their mobile. Today many websites provide free SMS to the mobile polling commision of india can use these to send any information.</li>
            <li >Helpful for further government agencies, research, NGO</li>
        </ul>
  

       
         </p>
        
    </div>
    <h3>About Developer</h3>
    <div>
        <p>
        
        <li>Harish Singh Bisht</li>
       <li>BCA E 6th SEM</li> 
        <li>00221102010</li>
        <li>IITM</li>

        </p>
       
    </div>
</div>
 
</body>
</html>
























    