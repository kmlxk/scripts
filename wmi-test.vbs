    Set System = GetObject("winmgmts:").InstancesOf("Win32_ComputerSystem")
    For Each item In System
        'List1.AddItem item.cputype
        s = "Computer Info" & vbCrLf
        s = s & "***********************" & vbCrLf
        s = s & "计算机名称: " & item.Name & vbCrLf
        s = s & "状态: " & item.Status & vbCrLf
        s = s & "类型: " & item.SystemType & vbCrLf
        s = s & "生产厂家: " & item.Manufacturer & vbCrLf
        s = s & "型号: " & item.Model & vbCrLf
        s = s & "域: " & item.domain & vbCrLf
        's = s & "工作组" & item.Workgroup & vbCrLf '获得工作组和域的选项不能同时用

        s = s & "当前用户: " & item.username & vbCrLf
        s = s & "启动状态" & item.BootupState & vbCrLf
        s = s & "该计算机属于" & item.PrimaryOwnerName & vbCrLf
        s = s & "系统类型" & item.CreationClassName & vbCrLf
        s = s & "计算机类类型" & item.Description & vbCrLf

        For i = 0 To 1  '这里假设安装了两个系统
            s = s & Chr(5) & "启动选项" & i & " :" & item.SystemStartupOptions(i) & vbCrLf
        Next
    Next

    Wscript.Echo s