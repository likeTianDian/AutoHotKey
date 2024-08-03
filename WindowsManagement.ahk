
; 窗口管理
; 最大化(Win+Alt+f)
!#f::WinMaximize, A
; 靠左(Win+Alt+Left)
!#Left::WinMove, A, , 0, 0, A_ScreenWidth // 2, A_ScreenHeight
; 靠右(Win+Alt+Right)
!#Right::WinMove, A, , A_ScreenWidth // 2, 0, A_ScreenWidth // 2, A_ScreenHeight
; 靠上(Win+Alt+Up)
!#Up::WinMove, A, , 0, 0, A_ScreenWidth, A_ScreenHeight // 2
; 靠下(Win+Alt+Down)
!#Down::WinMove, A, , 0, A_ScreenHeight // 2, A_ScreenWidth, A_ScreenHeight // 2
; 居中(Win+Alt+Enter)
!#Enter::WinMove, A, , 0, 0, A_ScreenWidth, A_ScreenHeight
; 左上(Win+Alt+1)
!#1::WinMove, A, , 0, 0, A_ScreenWidth // 2, A_ScreenHeight // 2
; 右上(Win+Alt+2)
!#2::WinMove, A, , A_ScreenWidth // 2, 0, A_ScreenWidth // 2, A_ScreenHeight // 2
; 左下(Win+Alt+3)
!#3::WinMove, A, , 0, A_ScreenHeight // 2, A_ScreenWidth // 2, A_ScreenHeight // 2
; 右下(Win+Alt+4)
!#4::WinMove, A, , A_ScreenWidth // 2, A_ScreenHeight // 2, A_ScreenWidth // 2, A_ScreenHeight // 2



; 切换应用程序
; 按下 Alt + Tab，按住 Alt 键
!Tab::
    Send, {Alt Down}{Tab}
return

; 按下 Alt + ~，按住 Alt 键
!::
    Send, {Alt Down}+{Tab}
return

; 松开 Alt 键
~LAlt Up::
    Send, {Alt Up}
return