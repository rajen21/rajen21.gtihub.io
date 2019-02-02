
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb

Public Partial Class user_add
    Inherits System.Web.UI.Page
    Private d As New System.Data.DataTable()

    Private db As New dbconnection()


    Private con As New OleDbConnection()


    Private username As String = ""


    Protected Sub Page_Load(sender As Object, e As EventArgs)

        If Not IsPostBack Then

          
            If Request.QueryString("uid") Is Nothing Then


                btnadd.Text = "Add"
                btnreset.Text = "Reset"
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


                btnreset.Text = "Cancel"

                d = db.getDataTable("select * from tourism_admin where uid=" + Request.QueryString("uid"))

                txtuname.Text = d.Rows(0)("uname").ToString()

                txtpassword.Text = d.Rows(0)("password").ToString()



            End If

        End If

    End Sub


  


    Protected Sub btnadd_Click1(sender As Object, e As EventArgs)

        Dim db As New dbconnection()

        Dim dt As New DataTable()


        Dim qr As String = ""




        If btnadd.Text = "Add" Then


            Dim checkName As [String] = "SELECT COUNT(*) as n FROM tourism_admin WHERE uname ='" + txtuname.Text + "' "


            dt = db.getDataTable(checkName)


            Dim n As Integer = Convert.ToInt16(dt.Rows(0)("n"))


            If n > 0 Then
				' Response.Write("Exists");

                lbluname.Visible = True

            Else

                qr = "insert into tourism_admin(uname,password) values('" + txtuname.Text + "','" + txtpassword.Text + "')"

                db.ExQ(qr)

                Response.Redirect("user_list.aspx")
			End If

        Else



            qr = "update tourism_admin set uname='" + txtuname.Text + "', password= '" + txtpassword.Text + "' where uid=" + Request("uid").ToString()

            db.ExQ(qr)
			Response.Redirect("user_list.aspx")
		End If


    End Sub


    Protected Sub btn_reset(sender As Object, e As EventArgs)

        If btnreset.Text = "Reset" Then

            txtuname.Text = ""


            txtpassword.Text = ""



        Else
            Response.Redirect("user_list.aspx")

        End If

    End Sub


End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
