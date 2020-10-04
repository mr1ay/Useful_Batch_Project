	@echo off

	if "%1"=="" 	 timeout /t 1 >nul

	if not "%1"==""  timeout /t %1 >nul

:end
goto :eof