	@echo off

	if "%1"=="" 	(
			echo.
			batbox /c 0x0c /d ":Syntax" 
			echo.
			echo.
			batbox /c 0x0b /d "      d   " 
			batbox /c 0x0e /d "       "
			batbox /c 0x0f /d "       : " 
			batbox /c 0x0f /d "look syntax"
			echo.
			batbox /c 0x0b /d "      d d " 
			batbox /c 0x0e /d " [link]"
			batbox /c 0x0f /d "       : " 
			batbox /c 0x0f /d "download for only link"
			echo.
			batbox /c 0x0b /d "      d dd" 
			batbox /c 0x0e /d " [file]"
			batbox /c 0x0e /d " [link]"
			batbox /c 0x0f /d ": " 
			batbox /c 0x0f /d "download link with filename"
			echo.
			goto :end
			)

	if "%1"=="d" 	(
			wget %2
			goto :end
			)

	if "%1"=="dd"  	(
			wget -O %2 %3
			goto :end
			)

:end
goto :eof