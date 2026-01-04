@ECHO off

SETLOCAL EnableDelayedExpansion

FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 219990" /v InstallLocation 2^>nul`) DO SET "grimDawnDir=%%A %%B"
IF NOT EXIST "%grimDawnDir%" (
	ECHO ERROR - Could not detect Grim Dawn installation via Steam.
	ECHO. & ECHO Press ^(Enter^) to exit...
	PAUSE >nul
	EXIT
)

SET "grimarillionDir=%grimDawnDir%\mods\grimarillion"
IF NOT EXIST "%grimarillionDir%" (
	ECHO ERROR - Grimarillion mod cannot be found at:
	ECHO %grimDawnDir%\mods\grimarillion
	ECHO. & ECHO Press ^(Enter^) to exit...
	PAUSE >nul
	EXIT
)

SET "lightweightDir=%grimDawnDir%\mods\__lightweight"
SET "lightweightSourceDir=%lightweightDir%\source\lightweight"
SET "savesDir=%UserProfile%\Documents\My Games\Grim Dawn\save"

GOTO :SOURCE

:: -- Lightweight source

:SOURCE
CLS

IF EXIST "%lightweightDir%" (
	ECHO ^[1/7^] & ECHO.
	ECHO The Lightweight mod already exists at:
	ECHO %lightweightDir%
	ECHO. & ECHO Press ^(Enter^) to remove this directory and re-copy the mod...
	PAUSE >nul

	RMDIR /s /q "%lightweightDir%"
	ECHO. & ECHO Directory removed: %lightweightDir%
) ELSE (
	ECHO ^[1/7^] & ECHO.
	ECHO The Lightweight mod will be copied to:
	ECHO %lightweightDir%
	ECHO. & ECHO Press ^(Enter^) to ^copy the mod...
	PAUSE >nul
)

ECHO.
XCOPY /e /y /q /i "%~dp0mods\__lightweight" "%lightweightDir%"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :TEMPLATES

:: -- Templates

:TEMPLATES
CLS

IF EXIST "%grimDawnDir%\database\templates" (
	ECHO ^[2/7^] & ECHO.
	ECHO Templates already exist at:
	ECHO %grimDawnDir%\database\templates
	ECHO. & ECHO Press ^(Enter^) to remove this directory and re-extract templates...
	PAUSE >nul

	RMDIR /s /q "%grimDawnDir%\database\templates"
	ECHO. & ECHO Directory removed: %grimDawnDir%\database\templates
) ELSE (
	ECHO ^[2/7^] & ECHO.
	ECHO Templates will be extracted to:
	ECHO %grimDawnDir%\database\templates
	ECHO. & ECHO Press ^(Enter^) to ^extract templates...
	PAUSE >nul
)

ECHO.
"%grimDawnDir%\ArchiveTool.exe" "%grimDawnDir%\database\templates.arc" -extract "%grimDawnDir%\database"
ECHO.
XCOPY /e /y /q /i "%lightweightSourceDir%\templates" "%grimDawnDir%\database\templates"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :DATABASE

:: -- Database

:DATABASE
CLS

IF EXIST "%grimarillionDir%\database\records" (
	ECHO ^[3/7^] & ECHO.
	ECHO The Lightweight mod database records already exists at:
	ECHO %grimarillionDir%\database\records
	ECHO. & ECHO Press ^(Enter^) to remove this directory and re-copy records...
	PAUSE >nul

	RMDIR /s /q "%grimarillionDir%\database\records"
	ECHO. & ECHO Directory removed: %grimarillionDir%\database\records
) ELSE (
	ECHO ^[3/7^] & ECHO.
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

:: -- Save backup

:BACKUP
CLS

FOR /f "tokens=2 delims= " %%A IN ("%date%") DO SET datePart=%%A
FOR /f "tokens=1,2,3 delims=/ " %%A IN ("%datePart%") DO SET backupDate=%%C-%%A-%%B
SET "time=%time:~0,8%"
SET "backupTime=%time::=%"
SET "backupLocation=%savesDir%\_backup_%backupDate%_%backupTime%"

ECHO ^[4/7^] & ECHO.
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

ECHO ^[5/7^] & ECHO.
ECHO The Grimarillion resources will be modified with Lightweight mod additions.
ECHO. & ECHO Press ^(Enter^) to modify the resources...
PAUSE >nul

ECHO.
"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Conversations.arc" -update . "%lightweightSourceDir%\resources\conversations"
"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Creatures.arc" -update . "%lightweightSourceDir%\resources\creatures"
"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Scripts.arc" -update . "%lightweightSourceDir%\resources\scripts"
"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Sound.arc" -update . "%lightweightSourceDir%\resources\sound"
"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Text_EN.arc" -update . "%lightweightSourceDir%\resources\text_en"
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :PATCH

:: -- Manual patch

:PATCH
CLS

ECHO ^[6/7^] & ECHO.
ECHO The Grimarillion database must be manually patched. & ECHO.
ECHO The AssetManager will automatically open. Leave this script running and perform these steps in the AssetManager:
ECHO 1. 'Mod' ^> 'Select' ^> '__lightweight'
ECHO 2. Press F7 (wait for build completion)
ECHO 3. 'Mod' ^> 'Select' ^> 'grimarillion'
ECHO 4. Press F7 (wait for build completion)
ECHO 5. Close the AssetManager
ECHO. & ECHO Press ^(Enter^) to open the AssetManager...
PAUSE >nul

ECHO.
ECHO Waiting for the AssetManager to close...

START /wait "" "%grimDawnDir%\AssetManager.exe"

CLS
ECHO ^[6/7^] & ECHO.
ECHO The AssetManager was closed and database patching is assumed to be complete.
ECHO. & ECHO Press ^(Enter^) to continue...
PAUSE >nul

GOTO :CLEANUP

:: -- Cleanup

:CLEANUP
CLS

ECHO ^[7/7^] & ECHO.
ECHO Temporary files used during patching will be cleaned up. & ECHO.
ECHO Press ^(Enter^) to perform the cleanup...
PAUSE >nul

ECHO.
IF EXIST "%grimDawnDir%\database\templates" (
	RMDIR /s /q "%grimDawnDir%\database\templates"
	ECHO Directory removed: %grimDawnDir%\database\templates
)
IF EXIST "%lightweightDir%" (
	RMDIR /s /q "%lightweightDir%"
	ECHO Directory removed: %lightweightDir%
)
IF EXIST "%grimarillionDir%\database\records" (
	RMDIR /s /q "%grimarillionDir%\database\records"
	ECHO Directory removed: %grimarillionDir%\database\records
)

ECHO. & ECHO Press ^(Enter^) to exit...
PAUSE >nul

EXIT
