
# Windows Registry

## Windows use UTC time

`Reg add HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation /v RealTimeIsUniversal /t REG_DWORD /d 1`

## keyboard remapping

```
# file.reg

Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,38,00,5B,E0,5B,E0,38,00,00,00,00,00
```

mapset

```
"Scancode Map"=hex:
00,00,00,00,
00,00,00,00,
03,00,00,00,
38,00,5B,E0,
5B,E0,38,00,
00,00,00,00

Escape             01 00
Tab          　　　0F 00
Caps Lock          3A 00
Left Alt           38 00
Left Ctrl          1D 00
Left Shift         2A 00
Left Windows       5B E0
Right Alt          38 E0
Right Ctrl         1D E0
Right Shift        36 00
Right Windows      5C E0
Backspace          0E 00
Delete             53 E0
Enter              1C 00
Space              39 00
Insert             52 E0
HOME               47 E0
End                4F E0
Num Lock           45 00
Page Down          51 E0
Page Up            49 E0
Scroll Lock        46 00
```


