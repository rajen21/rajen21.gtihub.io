
Partial Class image_list
    Inherits System.Web.UI.Page





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Dim s As String
            s = "select * from tourism_place"
            Dim db As New dbconnection

            ddlplacelist.DataSource = db.getDataTable(s)
            ddlplacelist.DataTextField = "name"
            ddlplacelist.DataValueField = "place_id"
            ddlplacelist.DataBind()

            If Request.QueryString("place_id") Is Nothing Then
                ViewState.Add("qry", "select pimgid,photos,(select name from tourism_place where place_id=tourism_place_image.place_id) as name from tourism_place_image")
            Else
                ddlplacelist.SelectedValue = Request.QueryString("place_id")
                ViewState.Add("qry", "select pimgid,photos,(select name from tourism_place where place_id=tourism_place_image.place_id) as name from tourism_place_image where place_id=" + Request.QueryString("place_id"))
            End If

            bindgrid()


        End If
    End Sub
    Public Sub bindgrid()
        Dim db As New dbconnection
        Dim dtable As System.Data.DataTable
        dtable = db.getDataTable(ViewState.Item("qry"))
        gvimagelist.DataSource = dtable
        gvimagelist.DataBind()




    End Sub


    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Response.Redirect("add_image.aspx")

    End Sub

    Protected Sub gvimagelist_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gvimagelist.PageIndexChanging
        gvimagelist.PageIndex = e.NewPageIndex
        bindgrid()

    End Sub



    Protected Sub gvimagelist_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gvimagelist.RowDeleting
        Dim pimgid As String
        pimgid = gvimagelist.DataKeys(e.RowIndex).Value.ToString()

        Dim hdn As HiddenField
        hdn = gvimagelist.Rows(e.RowIndex).FindControl("hdn")
        If Not hdn Is Nothing Then
            Dim old As String
            old = Server.MapPath("") + "\photos\" + hdn.Value
            If System.IO.File.Exists(old) Then
                System.IO.File.Delete(old)

            End If
        End If
        Dim db As New dbconnection
        Dim q As String

        q = "delete from tourism_place_image where pimgid=" + pimgid
        db.ExQ(q)
        bindgrid()


    End Sub

    Protected Sub gvimagelist_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gvimagelist.RowEditing
        Dim pimgid As String
        pimgid = gvimagelist.DataKeys(e.NewEditIndex).Value.ToString()
        Response.Redirect("add_image.aspx?place_id=" + pimgid + "&test=0")



    End Sub



    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click

        ViewState.Add("qry", "select pimgid,photos,(select name from tourism_place where place_id=tourism_place_image.place_id) as name from tourism_place_image where place_id=" + ddlplacelist.SelectedValue)
        bindgrid()

    End Sub
End Class
