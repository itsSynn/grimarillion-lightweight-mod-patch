@ECHO off

SETLOCAL EnableDelayedExpansion

FOR %%A IN ("%~dp0.") DO SET "scriptDir=%%~fA"
SET "lightweightDir=%scriptDir%\mods\__lightweight"
SET "lightweightSourceDir=%lightweightDir%\source\lightweight"
SET "grimarillionDir=%scriptDir%\mods\grimarillion"
SET "savesDir=%UserProfile%\Documents\My Games\Grim Dawn\save"

IF NOT EXIST "%lightweightDir%" (
	ECHO ERROR - Lightweight mod cannot be found at:
	ECHO %scriptDir%\mods\__lightweight & ECHO.
	ECHO Make sure the merge.bat script is at the root of your Grim Dawn installation and you've copied in the Lightweight mod source.
	ECHO. & ECHO Press ^(Enter^) to exit...
	PAUSE >nul
	EXIT
)
IF NOT EXIST "%grimarillionDir%" (
	ECHO ERROR - Grimarillion mod cannot be found at:
	ECHO %scriptDir%\mods\grimarillion & ECHO.
	ECHO Make sure the merge.bat script is at the root of your Grim Dawn installation and you've installed Grimarillion.
	ECHO. & ECHO Press ^(Enter^) to exit...
	PAUSE >nul
	EXIT
)

GOTO :TEMPLATES

:: -- Templates

:TEMPLATES
CLS

IF EXIST "%scriptDir%\database\templates" (
	ECHO ^[1/6^] & ECHO.
	ECHO Templates already exist at:
	ECHO %scriptDir%\database\templates
	ECHO. & ECHO Press ^(Enter^) to remove this directory and re-extract templates...
	PAUSE >nul

	RMDIR /s /q "%scriptDir%\database\templates"
	ECHO. & ECHO Directory removed: %scriptDir%\database\templates
) ELSE (
	ECHO ^[1/6^] & ECHO.
	ECHO Templates will be extracted to:
	ECHO %scriptDir%\database\templates
	ECHO. & ECHO Press ^(Enter^) to ^extract templates...
	PAUSE >nul
)

ECHO.
"%scriptDir%\ArchiveTool.exe" "%scriptDir%\database\templates.arc" -extract "%scriptDir%\database"
ECHO.
XCOPY /e /y /q /i "%lightweightSourceDir%\templates" "%scriptDir%\database\templates"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :DATABASE

:: -- Database

:DATABASE
CLS

IF EXIST "%grimarillionDir%\database\records" (
	ECHO ^[2/6^] & ECHO.
	ECHO The Lightweight mod database records already exists at:
	ECHO %grimarillionDir%\database\records
	ECHO. & ECHO Press ^(Enter^) to remove this directory and re-copy records...
	PAUSE >nul

	RMDIR /s /q "%grimarillionDir%\database\records"
	ECHO. & ECHO Directory removed: %grimarillionDir%\database\records
) ELSE (
	ECHO ^[2/6^] & ECHO.
	ECHO The Lightweight mod database records will be copied to:
	ECHO %grimarillionDir%\database\records
	ECHO. & ECHO Press ^(Enter^) to copy records...
	PAUSE >nul
)

ECHO.
XCOPY /e /y /q /i "%lightweightSourceDir%\database\records" "%grimarillionDir%\database\records"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :BACKUP

:: -- Backup

:BACKUP
CLS

FOR /f "tokens=2 delims= " %%A IN ("%date%") DO SET datePart=%%A
FOR /f "tokens=1,2,3 delims=/ " %%A IN ("%datePart%") DO SET backupDate=%%C-%%B-%%A
SET "time=%time:~0,8%"
SET "backupTime=%time::=%"
SET "backupLocation=%savesDir%\_backup_%backupDate%_%backupTime%"

ECHO ^[3/6^] & ECHO.
ECHO A backup of your characters will be created at:
ECHO %backupLocation%
ECHO. & ECHO Press ^(Enter^) to create a backup...
PAUSE >nul

ECHO.
MKDIR "%backupLocation%"
XCOPY /e /y /q "%savesDir%\user" "%backupLocation%"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :MERGE

:: -- Merge

:MERGE
CLS

ECHO ^[4/6^] & ECHO.
ECHO The Grimarillion resources will be modified with Lightweight mod additions.
ECHO. & ECHO Press ^(Enter^) to modify the resources...
PAUSE >nul

ECHO.
"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Conversations.arc" -update . "%lightweightSourceDir%\resources\conversations"
"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Creatures.arc" -update . "%lightweightSourceDir%\resources\creatures"
"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Scripts.arc" -update . "%lightweightSourceDir%\resources\scripts"
"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Sound.arc" -update . "%lightweightSourceDir%\resources\sound"
"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Text_EN.arc" -update . "%lightweightSourceDir%\resources\text_en"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :PATCH

:: -- Manual patch

:PATCH
CLS

ECHO ^[5/6^] & ECHO.
ECHO The Grimarillion database must be manually patched. & ECHO.
ECHO The AssetManager will automatically open.
ECHO Leave this script running and perform these steps in the AssetManager:
ECHO 1. 'Mod' ^> 'Select' ^> '__lightweight'
ECHO 2. Press F7
ECHO 3. 'Mod' ^> 'Select' ^> 'grimarillion'
ECHO 4. Press F7
ECHO 5. Close the AssetManager
ECHO. & ECHO Press ^(Enter^) to open the AssetManager...
PAUSE >nul

ECHO.
ECHO Waiting for the AssetManager to close...

START /wait "" "%scriptDir%\AssetManager.exe"

CLS
ECHO The AssetManager was closed and database patching is assumed to be complete.
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :CLEANUP

:: -- Cleanup

:CLEANUP
CLS

ECHO ^[6/6^] & ECHO.
ECHO Files used during patching will be cleaned up. & ECHO.
ECHO Press ^(Enter^) to perform the cleanup...
PAUSE >nul

ECHO.
IF EXIST "%scriptDir%\database\templates" (
	RMDIR /s /q "%scriptDir%\database\templates"
	ECHO Directory removed: %scriptDir%\database\templates
)
IF EXIST "%lightweightDir%" (
	RMDIR /s /q "%lightweightDir%"
	ECHO Directory removed: %lightweightDir%
)
IF EXIST "%grimarillionDir%\database\records" (
	RMDIR /s /q "%grimarillionDir%\database\records"
	ECHO Directory removed: %grimarillionDir%\database\records
)

ECHO.
ECHO Cleanup complete. You can remove this .bat file after exiting.
ECHO. & ECHO Press ^(Enter^) to exit...
PAUSE >nul

EXIT
