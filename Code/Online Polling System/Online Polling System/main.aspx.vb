Imports System.Data.SqlClient

Imports System.Data
Public Class WebForm1

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'E:\Pramod data\HARISH\sem 6\major project code\Online Polling System\Online Polling System\about.htm
    End Sub




    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from feedback", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        'MsgBox(dt.Rows.Count - 1)
        'MsgBox(dt.Rows(dt.Rows.Count - 1)(0))
        Dim s_no As Integer
        s_no = CInt(dt.Rows(dt.Rows.Count - 1)(0)) + 1
        Dim cmd As New SqlCommand
        cmd.Connection = con
        cmd.CommandText = CommandType.Text
        cmd.CommandText = "INSERT INTO feedback VALUES('" & s_no & "','" & TextBox1.Text & "','" & TextBox2.Text & "')"

        Try
            cmd.ExecuteNonQuery()


            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('feedback is submitted');", True)

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try



    End Sub
End Class