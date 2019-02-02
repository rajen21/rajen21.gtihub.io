
Partial Class country_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("username") Is Nothing Then
        '    Response.Redirect("admin_login.aspx")

        'End If


        If Not IsPostBack Then


            bindgrid("select * from tourism_country ")




        End If

    End Sub
    Public Sub bindgrid(ByVal qr As [String])
        Dim db As New dbconnection()

        Dim dtable As System.Data.DataTable = db.getDataTable(qr)


        GridView1.DataSource = dtable
        GridView1.DataBind()

    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)


        lblerror.Text = ""
        Dim c_id As [String] = GridView1.DataKeys(e.RowIndex).Value.ToString()
        Dim qr As [String] = "delete from tourism_country where cid=" + c_id
        Dim db As New dbconnection()

        db.ExQ(qr)

        bindgrid("select * from Tourism_country ")

    End Sub
    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)

        If e.Row.RowType = DataControlRowType.DataRow Then

            Dim l As LinkButton = DirectCast(e.Row.FindControl("LinkButton1"), LinkButton)

            l.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure you want to delete this record " + "')")

        End If

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)

        Dim c_id As [String] = GridView1.DataKeys(e.NewEditIndex).Value.ToString()
        Response.Redirect("country_add.aspx?cid=" + c_id)
    End Sub
End Class
