	@echo off

	if "%1"=="" 	nircmd sendkeypress e c h o spc o f f enter

	if "%1"=="q" 	(
			nircmd sendkeypress e c h o spc o f f enter
			nircmd sendkeypress c l s enter
			goto :end
			)

:end
goto :eof