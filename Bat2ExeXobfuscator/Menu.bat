@echo off
cls
color d
title Bat2ExeXobfuscator @DARKNOSY
type menu.py

Set /p action="Which option are you choosing?: "
if '%action%'=='1' goto Bat2ExeXobfuscator
if '%action%'=='2' goto Bat2Exe
if '%action%'=='3' goto Obfuscator
if '%action%'=='4' goto leave

:Obfuscator
title Obfuscator @DARKNOSY
cls
explorer "http://45.147.97.170/batch-obfuscator/"
timeout 2
SET msgboxTitle=Bat2ExeXobfuscator  @DARKNOSY
SET msgboxBody=Don't understand something?, check the terminal for help.
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
echo Opened "http://45.147.97.170/batch-obfuscator/"
echo ________________________________________________________________________________________________________________________
echo ________________________________________________________________________________________________________________________
echo Don't understand because of the language?, translation bellow:
echo *
echo - Nombre de passage (Par defaut : 1, Max : 20)  =  Layers (Default : 1, Max : 20)
echo - Brouiller le fichier!  =  Obfuscate the file!
PAUSE
cls
goto leave

:Bat2Exe
title Bat2Exe @DARKNOSY
cls
set /p type="Is the type of batch file you want to turn into an executable a .bat or a .cmd?(bat/cmd):   "
cls
set /p file="What's the name of the batch file you want to turn into an executable?(file must be in the folder as this program)(don't type .bat/.cmd) (name must not have a space in it's name):   "
cls
.\converter.bat %file%.%type% %file%.exe
set /p action= Do you want to test your file? (y/n)    
if '%action%'=='y' goto b2ey
if '%action%'=='n' goto leave
exit

:b2ey
start %file%.exe

:Bat2ExeXobfuscator
title Obfuscator @DARKNOSY
cls
set /p file="What's the name of the batch file you want to obfuscate and turn into an executable? (file must be in the folder as this program)    (don't type .bat/.cmd) (name must not have a space in it's name):   "
cls
set /p type="Is the type of batch file you want to obfuscate a .bat or a .cmd?(bat/cmd):   "
cls
explorer "http://45.147.97.170/batch-obfuscator/"
timeout 2
SET msgboxTitle=Bat2ExeXobfuscator  @DARKNOSY
SET msgboxBody=Don't understand something?, check the terminal for help.
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
echo Opened "http://45.147.97.170/batch-obfuscator/"
echo ________________________________________________________________________________________________________________________
echo ________________________________________________________________________________________________________________________
echo Don't understand because of the language?, translation bellow:
echo *
echo - Nombre de passage (Par defaut : 1, Max : 20)  =  Layers (Default : 1, Max : 20)
echo - Brouiller le fichier!  =  Obfuscate the file!
echo ****
echo Save the file in the same folder as this program!!!
PAUSE
cls
set /p nnname="What's the name of the obfuscated file:   "
cls
.\converter.bat %nnname%.%type% %nnname%.exe
cls
title Done! @DARKNOSY
echo Done!
set /p action= Do you want to test your file? (y/n):    
if '%action%'=='y' start nnname.exe goto leave
if '%action%'=='n' goto leave
exit

:leave 
cls 
title Thank you! @DARKNOSY
echo Thank you for Using Bat2ExeXobfuscator!
PAUSE
exit