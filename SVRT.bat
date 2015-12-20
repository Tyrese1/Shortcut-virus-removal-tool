@echo off
@echo ********************************************************************************
@echo SHORTCUT VIRUS RREMOVAL TOOL				User: %USERNAME% 	  
@echo This will cleanup all shortcut virus from    				     
@echo your flash drive and still retain your files				     
@echo Author: Tarhe								     
@echo Email : obt28@yahoo.com							     
@echo Built With love :)							     
@echo ********************************************************************************
title - Shortcut Virus Removal Tool - by Tarhe
color 1f

:start
set/p dr="Enter Infected flash drive letter eg f: >" 
if not exist %dr% goto nowindir

if %dr% == c: goto cannotbeonc
if %dr%==%dr% goto removeShortcut

:removeShortcut
%dr% 
%remove% = del *,lnk
attrib -s -r -h *.* /s /d /l 

%unhideFiles% = attrib -s -h -r /s /d

@echo Operation Successful!
@echo All Shortcut has been removed from drive (%dr%)
@echo.
pause
exit


:cannotbeonc
echo You are not allowed to perform operation on drive c:
goto start


:nowindir 
if errorlevel 1 (
	echo it exists	
) else (
	echo Drive %dr% does not exist :(
	echo try another reachable infected drive
	echo.
	goto start

)



