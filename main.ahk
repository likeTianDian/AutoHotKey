SendMode Input  ; 推荐使用
SetWorkingDir %A_ScriptDir%  ; 确保一致的起始目录
SetTitleMatchMode 2  ; 窗口标题匹配模式设置为包含匹配

; 包含其他脚本文件
#Include %A_ScriptDir%/LikeMac.ahk
#Include %A_ScriptDir%/WindowsManagement.ahk
#Include %A_ScriptDir%/OpenApp.ahk