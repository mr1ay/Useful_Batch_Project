	@echo off

	if "%1"=="" 	nircmd sendkeypress e c h o spc o n enter

	if "%1"=="q" 	(
			nircmd sendkeypress e c h o spc o n enter
			nircmd sendkeypress c l s enter
			goto :end
			)

:end
goto :eof