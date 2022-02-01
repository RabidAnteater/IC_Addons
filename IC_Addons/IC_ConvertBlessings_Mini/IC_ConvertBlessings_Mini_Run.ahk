#SingleInstance force
#NoTrayIcon
#Persistent

#include %A_LineFile%\..\IC_ConvertBlessings_Mini_Component.ahk
#include %A_LineFile%\..\..\..\SharedFunctions\ObjRegisterActive.ahk
#include %A_LineFile%\..\..\..\SharedFunctions\IC_SharedFunctions_Class.ahk
#include %A_LineFile%\..\..\..\ServerCalls\IC_ServerCalls_Class.ahk


global g_ConvertBlessings_Mini := new IC_ConvertBlessings_Mini
global g_ServerCall

g_ConvertBlessings_Mini.CreateTimedFunctions()
g_ConvertBlessings_Mini.StartTimedFunctions()

ObjRegisterActive(g_ConvertBlessings_Mini, "{CC6FC77B-2E35-494C-A28F-64226DFEE811}")

ComObjectRevoke()
{
    ObjRegisterActive(g_ConvertBlessings_Mini, "")
    ExitApp
}
return

OnExit(ComObjectRevoke())


