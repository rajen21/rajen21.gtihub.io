
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Public Partial Class user_list
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs)

        'If Session("username") Is Nothing Then
        '    Response.Redirect("admin_login.aspx")

        'End If


        If Not IsPostBack Then

           
            bindgrid("select * from tourism_admin ")



          
        End If

    End Sub

    Public Sub bindgrid(qr As [String])

        Dim db As New dbconnection()

        Dim dtable As System.Data.DataTable = db.getDataTable(qr)

        GridView1.DataSource = dtable
        GridView1.DataBind()

    End Sub
	'protected void btnaddnew_Click(object sender, EventArgs e)
	'{
	'    Response.Redirect("user_add.aspx");

	'}
	Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)


        lblerror.Text = ""
		Dim user_id As[String] = GridView1.DataKeys(e.RowIndex).Value.ToString()
        Dim qr As [String] = "delete from tourism_admin where uid=" + user_id
       Dim db As New dbconnection()

        db.ExQ(qr)

        bindgrid("select * from Tourism_admin ")

    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs)

        If e.Row.RowType = DataControlRowType.DataRow Then

            Dim l As LinkButton = DirectCast(e.Row.FindControl("LinkButton1"), LinkButton)

            l.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure you want to delete this record " + "')")

        End If

    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs)

        Dim user_id As[String] = GridView1.DataKeys(e.NewEditIndex).Value.ToString()
        Response.Redirect("user_add.aspx?uid=" + user_id)
	End Sub
End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
