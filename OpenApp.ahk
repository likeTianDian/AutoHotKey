
Activate(t)
{
    ; 检查窗口是否已经激活
    IfWinActive, %t%
    {
        WinMinimize ; 如果是，则最小化窗口
        return
    }
    
    SetTitleMatchMode 2  ; 确保窗口标题匹配模式为包含匹配
    DetectHiddenWindows, on  ; 启用对隐藏窗口的检测

    ; 检查窗口是否存在
    IfWinExist, %t%
    {
        WinShow  ; 如果窗口存在，显示窗口
        WinActivate  ; 激活窗口
        return 1
    }
    return 0  ; 如果窗口不存在，返回 0
}

ActivateAndOpen(t, p)
{
    ; 如果激活窗口失败（返回值为 0），则运行程序
    if Activate(t) == 0
    {
        Run, %p%  ; 运行指定程序
        WinActivate  ; 激活新运行的程序窗口
        return
    }
}

; 定义热键
; #a::ActivateAndOpen("Microsoft Outlook", "outlook.exe")
; #b::ActivateAndOpen("UltraEdit", "C:\Program Files\UltraEdit\UltraEdit.exe")
; #c::Activate("UltraEdit")
!#a::ActivateAndOpen("Edge", "msedge.exe")
; !#t::ActivateAndOpen("MINGW64", "wt.exe")