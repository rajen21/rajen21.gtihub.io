
Partial Class clientpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim st As String
        st = "select place_id,name,description,opening_hours,lat,lng,contact_info,cid,(select photos from tourism_place_image where place_id=tourism_place.place_id limit 1)as photos from tourism_place where cid=(select cid from tourism_country where cname='Singapore')"
        Dim obj As New dbconnection
        rptsingapore.DataSource = obj.getDataTable(st)
        rptsingapore.DataBind()

        st = "select place_id,name,description,opening_hours,lat,lng,contact_info,cid,(select photos from tourism_place_image where place_id=tourism_place.place_id limit 1)as photos from tourism_place where cid=(select cid from tourism_country where cname='Malaysia')"
        rptmalaysia.DataSource = obj.getDataTable(st)
        rptmalaysia.DataBind()

        st = "select place_id,name,description,opening_hours,lat,lng,contact_info,cid,(select photos from tourism_place_image where place_id=tourism_place.place_id limit 1)as photos from tourism_place where cid=(select cid from tourism_country where cname='Thailand')"
        rptthailand.DataSource = obj.getDataTable(st)
        rptthailand.DataBind()



    End Sub
End Class
