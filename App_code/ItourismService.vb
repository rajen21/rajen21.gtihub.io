Imports System.ServiceModel

' NOTE: You can use the "Rename" command on the context menu to change the interface name "ItourismService" in both code and config file together.
Namespace tourism


    <ServiceContract()>
    Public Interface ItourismService

        <OperationContract()>
        Sub DoWork()


        <OperationContract()>
        Function getcountry() As List(Of tourism_country)

        <OperationContract()>
        Function getplace(ByVal cid As String) As List(Of tourism_place)

        <OperationContract()>
        Function getplaceimage(ByVal place_id As String) As List(Of tourism_place_image)

        <OperationContract()>
        Function getplacehotel(ByVal place_id As String) As List(Of tourism_near_by_hotels)



    End Interface
End Namespace



