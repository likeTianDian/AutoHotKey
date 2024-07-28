; ! 表示 Alt 键。
; ` 是波浪键（~）的符号。
; Send, {Alt Down} 表示按下 Alt 键。
; Send, {Shift Down}{Tab} 表示按下 Shift 键和 Tab 键。
; Send, {Tab Up}{Shift Up} 表示松开 Tab 键和 Shift 键。
; ~LAlt Up:: 表示当左 Alt 键松开时触发事件。
; Send, {Alt Up} 表示松开 Alt 键。

!c::Send, ^c       ; Cmd + C (复制)
!v::Send, ^v       ; Cmd + V (粘贴)
!x::Send, ^x       ; Cmd + X (剪切)
!a::Send, ^a       ; Cmd + A (全选)
!f::Send, ^f       ; Cmd + F (查找)
!o::Send, ^o       ; Cmd + O (打开)
!s::Send, ^s       ; Cmd + S (保存)
!z::Send, ^z       ; Cmd + Z (撤销)
!+z::Send, ^+z     ; Cmd + Shift + Z (重做)
!q::Send, !{F4}    ; Cmd + Q (退出)
; !Tab::Send, !{Tab} ; Cmd + Tab (切换应用程序)
!w::Send, ^w       ; Cmd + W (关闭窗口)
; !W::Send, !{F4}    ; Cmd + W (关闭窗口 - 另一个映射)
!n::Send, ^n       ; Cmd + N (新建窗口)
!^Escape::Send, ^+{Escape} ; Cmd + Option + Esc (打开任务管理器)

; 切换窗口
; 按下 Alt + Tab，按住 Alt 键
!Tab::
    Send, {Alt Down}{Tab}
return

; 按下 Alt + ~，按住 Alt 键
!`::
    Send, {Alt Down}+{Tab}
return

; 松开 Alt 键
~LAlt Up::
    Send, {Alt Up}
return
