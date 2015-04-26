<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="dataframe.ascx.vb" Inherits="Online_Polling_System.dataframe" %>
<style type="text/css">

    .Footer
        {
          
            vertical-align:top;
            margin-left: inherit;

            border-style : solid;
    
           border-color : #cccccc;
        text-align: center;
    }
.textbox
{
    background-color : #efebe8;
}
        

     
</style>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#CCCCCC" Height="488px" 
                    Wrap="False" CssClass ="Footer" 
                    Width="524px">
                      <br />
                    &nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/default image.jpg" />
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="textbox" 
                        Font-Bold="True" ForeColor="#3333FF" Height="125px" Width="222px">           How is this images?</asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Chart ID="Chart1" runat="server">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <hr style="width: 519px" />
                   
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                          ImageUrl="~/images/yes.jpg" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                          ImageUrl="~/images/no.jpg" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
                
