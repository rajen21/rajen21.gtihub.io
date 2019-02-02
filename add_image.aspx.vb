
Partial Class add_image
    Inherits System.Web.UI.Page



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (fileupload1.HasFile) Then
            fileupload1.SaveAs(Server.MapPath("") + "\images\" + fileupload1.FileName)


            Dim db As New dbconnection
            Dim qr As String = "insert into  tourism_place_image(photos,place_id) values('" + fileupload1.FileName + "','" + DropDownList1.SelectedValue + "')"

            db.ExQ(qr)

            Response.Redirect("image_list.aspx")


        Else

            Response.Write("plz select file")





        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Dim s As String
            s = "select * from tourism_place"
            Dim db As New dbconnection
            DropDownList1.DataSource = db.getDataTable(s)
            DropDownList1.DataTextField = "name"
            DropDownList1.DataValueField = "place_id"
            DropDownList1.DataBind()
            If Not Request.QueryString("place_id") Is Nothing Then
                DropDownList1.SelectedValue = Request.QueryString("place_id")
            End If

        End If
    End Sub
End Class
