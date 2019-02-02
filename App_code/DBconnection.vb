
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports MySql.Data.MySqlClient
Imports MySql.Data
Imports Microsoft.CSharp
Imports System.Data

Public Class dbconnection

    Private objcon As New MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("dbConnectionString").ConnectionString)

	Public Function getDataTable(query As String) As System.Data.DataTable


        Try
            If objcon.State = System.Data.ConnectionState.Closed Then
                objcon.Open()

            End If

            Dim d As New System.Data.DataTable()
			Dim adp As New MySqlDataAdapter(query, objcon)

            Dim ds As New System.Data.DataSet()
			adp.Fill(ds, "table")
			If objcon.State = System.Data.ConnectionState.Open Then

                objcon.Close()

            End If

            Return ds.Tables("table")

        Catch ex As System.Exception


            If objcon.State = System.Data.ConnectionState.Open Then
                objcon.Close()

            End If

            Throw ex

        End Try


    End Function

    Public Function ExQ_by_para(query As String, allpara As List(Of MyPara)) As Integer

        Try
            If objcon.State = System.Data.ConnectionState.Closed Then

                objcon.Open()
			End If



            Dim cmd As New MySqlCommand(query, objcon)

            Dim all As MySqlParameterCollection = cmd.Parameters



            For k As Integer = 0 To allpara.Count - 1
				Dim para1 As New MySqlParameter()

                para1.ParameterName = allpara(k).Name
                para1.Value = allpara(k).Value
                If allpara(k).PType = ParaType.StringType Then

                    para1.DbType = System.Data.DbType.[String]
                ElseIf allpara(k).PType = ParaType.NumberType Then

                    para1.DbType = System.Data.DbType.Int32
                ElseIf allpara(k).PType = ParaType.DateType Then

                    para1.DbType = System.Data.DbType.[Date]
                End If
                all.Add(para1)

            Next
			'cmd.Parameters.Add(all);
			cmd.CommandType = System.Data.CommandType.Text
            Dim i As Int32 = cmd.ExecuteNonQuery()
			If objcon.State = System.Data.ConnectionState.Open Then

                objcon.Close()

            End If

            Return i

        Catch ex As System.Exception

            If objcon.State = System.Data.ConnectionState.Open Then
                objcon.Close()

            End If



            Throw ex

        End Try

    End Function

    Public Function ExQ(query As String) As Integer

        Try
            If objcon.State = System.Data.ConnectionState.Closed Then

                objcon.Open()
			End If



            Dim cmd As New MySqlCommand(query, objcon)

            Dim i As Int32 = cmd.ExecuteNonQuery()

            If objcon.State = System.Data.ConnectionState.Open Then

                objcon.Close()

            End If

            Return i

        Catch ex As System.Exception

            If objcon.State = System.Data.ConnectionState.Open Then
                objcon.Close()

            End If



            Throw ex

        End Try

    End Function


    Private Sub openConnection()

        If objcon.State = ConnectionState.Closed Then

            objcon.Open()

        End If

    End Sub


    Private Sub closeConnection()

        If objcon.State = ConnectionState.Open Then

            objcon.Close()

        End If

    End Sub


    Public Function executeQueryUsingPrepare(query As String, parameters As List(Of MyPara)) As Integer

        Try
            openConnection()


            Dim command As New MySqlCommand(query, objcon)


            Dim paraCollection As MySqlParameterCollection = command.Parameters


            For Each param As MyPara In parameters
                Dim p As New MySqlParameter(param.Name, param.PType)


                p.Value = param.Value


                command.Parameters.Add(p)

            Next

            command.Prepare()


            If command.ExecuteNonQuery() > 0 Then
                closeConnection()

                Return 1
			Else
                closeConnection()

                Return 0

			End If

        Catch ex As Exception

            closeConnection()

            Throw ex

        End Try


    End Function


    Public Function getTable(query As String, parameters As List(Of Parameter)) As DataTable

        Dim dt As New DataTable()


        Try
            openConnection()


            Dim command As New MySqlCommand(query, objcon)



            For Each param As Parameter In parameters
                Dim p As New MySqlParameter(param.name, param.type)


                p.Value = param.value

                command.Parameters.Add(p)

            Next

            command.Prepare()


            Dim reader As MySqlDataReader = command.ExecuteReader()


            If reader.HasRows Then
                dt = New DataTable()

                dt.Load(reader)

			End If

        Catch ex As Exception

            closeConnection()

            Throw ex

        End Try


        Return dt

    End Function
End Class