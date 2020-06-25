@echo off

set __app__="Maya 2019"
set __exe__="C:\Program Files\Autodesk\Maya2019\bin\maya.exe"
if not exist %__exe__% goto :missing_app

if "%PYPE_OPEN_WORKFILE%"=="" (
  start %__app__% %__exe__% %*
) else (
  start %__app__% %__exe__% -file "%PYPE_OPEN_WORKFILE%" %*
)

goto :eof

:missing_app
    echo ERROR: %__app__% not found in %__exe__%
    exit /B 1
