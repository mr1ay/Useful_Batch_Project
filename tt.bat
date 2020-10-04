	@echo off

	if "%1"=="" 	 echo please you add program name

	if "%1"=="c" 	(
			taskkill /f /im conhost.exe	 	
			taskkill /f /im cmd.exe
			goto :end
			)

	if "%1"=="e"  	(
			taskkill /f /im explorer.exe
			goto :end
			)
	if not "%1"==""  taskkill /f /im %1.exe

:end
goto :eof