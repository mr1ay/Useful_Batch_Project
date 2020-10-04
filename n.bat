	@echo off
	
	if "%1"=="" 	 (
			echo.
			batbox /c 0x0c /d ":Syntax" 
			echo.
			echo.
			batbox /c 0x0b /d "      n   " 
			batbox /c 0x0e /d "       "
			batbox /c 0x0f /d ": " 
			batbox /c 0x0f /d "create a new file and edit this file"
			echo.
			batbox /c 0x0b /d "      n n " 
			batbox /c 0x0e /d " [file]"
			batbox /c 0x0f /d ": " 
			batbox /c 0x0f /d "create a new text file and edit this file"
			echo.
			batbox /c 0x0b /d "      n nn" 
			batbox /c 0x0e /d " [file]"
			batbox /c 0x0f /d ": " 
			batbox /c 0x0f /d "create a new batch file and edit this file"
			echo.
			goto :end
			)


	if "%1"=="n" 	(
			start notepad.exe %2.txt
			goto :end
			)

	if "%1"=="nn"  	(
			start notepad.exe %2.bat
			goto :end
			)

	if not "%1"=="" start  notepad.exe %1

:end
goto :eof
