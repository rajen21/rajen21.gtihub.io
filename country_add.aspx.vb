Imports System.Data

Partial Class place_add
    Inherits System.Web.UI.Page
    Private d As New System.Data.DataTable()

    Private db As New dbconnection()





    Private cname As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Not IsPostBack Then








            If Request.QueryString("cid") Is Nothing Then


                btnadd.Text = "Add"
                btnreset.Text = "Reset"
                
            Else
                btnadd.Text = "Update"




              

                btnreset.Text = "Cancel"

                d = db.getDataTable("select * from tourism_country where cid=" + Request.QueryString("cid"))

                txtcname.Text = d.Rows(0)("cname").ToString()





            End If

        End If


    End Sub

    Protected Sub btnadd_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Dim db As New dbconnection()

        Dim dt As New DataTable()
        
        Dim qr As String = ""




        If btnadd.Text = "Add" Then


            Dim checkName As [String] = "SELECT COUNT(*) as n FROM tourism_country WHERE cname ='" + txtcname.Text + "' "


            dt = db.getDataTable(checkName)


            Dim n As Integer = Convert.ToInt16(dt.Rows(0)("n"))


            If n > 0 Then
                ' Response.Write("Exists");



            Else

                qr = "insert into tourism_country(cname) values('" + txtcname.Text + "')"

                db.ExQ(qr)

                Response.Redirect("country_list.aspx")
            End If

        Else



            qr = "update tourism_country set cname='" + txtcname.Text + "' where cid=" + Request("cid").ToString()

            db.ExQ(qr)
            Response.Redirect("country_list.aspx")
        End If


    End Sub


    Protected Sub btn_reset(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        If btnreset.Text = "Reset" Then

            txtcname.Text = ""


         
        Else
            Response.Redirect("conutry_list.aspx")

        End If

    End Sub

End Class
