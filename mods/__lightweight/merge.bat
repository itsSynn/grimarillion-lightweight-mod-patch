@ECHO off

SETLOCAL EnableDelayedExpansion

SET grimDawnDir=
SET grimarillionDir=
SET "lightweightSourceDir=%~dp0\source\lightweight"
SET "savesDir=%UserProfile%\Documents\My Games\Grim Dawn\save"

FOR %%i IN ("%~dp0..") DO (
	IF NOT EXIST "%%~fi\__lightweight" (
		ECHO ERROR - This .bat script is not running from the expected directory:
		ECHO \mods\__lightweight & ECHO.
		ECHO Press Enter to exit...
		PAUSE >nul
		EXIT
	)
	IF NOT EXIST "%%~fi\grimarillion" (
		ECHO ERROR - Grimarillion could not be found at the expected location:
		ECHO \mods\grimarillion & ECHO.
		ECHO Press Enter to exit...
		PAUSE >nul
		EXIT
	)
	SET "grimarillionDir=%%~fi\grimarillion"
)

FOR %%i IN ("%~dp0../..") DO SET "grimDawnDir=%%~fi"

:: Grimarillion records

:RECORDS
CLS

IF EXIST "%grimarillionDir%\database\records" (
	ECHO Merge records directory already exists at:
	ECHO %grimarillionDir%\database\records & ECHO.
	ECHO Do you want to remove this directory and continue? & ECHO.
	ECHO Type 'y' to remove the existing records.
	ECHO Type 'n' to exit. & ECHO.
	SET /p recordsInput=^>

	IF /I "!recordsInput!"=="y" (
		RMDIR /s /q "%grimarillionDir%\database\records"
		ECHO. & ECHO Directory removed. & ECHO.
		ECHO Press Enter to continue...
		PAUSE >nul
		GOTO :TEMPLATES
	)
	IF /I "!recordsInput!"=="n" (
		EXIT
	)

	ECHO. & ECHO Invalid option. & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	GOTO :RECORDS
)

:: Grim Dawn templates

:TEMPLATES
CLS

IF EXIST "%grimDawnDir%\database\templates" (
	ECHO Grim Dawn templates.arc extract directory already exists at:
	ECHO %grimDawnDir%\database\templates & ECHO.
	ECHO Do you want to re-extract the templates? & ECHO.
	ECHO Type 'y' to re-extract.
	ECHO Type 'n' to skip. & ECHO.
	SET /p templatesInput=^>
	
	IF /I "!templatesInput!"=="y" (
		GOTO :TEMPLATES_EXTRACT
	)
	IF /I "!templatesInput!"=="n" (
		GOTO :BACKUP
	)

	ECHO. & ECHO Invalid option. & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	GOTO :TEMPLATES
)

:TEMPLATES_EXTRACT
IF EXIST "%grimDawnDir%\database\templates" (
	RMDIR /s /q "%grimDawnDir%\database\templates"
	ECHO. & ECHO Directory removed. & ECHO.
)
ECHO.
"%grimDawnDir%\ArchiveTool.exe" "%grimDawnDir%\database\templates.arc" -extract "%grimDawnDir%\database"
ECHO. & ECHO Press Enter to continue...
PAUSE >nul

:: Save backup

:BACKUP
CLS

FOR /f "tokens=2 delims= " %%A IN ("%date%") DO SET datePart=%%A
FOR /f "tokens=1,2,3 delims=/ " %%A IN ("%datePart%") DO SET backupDate=%%C-%%B-%%A
SET "time=%time:~0,8%"
SET "backupTime=%time::=%"
SET "backupLocation=%savesDir%\_backup_%backupDate%_%backupTime%"

ECHO A backup of your characters can be created at:
ECHO %backupLocation% & ECHO.
ECHO Do you want to create a backup? & ECHO.
ECHO Type 'y' to create a backup.
ECHO Type 'n' to skip. & ECHO.
SET /p backupInput=^>

IF /I "%backupInput%"=="y" (
	ECHO.
	MKDIR "%backupLocation%"
	XCOPY /e /y /q "%savesDir%\user" "%backupLocation%"
	ECHO. & ECHO Press Enter to continue...
	PAUSE >nul
	GOTO :MERGE
)
IF /I "!backupInput!"=="n" (
	GOTO :MERGE
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :BACKUP

:: Merge

:MERGE
CLS

ECHO Ready to merge^^!
ECHO You must to patch the Grimarillion database after merging. & ECHO.
ECHO Do you want to perform the merge? & ECHO.
ECHO Type 'merge' to merge.
ECHO Type 'exit' to exit. & ECHO.
SET /p mergeInput=^>

IF /I "%mergeInput%"=="merge" (
	ECHO.
	XCOPY /e /y /q /i "%lightweightSourceDir%\database\records" "%grimarillionDir%\database\records"
	"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Conversations.arc" -update . "%lightweightSourceDir%\resources\conversations"
	"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Creatures.arc" -update . "%lightweightSourceDir%\resources\creatures"
	"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Scripts.arc" -update . "%lightweightSourceDir%\resources\scripts"
	"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Sound.arc" -update . "%lightweightSourceDir%\resources\sound"
	"%grimDawnDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Text_EN.arc" -update . "%lightweightSourceDir%\resources\text_en"
	ECHO Grimarillion archives updated. & ECHO.
	ECHO Merge complete^^! & ECHO.
	ECHO Press Enter to exit...
	PAUSE >nul
	EXIT
)
IF /I "%mergeInput%"=="exit" (
	EXIT
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :MERGE
