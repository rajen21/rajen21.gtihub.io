Imports System.Data

Partial Class addhotel
    Inherits System.Web.UI.Page
    Private d As New System.Data.DataTable()

    Private db As New dbconnection()


    Protected Sub btnadd_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Dim db As New dbconnection()

        Dim dt As New DataTable()


        Dim qr As String = ""




        If btnadd.Text = "Add" Then


            Dim checkName As [String] = "SELECT COUNT(*) as n FROM tourism_near_by_hotels  WHERE name ='" + txtname.Text + "' "


            dt = db.getDataTable(checkName)


            Dim n As Integer = Convert.ToInt16(dt.Rows(0)("n"))


            If n > 0 Then
                ' Response.Write("Exists");

                lblname.Visible = True

            Else

                qr = "insert into tourism_near_by_hotels(name,description,contactinfo,place_id) values('" + txtname.Text + "','" + txtdescription.Text + "','" + txtcontact_info.Text + "','" + DropDownList1.SelectedValue.ToString + "')"

                db.ExQ(qr)

                Response.Redirect("hotellist.aspx")
            End If

        Else



            qr = "update tourism_near_by_hotels set name='" + txtname.Text + "', description= '" + txtdescription.Text + "',  contactinfo= '" + txtcontact_info.Text + "',place_id='" + DropDownList1.SelectedValue + "' where hid=" + Request("hid").ToString()

            db.ExQ(qr)
            Response.Redirect("hotellist.aspx")
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

        If Not IsPostBack Then








            If Request.QueryString("hid") Is Nothing Then


                btnadd.Text = "Add"

                RequiredFieldValidator1.Enabled = True
                RequiredFieldValidator2.Enabled = True
                ' RequiredFieldValidator4.Enabled = true;




            Else
                btnadd.Text = "Update"




                RequiredFieldValidator1.Enabled = True
                RequiredFieldValidator2.Enabled = True



                d = db.getDataTable("select * from tourism_near_by_hotels where hid=" + Request.QueryString("hid"))

                txtname.Text = d.Rows(0)("name").ToString()
                txtdescription.Text = d.Rows(0)("description").ToString()
                txtcontact_info.Text = d.Rows(0)("contactinfo").ToString()



            End If
        End If



    End Sub



End Class
