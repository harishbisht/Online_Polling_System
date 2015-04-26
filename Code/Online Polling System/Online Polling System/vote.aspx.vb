Imports System.Data.SqlClient

Imports System.Data
Public Class vote


    Inherits System.Web.UI.Page
  
    Dim cmd As New SqlCommand

    Dim i As Integer
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
    Dim ada As New SqlDataAdapter("select * from question_table", con)
    Dim dt As New DataTable()


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
      
        If user_id = "null" Then
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('enter Username and Password')</script>")
            MsgBox("Previous Sessions are expired please enter the usename and password", vbInformation)
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('please Enter the username and password');", True)
            Response.Redirect("Login.aspx")
        Else
            Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
            Label3.Text = user_id
            con.Open()
            ada.Fill(dt)

            Call calldata()
        End If
        
       
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        point = point - 1
        Button2.Enabled = True

        If (point < 0) Then
            point = 0
            Button1.Enabled = False
            Exit Sub
        End If


        If DropDownList1.Text = dt.Rows(point)(2) Then
            RadioButtonList1.ClearSelection()

            Call calldata()
            '    point = point - 1
        Else
            '   point = point - 1
            Button1_Click(Button1, New EventArgs())
        End If





    End Sub

    Function calldata()
        If (point < 1) Then
            point = 0

        End If
        If point > dt.Rows.Count - 1 Then
            point = dt.Rows.Count - 1
        End If
       
        TextBox1.Text = ""
        TextBox1.Text = dt.Rows(point)(1)

        callradiobuttondata()
      
    End Function

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        point = point + 1
        Button1.Enabled = True
        If point > dt.Rows.Count - 1 Then
            point = dt.Rows.Count - 1
            Button2.Enabled = False
            Exit Sub
        End If


        If DropDownList1.Text = dt.Rows(point)(2) Then
            RadioButtonList1.ClearSelection()

            Call calldata()
            '  point = point + 1
        Else
            ' point = point + 1
            Button2_Click(Button2, New EventArgs())
        End If
    End Sub
    Function callradiobuttondata()

        RadioButtonList1.Items(0).Text = dt.Rows(point)(3)
        RadioButtonList1.Items(1).Text = dt.Rows(point)(4)
        RadioButtonList1.Items(2).Text = dt.Rows(point)(5)
        RadioButtonList1.Items(3).Text = dt.Rows(point)(6)
    End Function
    Function checkexisting()
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim ada1 As New SqlDataAdapter("select * from polling", con)
        Dim dt1 As New DataTable()
        ada1.Fill(dt1)
        Dim cmd As New SqlCommand
        Dim sqlstring As String
        Dim temp As Integer
        temp = 0

        Try

            For temp = 0 To dt1.Rows.Count - 1
                If dt.Rows(point)(0) = dt1.Rows(temp)(0) Then
                    If user_id = dt1.Rows(temp)(1) Then

                        sqlstring = "delete from polling where question_id = '" & dt.Rows(point)(0).ToString & "'  AND user_id = '" & user_id.ToString & "' "
                        cmd.CommandText = CommandType.Text
                        cmd = New SqlCommand(sqlstring, con)
                        cmd.ExecuteNonQuery()

                    End If
                End If
            Next
        Catch ex As Exception
            MsgBox("Aata")
            MsgBox(ex.Message)
        End Try
    End Function
    Function putresult()
        ' Dim cmd As New SqlCommand
        ' Dim sqlstring As String
        ' Try
        ''If RadioButtonList1.SelectedIndex + 1 = 1 Then
        ' sqlstring = " INSERT INTO result where VALUES ('" & dt.Rows(point)(0) & "','" & user_id & "','" & RadioButtonList1.SelectedIndex + 1 & "')"
        ''End If
        '
        ''
        'cmd = New SqlCommand(sqlstring, con)
        '  cmd.ExecuteNonQuery()
        ' MsgBox("sucessfull")
        '' Catch ex As Exception
        ' MsgBox(ex.Message)
        ' End Try
        Dim tem As Integer
        tem = RadioButtonList1.SelectedIndex + 1

        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")
        con.Open()
        Dim val As Integer
        val = 1

        Dim cmd As New SqlCommand
        cmd.Connection = con
        cmd.CommandText = CommandType.Text
        If tem = 1 Then
            cmd.CommandText = "update result set choice1 = choice1 + '" & val & "' where question_id= " & dt.Rows(point)(0) & "  "

        End If
        If tem = 2 Then
            cmd.CommandText = "update result set choice2 = choice2 + '" & val & "' where question_id= " & dt.Rows(point)(0) & "  "

        End If
        If tem = 3 Then
            cmd.CommandText = "update result set choice3 = choice3 + '" & val & "' where question_id= " & dt.Rows(point)(0) & "  "

        End If
        If tem = 4 Then
            cmd.CommandText = "update result set choice4 = choice4 + '" & val & "' where question_id= " & dt.Rows(point)(0) & "  "

        End If
        Try

            cmd.ExecuteNonQuery()
            'MsgBox("inserted sucessful")

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Function


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        If RadioButtonList1.SelectedIndex = -1 Then
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('please first select from the options');", True)
            Exit Sub
        End If


        Call checkexisting()

        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename= C:\USERS\HARISH\DOCUMENTS\SQLEXPRESS.MDF;Integrated Security=True;User Instance=True")

        Dim cmd As New SqlCommand
        Dim sqlstring As String
        Try
            con.Open()
            sqlstring = " INSERT INTO polling VALUES ('" & dt.Rows(point)(0) & "','" & user_id & "','" & RadioButtonList1.SelectedIndex + 1 & "')"
            cmd = New SqlCommand(sqlstring, con)
            cmd.ExecuteNonQuery()
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Your vote is successfully submitted');", True)

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Call putresult()



        Button2_Click(Button2, New EventArgs())
    End Sub

    Protected Sub LoginStatus1_LoggingOut(sender As Object, e As System.Web.UI.WebControls.LoginCancelEventArgs) Handles LoginStatus1.LoggingOut
        user_id = "null"
        Response.Redirect("Login.aspx")

    End Sub



    
    
    
End Class