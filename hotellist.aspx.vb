
Partial Class hotellist
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Dim s As String
            s = "select * from tourism_place"
            Dim db As New dbconnection

            ddlplacelist.DataSource = db.getDataTable(s)
            ddlplacelist.DataTextField = "name"
            ddlplacelist.DataValueField = "place_id"
            ddlplacelist.DataBind()

            If Request.QueryString("place_id") Is Nothing Then
                ViewState.Add("qry", "select hid,name,description,contactinfo,place_id,(select name from tourism_place where place_id=tourism_near_by_hotels.place_id) as place from tourism_near_by_hotels ")
            Else
                ddlplacelist.SelectedValue = Request.QueryString("place_id")
                ViewState.Add("qry", "select  hid,name,description,contactinfo,place_id,(select name from tourism_place where place_id=tourism_place_image.place_id) as name from tourism_place_image where place_id=" + Request.QueryString("place_id"))
            End If



            bindgrid("select hid,name,description,contactinfo,place_id,(select name from tourism_place where place_id=tourism_near_by_hotels.place_id) as place from tourism_near_by_hotels ")




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
        Dim hid As [String] = GridView1.DataKeys(e.RowIndex).Value.ToString()
        Dim qr As [String] = "delete from tourism_near_by_hotels where hid=" + hid
        Dim db As New dbconnection()

        db.ExQ(qr)

        bindgrid("select hid,name,description,contactinfo,place_id,(select name from tourism_place where place_id=tourism_near_by_hotels.place_id) as place from tourism_near_by_hotels ")

    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)

        If e.Row.RowType = DataControlRowType.DataRow Then

            Dim l As LinkButton = DirectCast(e.Row.FindControl("LinkButton1"), LinkButton)

            l.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure you want to delete this record " + "')")

        End If

    End Sub


    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)

        Dim hid As [String] = GridView1.DataKeys(e.NewEditIndex).Value.ToString()
        Response.Redirect("addhotel.aspx?hid=" + hid)
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click

        ViewState.Add("qry", "select hid,name,description,contactinfo,place_id,(select name from tourism_place where place_id=tourism_near_by_hotels.place_id) as place from tourism_near_by_hotels where place_id= " + ddlplacelist.SelectedValue)
        bindgrid(ViewState("qry"))
    End Sub



    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Response.Redirect("addhotel.aspx")
    End Sub
End Class
