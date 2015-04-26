Imports System.Data.SqlClient
'Imports System.Data.OleDb
Imports System.Data


Public Class Login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
   
    Dim dt As New DataTable
    '   Dim cmd As New OleDbCommandBuilder
   



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub LoginButton_Click1(sender As Object, e As EventArgs)
        Dim flag As Integer
        flag = 0
        ' old code for connected arch. you need to open connection and close connection explictly.
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        ' con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Pramod data\HARISH\sem 6\major project code\Online Polling System\Online Polling System\App_Data\ASPNETDB.mdf;Integrated Security=True;User Instance=True"
        Dim ada As New SqlDataAdapter("select * from login", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        If Page.IsValid Then

            For i As Integer = 0 To dt.Rows.Count - 1
                ' MsgBox(dt.Rows(i)(0))
                If Login1.UserName = dt.Rows(i)(0) And Login1.Password = dt.Rows(i)(1) Then
                    ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('login sucessful');", True)

                    flag = 1
                    user_id = dt.Rows(i)(0)
                    Response.Redirect("vote.aspx")
                Else
                    user_id = "null"
                End If
               
            Next
        End If
        If flag = 0 Then
            user_id = "null"
            'ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Invalid Username and Password');", True)
        End If
    End Sub

    Protected Sub Password_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        If PasswordRecovery1.Visible = True Then
            PasswordRecovery1.Visible = False
        Else
            PasswordRecovery1.Visible = True
        End If

    End Sub

   

    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs)
   
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        Dim ada As New SqlDataAdapter("select * from register", con)
        Dim dt1 As New DataTable()
        ada.Fill(dt1)
     

            For i As Integer = 0 To dt1.Rows.Count - 1



                If PasswordRecovery1.UserName = dt1.Rows(i)(0) Then
                    Dim j As String
                j = InputBox(dt1.Rows(i)(3), "enter the answer of you security question")

                    If j = dt1.Rows(i)(4) Then
                    MsgBox("Your password is " & dt1.Rows(i)(1))
                Else
                    ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Invalid Answer');", True)
                    Exit Sub
                    End If

            End If




        Next


       
    End Sub

   
End Class