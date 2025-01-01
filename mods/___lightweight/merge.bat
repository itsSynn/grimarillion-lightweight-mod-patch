@ECHO off

SETLOCAL
SETLOCAL EnableDelayedExpansion

SET grimDawnDir=
SET grimarillionDir=
SET "lightweightModSourceDir=%~dp0\source\lightweight"

:: Prep

FOR %%i IN ("%~dp0..") DO (
	IF NOT EXIST "%%~fi\__lightweight" (
		ECHO The folder where this .bat is located must be in mods and named '__lightweight'. This is currently not the case.
		PAUSE >nul
		EXIT
	)
	IF NOT EXIST "%%~fi\grimarillion" (
		ECHO Grimarillion could not be found.
		PAUSE >nul
		EXIT
	)
	SET "grimarillionDir=%%~fi\grimarillion"
	FOR %%a IN ("%%~fi\..") DO (
		IF NOT "%%~nxa"=="Grim Dawn" (
			ECHO You can not use a different working directory than the installation directory of Grim Dawn. Check the README.txt.
			PAUSE >nul
			EXIT
		)
		SET "grimDawnDir=%%~fa"
		"%grimDawnDir%"\ArchiveTool.exe "%grimDawnDir%"\templates.arc -extract "%grimDawnDir%"\database
	)
)

:: Backup

FOR /f "tokens=1-3 delims=/" %%A IN ("%date%") DO SET backupDate=%%C-%%A-%%B
SET "time=%time:~0,8%"
SET "backupTime=%time::=%"
SET "destinationSaves=%UserProfile%\Documents\My Games\Grim Dawn\save\user"
SET "backupLocation=%UserProfile%\Documents\My Games\Grim Dawn\save\_backup_%backupDate%_%backupTime%"
SET backupExists=
MKDIR "%backupLocation%"
FOR /F %%i IN ('DIR /b /a "%backupLocation%\*"') DO (
	SET backupExists=^(Already exists^)
    GOTO MERGE
)
XCOPY "%destinationSaves%" "%backupLocation%" /e /f /y /q

:: Merge

:MERGE
CLS
ECHO Script merges the .arc archives of Grimarillion with the files from the Lightweight mod. & ECHO.
ECHO As a precaution a backup of all your modded characters was created inside the save game directory. %backupExists% & ECHO.
ECHO Press Enter to continue...
SET /p input=
CLS

:OPTIONS
ECHO You need to patch the database file afterwards. Read the included README.txt for instructions. & ECHO.
ECHO Type 'merge' to begin.
ECHO Type 'exit' to close the program. & ECHO.
SET /p input=^> 
IF "%input:~0,1%"==" " (
	ECHO. & ECHO Command doesn't exist. & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	CLS
	GOTO :OPTIONS
)

IF "%input%"=="merge" (
	IF EXIST "%grimarillionDir%\database\records" (
		ECHO. & ECHO The directory 'records' already exists in 'grimarillion\database'^^! This should not be the case with a clean install. & ECHO.
		ECHO Press Enter to continue...
		PAUSE >nul
		CLS
		GOTO :OPTIONS
	)
	XCOPY "%lightweightModSourceDir%\database\records" "%grimarillionDir%\database\records" /e /f /y /q /i
	"%grimDawnDir%"\ArchiveTool.exe "%grimarillionDir%"\resources\Conversations.arc -update . "%lightweightModSourceDir%"\resources\conversations
	"%grimDawnDir%"\ArchiveTool.exe "%grimarillionDir%"\resources\Creatures.arc -update . "%lightweightModSourceDir%"\resources\creatures
	"%grimDawnDir%"\ArchiveTool.exe "%grimarillionDir%"\resources\Scripts.arc -update . "%lightweightModSourceDir%"\resources\scripts
	"%grimDawnDir%"\ArchiveTool.exe "%grimarillionDir%"\resources\Sound.arc -update . "%lightweightModSourceDir%"\resources\sound
	"%grimDawnDir%"\ArchiveTool.exe "%grimarillionDir%"\resources\Text_EN.arc -update . "%lightweightModSourceDir%"\resources\text_en
	ECHO. & ECHO Please follow the instructions from the included README.txt to patch the database file. & ECHO.
	ECHO Press Enter to exit...
	PAUSE >nul
	EXIT
) ELSE IF "%input%"=="exit" (
	EXIT
) ELSE (
	ECHO. & ECHO Command doesn't exist & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	CLS
	GOTO :OPTIONS
)