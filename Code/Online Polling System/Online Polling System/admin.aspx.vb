Imports System.Data.SqlClient

Imports System.Data
Public Class admin

    Inherits System.Web.UI.Page
    Dim newid As Integer

    ' Dim questionid As Integer
    ' Public i As Integer




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ADDNEWBUTTON_Click(sender As Object, e As EventArgs) Handles ADDNEWBUTTON.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        'MsgBox(dt.Rows.Count - 1)
        'MsgBox(dt.Rows(dt.Rows.Count - 1)(0))
        ' Dim newid As Integer
        newid = CInt(dt.Rows(dt.Rows.Count - 1)(0)) + 1
        Dim cmd As New SqlCommand
        cmd.Connection = con
        cmd.CommandText = CommandType.Text
        cmd.CommandText = "INSERT INTO question_table VALUES('" & newid & "','" & TextBox1.Text & "','" & DropDownList2.SelectedValue & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "')"
        Try
            cmd.ExecuteNonQuery()
            MsgBox("inserted sucessful")
            Call insertcolresult()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



    Function insertcolresult()
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        ' Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        'ada.Fill(dt)
        Dim temp As Integer
        temp = 0
        

        Dim cmd As New SqlCommand
        cmd.Connection = con
        cmd.CommandText = CommandType.Text
        cmd.CommandText = "INSERT INTO result VALUES('" & newid & "','" & temp & "','" & temp & "','" & temp & "','" & temp & "')"
        Try
            cmd.ExecuteNonQuery()
            '  MsgBox("inserted sucessful")

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Function

 
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles move_last.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        p = dt.Rows.Count - 1
        ' MsgBox(i)

        Label16.Text = dt.Rows(p)(0)
        Label11.Text = dt.Rows(p)(1)
        Label12.Text = dt.Rows(p)(3)
        Label13.Text = dt.Rows(p)(4)
        Label14.Text = dt.Rows(p)(5)
        Label15.Text = dt.Rows(p)(6)
        Call showresult()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles move_first.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        p = 0
        'MsgBox(i)
        Label16.Text = dt.Rows(p)(0)
        Label11.Text = dt.Rows(p)(1)
        Label12.Text = dt.Rows(p)(3)
        Label13.Text = dt.Rows(p)(4)
        Label14.Text = dt.Rows(p)(5)
        Label15.Text = dt.Rows(p)(6)
        Call showresult()
    End Sub

    Protected Sub Refresh_Click(sender As Object, e As EventArgs) Handles Refresh.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        p = 0
        'MsgBox(i)
        Label16.Text = dt.Rows(p)(0)
        Label11.Text = dt.Rows(p)(1)
        Label12.Text = dt.Rows(p)(3)
        Label13.Text = dt.Rows(p)(4)
        Label14.Text = dt.Rows(p)(5)
        Label15.Text = dt.Rows(p)(6)
        Call showresult()
    End Sub

    Protected Sub move_previous_Click(sender As Object, e As EventArgs) Handles move_previous.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        p = p - 1
        ' MsgBox(p)
        ' MsgBox(i)
        If p < 0 Then
            p = 0
            MsgBox("This is first record")
            Exit Sub
        End If

        Label16.Text = dt.Rows(p)(0)
        Label11.Text = dt.Rows(p)(1)
        Label12.Text = dt.Rows(p)(3)
        Label13.Text = dt.Rows(p)(4)
        Label14.Text = dt.Rows(p)(5)
        Label15.Text = dt.Rows(p)(6)
        Call showresult()




    End Sub

    Protected Sub move_next_Click(sender As Object, e As EventArgs) Handles move_next.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)
        p = p + 1
        ' MsgBox(p)
        'MsgBox(i)
        If p > dt.Rows.Count - 1 Then
            p = dt.Rows.Count - 1
            MsgBox("this is last record")
            Exit Sub
        End If

        Label16.Text = dt.Rows(p)(0)
        Label11.Text = dt.Rows(p)(1)
        Label12.Text = dt.Rows(p)(3)
        Label13.Text = dt.Rows(p)(4)
        Label14.Text = dt.Rows(p)(5)
        Label15.Text = dt.Rows(p)(6)
        Call showresult()
    End Sub

    Function showresult()
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from result", con)
        Dim dt As New DataTable()
        ada.Fill(dt)

        Dim temp As Integer
        For temp = 0 To dt.Rows.Count - 1

            If Label16.Text = dt.Rows(temp)(0) Then

                TextBox6.Text = dt.Rows(temp)(1)
                TextBox7.Text = dt.Rows(temp)(2)
                TextBox8.Text = dt.Rows(temp)(3)
                TextBox9.Text = dt.Rows(temp)(4)
                Exit Function

            End If
        Next
    End Function

   

    


  
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada As New SqlDataAdapter("select * from question_table", con)
        Dim dt As New DataTable()
        ada.Fill(dt)

        Dim temp As Integer
        For temp = 0 To dt.Rows.Count - 1
            If DropDownList3.SelectedValue = dt.Rows(temp)(0) Then
                Label17.Text = dt.Rows(temp)(1)
                Exit Sub
            End If
        Next
    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
    
        Dim cmd As New SqlCommand
        Dim sqlstring As String
        Dim temp As Integer
        temp = 0

        Try

          

            sqlstring = "delete from question_table where id = '" & DropDownList3.SelectedValue & "'"
                        cmd.CommandText = CommandType.Text
                        cmd = New SqlCommand(sqlstring, con)
            cmd.ExecuteNonQuery()
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('poll deletion successfull');", True)


                  
        Catch ex As Exception

            MsgBox(ex.Message)
        End Try
    End Sub
End Class