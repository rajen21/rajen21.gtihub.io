
Imports System.Collections.Generic
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Public Partial Class admin_login
    Inherits System.Web.UI.Page

    Private db As New dbconnection()

    Private d As New System.Data.DataTable()


	Protected Sub Page_Load(sender As Object, e As EventArgs)
			

    End Sub

    

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs)

        Dim lst As List(Of Parameter) = New List(Of Parameter)()

        lst.Add(New Parameter("@uname", txtuname.Text, MySql.Data.MySqlClient.MySqlDbType.String))
        lst.Add(New Parameter("@password", txtpassword.Text, MySql.Data.MySqlClient.MySqlDbType.String))

        Dim qry As String = "select * from tourism_admin where uname=@uname  and password=@password"
        d = db.getTable(qry, lst)




        If d.Rows.Count > 0 Then
            'no user found
            Session.Add("uname", txtuname.Text)

            Response.Redirect("adminhome.aspx")
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "Invalid Access", "alert('Invalid username or password')", True)
        End If
    End Sub

End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
