Imports System.Data

Partial Class add_place
    Inherits System.Web.UI.Page
    Private d As New System.Data.DataTable()

    Private db As New dbconnection()

    Private username As String = ""



    Public Sub bindgrid(ByVal qr As [String])

        Dim db As New dbconnection()

        Dim dtable As System.Data.DataTable = db.getDataTable(qr)

        ddlcountrylist.DataSource = dtable
        ddlcountrylist.DataBind()



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If Not IsPostBack Then


            Dim s As String
            s = "select * from tourism_country"
            Dim db As New dbconnection

            ddlcountrylist.DataSource = db.getDataTable(s)
            ddlcountrylist.DataTextField = "cname"
            ddlcountrylist.DataValueField = "cid"
            ddlcountrylist.DataBind()



        End If




        If Request.QueryString("place_id") Is Nothing Then


            btnadd.Text = "Add"

            RequiredFieldValidator1.Enabled = True
            RequiredFieldValidator2.Enabled = True
            ' RequiredFieldValidator4.Enabled = true;



            RequiredFieldValidator3.Enabled = True

        Else
            btnadd.Text = "Update"




            RequiredFieldValidator1.Enabled = True
            RequiredFieldValidator2.Enabled = True
            RequiredFieldValidator3.Enabled = True
            ' RequiredFieldValidator4.Enabled = true;


            d = db.getDataTable("select * from tourism_place where place_id=" + Request.QueryString("place_id"))

            ddlcountrylist.SelectedValue = d.Rows(0)("cid").ToString()
            txtname.Text = d.Rows(0)("name").ToString()
            txtdescription.Text = d.Rows(0)("description").ToString()
            txtopening_hours.Text = d.Rows(0)("opening_hours").ToString()
            txtlat.Text = d.Rows(0)("lat").ToString()
            txtlng.Text = d.Rows(0)("lng").ToString()
            txtcontact_info.Text = d.Rows(0)("contact_info").ToString()




        End If

    End Sub

    Protected Sub btnadd_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Dim db As New dbconnection()

        Dim dt As New DataTable()


        Dim qr As String = ""




        If btnadd.Text = "Add" Then


            Dim checkName As [String] = "SELECT COUNT(*) as n FROM tourism_place  WHERE name ='" + txtname.Text + "' "


            dt = db.getDataTable(checkName)


            Dim n As Integer = Convert.ToInt16(dt.Rows(0)("n"))


            If n > 0 Then
                ' Response.Write("Exists");

                lblname.Visible = True

            Else

                qr = "insert into tourism_place(name,description,opening_hours,lat,lng,contact_info,cid) values('" + txtname.Text + "','" + txtdescription.Text + "','" + txtopening_hours.Text + "','" + txtlat.Text + "','" + txtlng.Text + "','" + txtcontact_info.Text + "'," + ddlcountrylist.SelectedValue + ")"

                db.ExQ(qr)

                Response.Redirect("place_list.aspx")
            End If

        Else



            qr = "update tourism_place set name='" + txtname.Text + "', description= '" + txtdescription.Text + "', opening_hours= '" + txtopening_hours.Text + "', lat= '" + txtlat.Text + "', lng= '" + txtlng.Text + "', contact_info= '" + txtcontact_info.Text + "',cid=" + ddlcountrylist.SelectedValue + " where place_id=" + Request("place_id").ToString()

            db.ExQ(qr)
            Response.Redirect("place_list.aspx")
        End If


    End Sub





End Class
