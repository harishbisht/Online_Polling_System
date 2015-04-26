Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data
Public Class WebForm3
    Inherits System.Web.UI.Page
 
    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatedUser

        If Page.IsValid Then
            MsgBox("harish")
            Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
            Dim cmd As New SqlCommand
            Dim sqlstring As String
            Try
                con.Open()
                sqlstring = " INSERT INTO register VALUES ('" & CreateUserWizard1.UserName & "','" & CreateUserWizard1.Password & "','" & CreateUserWizard1.Email & "','" & CreateUserWizard1.Question & "','" & CreateUserWizard1.Answer & "')"
                cmd = New SqlCommand(sqlstring, con)
                cmd.ExecuteNonQuery()
                ' MsgBox("sucessfull")
                ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Sucessfull login');", True)

                Call putdatainlogin()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
    End Sub

    Protected Sub ContinueButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("login.aspx")
    End Sub

    Function putdatainlogin()
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand
        Dim sqlstring As String
        Try
            con.Open()
            sqlstring = " INSERT INTO login VALUES ('" & CreateUserWizard1.UserName & "','" & CreateUserWizard1.Password & "')"
            cmd = New SqlCommand(sqlstring, con)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Function
End Class