powershell -file clean.ps1 "%1"
ChDir "%1"
"C:\Program Files (x86)\Nuget\nuget.exe" spec -force
powershell -file ..\spec.ps1 "%2" "%3"
"C:\Program Files (x86)\Nuget\nuget.exe" pack
powershell -file ..\push.ps1
ChDir ..
powershell -file initialize.ps1 "%1"