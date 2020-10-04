	@echo off


	if "%1"=="" 	(
			batbox /c 0x0a /d "you can change light level"
			batbox /c 0x0c /d "syntax:"
			batbox /c 0x0b /d " L.bat"
			batbox /c 0x0e /d "[level]"
			batbox /c 0x0f /d "for example :L 10 "

			)

	if not "%1"==""  call :light %1


	:end
		goto :eof


	:light
		set "light=%1"
		powercfg -SetDcValueIndex  b2a7704d-fada-4c94-80dd-7ee1b43f359e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb %light%
		powercfg -S b2a7704d-fada-4c94-80dd-7ee1b43f359e
		powercfg -SetAcValueIndex  b2a7704d-fada-4c94-80dd-7ee1b43f359e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb %light%
		powercfg -S b2a7704d-fada-4c94-80dd-7ee1b43f359e
		goto :eof