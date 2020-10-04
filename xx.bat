@echo off
set file=z%random%.bat
echo.::Edited by mr1ay>%file%
echo.::MoonBatchTeam Member>>%file%
echo.::TheBateam old Member>>%file%
(
echo @echo off
echo chcp 65001
echo cls
echo.
echo :default
echo title mr1ayprogram1
echo movewindow mr1ayprogram1 0 0
echo.
echo title "your program title"
echo mode 50,28
echo.
echo :Menu
echo echo hello world
echo.
echo goto :Menu
)>>%file%
start notepad.exe %file%