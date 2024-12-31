@ECHO off
SETLOCAL
SETLOCAL EnableDelayedExpansion
COLOR 70
SET batchFilePath=%~dp0
SET "pathSourceL=%~dp0\source\lightweight"
SET "pathSourceT=%~dp0\source\templates"
SET pathTargetDir=
SET pathTemplateDir=
FOR %%i IN ("%~dp0..") DO (
	IF NOT EXIST "%%~fi\___Lightweight Mod" (
		ECHO The folder where this .bat is located must be in mods and named '___Lightweight Mod'. This is currently not the case.
		PAUSE >nul
		EXIT
	)
	IF NOT EXIST "%%~fi\grimarillion" (
		ECHO Grimarillion could not be found.
		PAUSE >nul
		EXIT
	)
	SET "pathTargetDir=%%~fi\grimarillion"
	FOR %%a IN ("%%~fi\..") DO (
		IF NOT "%%~nxa"=="Grim Dawn" (
			ECHO You can not use a different working directory than the installation directory of Grim Dawn. Check the README.txt.
			PAUSE >nul
			EXIT
		)
		SET "pathTemplateDir=%%~fa\database\templates"
	)
)
SET destinationSaves=%UserProfile%\Documents\My Games\Grim Dawn\save\user
SET backupLocation=%UserProfile%\Documents\My Games\Grim Dawn\save\_Backup of user (%date%)
SET backupExists=
MKDIR "%backupLocation%"
FOR /F %%i IN ('DIR /b /a "%backupLocation%\*"') DO (
	SET backupExists=^(Already exists^)
    GOTO SKIPBACKUP
)
XCOPY "%destinationSaves%" "%backupLocation%" /e /f /y /q
:SKIPBACKUP
CLS
ECHO Script merges the .arc archives of Grimarillion with the files from the Lightweight mod. & ECHO.
ECHO As a precaution a backup of all your modded characters was created inside the save game directory. %backupExists% & ECHO.
ECHO Press Enter to continue
SET /p input=
CLS
:START
ECHO You need to patch the database file afterwards. Read the included README.txt for instructions. & ECHO.
ECHO Type 'light' for the Lightweight version
ECHO Type 'exit' to close the program & ECHO.
SET /p input=^> 
IF "%input:~0,1%"==" " (
	ECHO. & ECHO Command doesn't exist & ECHO.
	ECHO Press Enter to continue
	PAUSE >nul
	CLS
	GOTO :START
)
IF "%input%"=="exit" (
	EXIT
)
IF "%input%"=="light" (
	IF EXIST "%pathTargetDir%\database\records" (
		ECHO. & ECHO The directory 'records' already exists in 'grimarillion\database'^^! This should not be the case with a clean install. & ECHO.
		ECHO Press Enter to continue
		PAUSE >nul
		CLS
		GOTO :START
	)
	XCOPY "%pathSourceL%\database\records" "%pathTargetDir%\database\records" /e /f /y /q /i
	XCOPY "%pathSourceT%" "%pathTemplateDir%" /e /f /y /q /i
	ECHO.>> "%pathSourceL%\resources\scripts\main.lua"
	ECHO.--F>> "%pathSourceL%\resources\scripts\main.lua"
	ECHO.>> "%pathSourceL%\resources\scripts\grimmest\grimmest.lua"
	ECHO.--F>> "%pathSourceL%\resources\scripts\grimmest\grimmest.lua"
	archivetool.exe "%pathTargetDir%"\resources\Conversations.arc -update . "%pathSourceL%\resources\conversations"
	archivetool.exe "%pathTargetDir%"\resources\Creatures.arc -update . "%pathSourceL%\resources\creatures"
	archivetool.exe "%pathTargetDir%"\resources\Scripts.arc -update . "%pathSourceL%\resources\scripts"
	archivetool.exe "%pathTargetDir%"\resources\Sound.arc -update . "%pathSourceL%\resources\sound"
	archivetool.exe "%pathTargetDir%"\resources\Text_EN.arc -update . "%pathSourceL%\resources\text_en"
	ECHO. & ECHO Access denied means that you already have the templates folder.
	ECHO. & ECHO Please follow the instructions from the included README.txt to patch the database file. & ECHO.
	ECHO Press Enter to close the programm
	PAUSE >nul
	EXIT
) ELSE (
	ECHO. & ECHO Command doesn't exist & ECHO.
	ECHO Press Enter to continue
	PAUSE >nul
	CLS
	GOTO :START
)