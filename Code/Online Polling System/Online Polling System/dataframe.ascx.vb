Public Class dataframe
    Inherits System.Web.UI.UserControl




    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim a As Integer
        a = InputBox("enter the no", "sdf")
        MsgBox(a)
     
    End Sub

    Public Sub New()

    End Sub
End Class