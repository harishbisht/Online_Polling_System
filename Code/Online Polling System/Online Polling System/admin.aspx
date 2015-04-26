<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="Online_Polling_System.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 402px;
            height: 66px;
        }
        .style2
        {
            width: 402px;
            height: 311px;
        }
        .style3
        {
            height: 311px;
            width: 48px;
        }
        .style4
        {
            width: 257px;
        }
        .style5
        {
            width: 106px;
        }
        .style8
        {
            width: 106px;
            height: 49px;
        }
        .style9
        {
            width: 257px;
            height: 49px;
        }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            width: 218px;
        }
        .style12
        {
            color: #FF0000;
        }
        .style13
        {
            color: #FF0000;
            font-size: large;
        }
        .style14
        {
            color: #CC0000;
        }
        .style15
        {
            font-size: large;
            color: #CC6600;
        }
        .style16
        {
            color: #FF0000;
            font-size: x-large;
        }
        .style17
        {
            font-size: x-large;
            color: #CC6600;
        }
        .style21
        {
            width: 48px;
            height: 66px;
        }
        .style22
        {
            width: 466px;
            height: 311px;
        }
        .style24
        {
            width: 466px;
            height: 66px;
        }
        .style25
        {
            width: 402px;
            height: 289px;
        }
        .style26
        {
            width: 466px;
            height: 289px;
        }
        .style27
        {
            height: 289px;
            width: 48px;
        }
        .style28
        {
            color: #000000;
            font-size: large;
        }
        .style29
        {
            width: 218px;
            height: 41px;
        }
        .style30
        {
            height: 41px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span class="style16">O</span><span class="style13">nline Polling System</span></strong>
        <strong><span class="style17">A</span><span class="style15">dministrator Page<br />
        <br />
        </span></strong>
    
        <table style="width: 100%; height: 371px;">
            <tr>
                <td class="style2">
                    <div class="verticalLine">   <!--vertical lines start        -->

                    
                   
                   
                   
                    <table style="border-color: #3333FF; width: 86%; height: 222px;">
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style4">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-size: large; font-weight: 700; color: #FF0000;" 
                                    Text="Add New Poll"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;<asp:Label ID="Label2" runat="server" 
                                    style="font-size: large; font-weight: 700" Text="Question"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="263px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label9" runat="server" 
                                    style="font-size: large; font-weight: 700" Text="Category"></asp:Label>
                            </td>
                            <td class="style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="121px">
                    <asp:ListItem>Politics</asp:ListItem>
                    <asp:ListItem>Lifestyle</asp:ListItem>
                    <asp:ListItem>Educational</asp:ListItem>
                    <asp:ListItem>Fashion</asp:ListItem>
                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Choice 1"></asp:Label>
                                <br />
                                &nbsp;<asp:Label ID="Label4" runat="server" Text="Choice 2"></asp:Label>
                            </td>
                            <td class="style9">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox>
                                &nbsp;<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Choice 3"></asp:Label>
                                <br />
                                &nbsp;<asp:Label ID="Label6" runat="server" Text="Choice 4"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                
                
                
                
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="ADDNEWBUTTON" runat="server" Height="27px" Text="SUBMIT" 
                                    Width="92px" />
                
                
                
                
                 </div> <!--vertical lines end        -->
                   
                
                </td>
                <td class="style22">
                
                 <div class="verticalLine">

                    
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                         class="style12">&nbsp; </span>
                                <asp:Label ID="Label7" runat="server" 
                                    style="font-size: large; font-weight: 700" 
                         Text="View Result By ID" CssClass="style12"></asp:Label>
                            <span class="style12">&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Refresh" runat="server" Text="Refresh" />
&nbsp;
                            <br />
                     <br />
                     &nbsp;
                     <asp:Label ID="Label8" runat="server" Text="Question ID"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label16" runat="server" 
                         Text="Label"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Localize ID="Localize1" runat="server"></asp:Localize>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                     <br />
                     &nbsp;
                     <asp:Label ID="Label10" runat="server" Text="Question"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label11" runat="server" Text="Question"></asp:Label>
&nbsp;&nbsp;&nbsp;
                     <br />
                     <br />
&nbsp;<span class="style10"><strong>&nbsp; Options&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                     Result<br />
                     <table style="width: 100%; height: 115px;">
                         <tr>
                             <td class="style29">
                                 &nbsp;
                                 <asp:Label 
                         ID="Label12" runat="server" Text="Label"></asp:Label>
                             </td>
                             <td class="style30">
                                 <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Height="20px" 
                                     Width="55px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="style11">
                     &nbsp;
                     <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                             </td>
                             <td>
                                 <asp:TextBox ID="TextBox7" runat="server" Enabled="False" Height="20px" 
                                     Width="55px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="style11">
                     &nbsp;
                     <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                             </td>
                             <td>
                                 <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Height="20px" 
                                     Width="55px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="style11">
                     &nbsp;
                     <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                             </td>
                             <td>
                                 <asp:TextBox ID="TextBox9" runat="server" Enabled="False" Height="20px" 
                                     Width="55px"></asp:TextBox>
                             </td>
                         </tr>
                     </table>
                     </strong>
                     <hr />
                     </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                     &nbsp;<br />
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    
                     &nbsp;

                    
                     <asp:Button ID="move_first" runat="server" Text="First" Width="57px" />
&nbsp;
&nbsp;<asp:Button ID="move_previous" runat="server" Text="Previous" />
&nbsp;
&nbsp;<asp:Button ID="move_next" runat="server" Text="Next" Width="58px" />
&nbsp;
&nbsp;<asp:Button ID="move_last" runat="server" Text="Last" Width="60px" />

                    
                     <br />

                    
                    </div>
                
                
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style25">
                <div class="verticalLine">

                    
                     

                    
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <span class="style13">Delete Poll<br />
                    <br />
                    </span>
                    <span class="style28">Select the poll ID </span>
                    <span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="id" DataValueField="id" 
                        style="width: 88px">
                    </asp:DropDownList>
&nbsp;<br />
                    </span>
                    <span class="style28">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Find Question details" />
                    <br />
                    <br />
                    Question : </span>
                    <span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" style="color: #000000"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </span><span class="style28">
                    <br />
                    </span>
                    <span class="style13">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Delete Poll" />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SQLEXPRESSConnectionString1 %>" 
                        SelectCommand="SELECT [id] FROM [question_table]"></asp:SqlDataSource>
                    <br />
                    </span>
                    </strong>

                    
                     

                    
                    </div>



                </td>
                <td class="style26">
                   <div class="verticalLine">

                    
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <strong><span class="style14">Feedback<br />
                       </span>&nbsp;&nbsp;&nbsp;
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:BoundField DataField="s_no" HeaderText="s_no" SortExpression="s_no" />
                               <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                                   SortExpression="Feedback" />
                               <asp:BoundField DataField="user_id" HeaderText="user_id" 
                                   SortExpression="user_id" />
                           </Columns>
                       </asp:GridView>
&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:SQLEXPRESSConnectionString1 %>" 
                           SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
&nbsp;</strong></div>
                </td>
                <td class="style27">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    </td>
                <td class="style24">
                    </td>
                <td class="style21">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
