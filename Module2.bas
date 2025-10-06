Attribute VB_Name = "Module2"
Sub ClearGenderFilter()
    Dim pt As PivotTable
    Dim ws As Worksheet
    Dim pf As PivotField

    For Each ws In ThisWorkbook.Worksheets
        For Each pt In ws.PivotTables
            On Error Resume Next
            Set pf = pt.PivotFields("Gender")
            pf.ClearAllFilters
        Next pt
    Next ws
End Sub
