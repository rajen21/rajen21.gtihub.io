Imports System.ServiceModel.Web

' NOTE: You can use the "Rename" command on the context menu to change the class name "tourismService" in code, svc and config file together.
Namespace tourism


    Public Class tourismService
        Implements ItourismService

        Public Sub DoWork() Implements ItourismService.DoWork
        End Sub
        <WebGet(UriTemplate:="getcountry", Responseformat:=WebMessageFormat.Json, BodyStyle:=WebMessageBodyStyle.Wrapped)>
        Function getcountry() As List(Of tourism_country) Implements ItourismService.getcountry
            Dim lst As New List(Of tourism_country)()
            Try
                Dim db As New dbconnection()

                Dim dtable As System.Data.DataTable = db.getDataTable("select * from tourism_country ")

                For i As Integer = 0 To dtable.Rows.Count - 1

                    Dim obj As New tourism_country
                    obj.cid = dtable.Rows(i)("cid").ToString
                    obj.cname = dtable.Rows(i)("cname").ToString
                    lst.Add(obj)


                Next

            Catch ex As Exception
                Dim obj As New tourism_country
                obj.cname = ex.Message
                lst.Add(obj)

            End Try
            Return lst

        End Function
        <WebGet(UriTemplate:="getplace/{cid}", Responseformat:=WebMessageFormat.Json, BodyStyle:=WebMessageBodyStyle.Wrapped)>
        Function getplace(ByVal cid As String) As List(Of tourism_place) Implements ItourismService.getplace
            Dim lst As New List(Of tourism_place)()
            Try
                Dim db As New dbconnection()

                Dim dtable As System.Data.DataTable = db.getDataTable("select * from tourism_place where cid=" + cid)

                For i As Integer = 0 To dtable.Rows.Count - 1

                    Dim obj As New tourism_place
                    obj.place_id = dtable.Rows(i)("place_id").ToString
                    obj.name = dtable.Rows(i)("name").ToString
                    obj.description = dtable.Rows(i)("description").ToString
                    obj.opening_hours = dtable.Rows(i)("opening_hours").ToString
                    obj.lat = dtable.Rows(i)("lat").ToString
                    obj.lng = dtable.Rows(i)("lng").ToString
                    obj.contact_info = dtable.Rows(i)("contact_info").ToString
                    obj.cid = dtable.Rows(i)("cid").ToString


                    lst.Add(obj)


                Next

            Catch ex As Exception
                Dim obj As New tourism_place
                obj.name = ex.Message
                lst.Add(obj)

            End Try
            Return lst
        End Function
        <WebGet(UriTemplate:="getplaceimage/{place_id}", Responseformat:=WebMessageFormat.Json, BodyStyle:=WebMessageBodyStyle.Wrapped)>
        Function getplaceimage(ByVal place_id As String) As List(Of tourism_place_image) Implements ItourismService.getplaceimage
            Dim lst As New List(Of tourism_place_image)()
            Try
                Dim db As New dbconnection()

                Dim dtable As System.Data.DataTable = db.getDataTable("select * from tourism_place_image where place_id=" + place_id)

                For i As Integer = 0 To dtable.Rows.Count - 1

                    Dim obj As New tourism_place_image
                    obj.pimgid = dtable.Rows(i)("pimgid").ToString
                    obj.photos = dtable.Rows(i)("photos").ToString
                    obj.place_id = dtable.Rows(i)("place_id").ToString


                    lst.Add(obj)


                Next

            Catch ex As Exception
                Dim obj As New tourism_place_image
                obj.photos = ex.Message
                lst.Add(obj)

            End Try
            Return lst
        End Function
        <WebGet(UriTemplate:="getplacehotel/{place_id}", Responseformat:=WebMessageFormat.Json, BodyStyle:=WebMessageBodyStyle.Wrapped)>
        Function getplacehotel(ByVal place_id As String) As List(Of tourism_near_by_hotels) Implements ItourismService.getplacehotel
            Dim lst As New List(Of tourism_near_by_hotels)()
            Try
                Dim db As New dbconnection()

                Dim dtable As System.Data.DataTable = db.getDataTable("select * from tourism_near_by_hotels where place_id=" + place_id)

                For i As Integer = 0 To dtable.Rows.Count - 1

                    Dim obj As New tourism_near_by_hotels
                    obj.hid = dtable.Rows(i)("hid").ToString
                    obj.name = dtable.Rows(i)("name").ToString
                    obj.description = dtable.Rows(i)("description").ToString
                    obj.contact_info = dtable.Rows(i)("contact_info").ToString
                    obj.place_id = dtable.Rows(i)("place_id").ToString


                    lst.Add(obj)


                Next

            Catch ex As Exception
                Dim obj As New tourism_near_by_hotels
                obj.name = ex.Message
                lst.Add(obj)

            End Try
            Return lst
        End Function
    End Class
End Namespace

