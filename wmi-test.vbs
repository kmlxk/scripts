    Set System = GetObject("winmgmts:").InstancesOf("Win32_ComputerSystem")
    For Each item In System
        'List1.AddItem item.cputype
        s = "Computer Info" & vbCrLf
        s = s & "***********************" & vbCrLf
        s = s & "���������: " & item.Name & vbCrLf
        s = s & "״̬: " & item.Status & vbCrLf
        s = s & "����: " & item.SystemType & vbCrLf
        s = s & "��������: " & item.Manufacturer & vbCrLf
        s = s & "�ͺ�: " & item.Model & vbCrLf
        s = s & "��: " & item.domain & vbCrLf
        's = s & "������" & item.Workgroup & vbCrLf '��ù���������ѡ���ͬʱ��

        s = s & "��ǰ�û�: " & item.username & vbCrLf
        s = s & "����״̬" & item.BootupState & vbCrLf
        s = s & "�ü��������" & item.PrimaryOwnerName & vbCrLf
        s = s & "ϵͳ����" & item.CreationClassName & vbCrLf
        s = s & "�����������" & item.Description & vbCrLf

        For i = 0 To 1  '������谲װ������ϵͳ
            s = s & Chr(5) & "����ѡ��" & i & " :" & item.SystemStartupOptions(i) & vbCrLf
        Next
    Next

    Wscript.Echo s