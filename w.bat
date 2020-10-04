	@echo off
	if "%1"=="" 	(
			echo.
			batbox /c 0x0c /d ":Syntax"
			echo.
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d "   1"
			batbox /c 0x0a /d " :wifi1 on"
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d "   2"
			batbox /c 0x0a /d " :wifi2 on"
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d "   3"
			batbox /c 0x0a /d " :wifi3 on"
			echo.
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d "   w"
			batbox /c 0x0a /d " :wifi connect name"	
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d "  ww"
			batbox /c 0x0c /d " :wifi close"
			echo.
			batbox /c 0x0e /d "     w"
			batbox /c 0x0b /d " www"
			batbox /c 0x0f /d " :wifi are you connected?"
			echo.
goto :end
			)

	if "%1"=="1" 	netsh wlan connect name=
	if "%1"=="2" 	netsh wlan connect name=
	if "%1"=="3" 	netsh wlan connect name=

	if "%1"=="w" 	netsh wlan connect name=%2
	if "%1"=="ww" 	netsh wlan disconnect
	if "%1"=="www" 	(
			ping www.google.com -n 1 -w 50000 > nul && (
					batbox /c 0x0a /d "connected internet "
					echo.
					) || ( 
					batbox /c 0x0c /d " not connected internet"
					echo(
					batbox /c 0x0c /d " please connect internet!!"
					echo.
					)
			goto :end
			)

:end
goto :eof