
Partial Class place_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("username") Is Nothing Then
        '    Response.Redirect("admin_login.aspx")

        'End If


        If Not IsPostBack Then


            Dim s As String
            s = "select * from tourism_country"
            Dim db As New dbconnection

            ddlcountrylist.DataSource = db.getDataTable(s)
            ddlcountrylist.DataTextField = "cname"
            ddlcountrylist.DataValueField = "cid"
            ddlcountrylist.DataBind()
            If ddlcountrylist.SelectedIndex > -1 Then
                bindgrid("select * from tourism_place where cid=" + ddlcountrylist.SelectedValue)
            Else
                bindgrid("select * from tourism_place")
            End If





        End If
    End Sub
    Public Sub bindgrid(ByVal qr As [String])

        Dim db As New dbconnection()

        Dim dtable As System.Data.DataTable = db.getDataTable(qr)

        GridView1.DataSource = dtable
        GridView1.DataBind()

    End Sub
    'protected void btnaddnew_Click(object sender, EventArgs e)
    '{
    '    Response.Redirect("user_add.aspx");

    '}
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)


        lblerror.Text = ""
        Dim place_id As [String] = GridView1.DataKeys(e.RowIndex).Value.ToString()
        Dim qr As [String] = "delete from tourism_place where place_id=" + place_id
        Dim db As New dbconnection()

        db.ExQ(qr)

        If ddlcountrylist.SelectedIndex > -1 Then
            bindgrid("select * from tourism_place where cid=" + ddlcountrylist.SelectedValue)
        Else
            bindgrid("select * from tourism_place")
        End If



    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)

        If e.Row.RowType = DataControlRowType.DataRow Then

            Dim l As LinkButton = DirectCast(e.Row.FindControl("LinkButton1"), LinkButton)

            l.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure you want to delete this record " + "')")

        End If

    End Sub


    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)

        Dim place_id As [String] = GridView1.DataKeys(e.NewEditIndex).Value.ToString()
        Response.Redirect("add_place.aspx?place_id=" + place_id)
    End Sub


    Protected Sub ddlcountrylist_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcountrylist.SelectedIndexChanged
        If ddlcountrylist.SelectedIndex > -1 Then
            bindgrid("select * from tourism_place where cid=" + ddlcountrylist.SelectedValue)
        Else
            bindgrid("select * from tourism_place")
        End If


    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        If ddlcountrylist.SelectedIndex > -1 Then
            bindgrid("select * from tourism_place where cid=" + ddlcountrylist.SelectedValue)
        Else
            bindgrid("select * from tourism_place")
        End If


    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Response.Redirect("add_place.aspx")
    End Sub
End Class
