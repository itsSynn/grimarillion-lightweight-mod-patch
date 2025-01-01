@ECHO off

SETLOCAL EnableDelayedExpansion

FOR %%A IN ("%~dp0.") DO SET "scriptDir=%%~fA"
SET "lightweightDir=%scriptDir%\mods\__lightweight"
SET "lightweightSourceDir=%lightweightDir%\source\lightweight"
SET "grimarillionDir=%scriptDir%\mods\grimarillion"
SET "savesDir=%UserProfile%\Documents\My Games\Grim Dawn\save"

IF NOT EXIST "%lightweightSourceDir%" (
	ECHO ERROR - Lightweight mod source cannot be found at:
	ECHO %scriptDir%\mods\__lightweight & ECHO.
	ECHO Make sure the merge.bat script is at the root of your Grim Dawn installation and you've copied in the Lightweight mod source. & ECHO.
	ECHO Press Enter to exit...
	PAUSE >nul
	EXIT
)
IF NOT EXIST "%grimarillionDir%" (
	ECHO ERROR - Grimarillion mod cannot be found at:
	ECHO %scriptDir%\mods\grimarillion & ECHO.
	ECHO Make sure the merge.bat script is at the root of your Grim Dawn installation and you've installed Grimarillion. & ECHO.
	ECHO Press Enter to exit...
	PAUSE >nul
	EXIT
)

:: -- Templates

:TEMPLATES
CLS

IF EXIST "%scriptDir%\database\templates" (
	ECHO Grim Dawn templates.arc extract already exists at:
	ECHO %scriptDir%\database\templates & ECHO.
	ECHO Do you want to remove this directory and re-extract? & ECHO.
	ECHO Type 'y' to re-extract.
	ECHO Type 'n' to exit. & ECHO.
) ELSE (
	ECHO Grim Dawn templates.arc must be extracted to:
	ECHO %scriptDir%\database\templates & ECHO.
	ECHO Do you want to extract? & ECHO.
	ECHO Type 'y' to extract.
	ECHO Type 'n' to exit. & ECHO.
)

SET /p templatesInput=^>

IF /I "%templatesInput%"=="y" (
	IF EXIST "%scriptDir%\database\templates" (
		RMDIR /s /q "%scriptDir%\database\templates"
		ECHO. & ECHO Directory removed: %scriptDir%\database\templates
	)
	ECHO.
	"%scriptDir%\ArchiveTool.exe" "%scriptDir%\database\templates.arc" -extract "%scriptDir%\database"
	ECHO. & ECHO Press Enter to continue...
	PAUSE >nul
	GOTO :DATABASE
)
IF /I "%templatesInput%"=="n" (
	EXIT
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :TEMPLATES

:: -- Database

:DATABASE
CLS

IF EXIST "%grimarillionDir%\database\records" (
	ECHO Grimarillion merge records already exists at:
	ECHO %grimarillionDir%\database\records & ECHO.
	ECHO Do you want to remove this directory and continue? & ECHO.
	ECHO Type 'y' to remove the existing records.
	ECHO Type 'n' to exit. & ECHO.
	SET /p recordsInput=^>

	IF /I "!recordsInput!"=="y" (
		RMDIR /s /q "%grimarillionDir%\database\records"
		ECHO. & ECHO Directory removed: %grimarillionDir%\database\records & ECHO.
		ECHO Press Enter to continue...
		PAUSE >nul
		GOTO :BACKUP
	)
	IF /I "!recordsInput!"=="n" (
		EXIT
	)

	ECHO. & ECHO Invalid option. & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	GOTO :DATABASE
)

:: -- Backup

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
IF /I "%backupInput%"=="n" (
	GOTO :MERGE
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :BACKUP

:: -- Merge

:MERGE
CLS

ECHO Ready to merge.
ECHO You must manually patch the Grimarillion database using the AssetManager after merging. & ECHO.
ECHO Do you want to perform the merge? & ECHO.
ECHO Type 'y' to merge.
ECHO Type 'n' to exit. & ECHO.
SET /p mergeInput=^>

IF /I "%mergeInput%"=="y" (
	ECHO.
	XCOPY /e /y /q /i "%lightweightSourceDir%\database\records" "%grimarillionDir%\database\records"
	"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Conversations.arc" -update . "%lightweightSourceDir%\resources\conversations"
	"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Creatures.arc" -update . "%lightweightSourceDir%\resources\creatures"
	"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Scripts.arc" -update . "%lightweightSourceDir%\resources\scripts"
	"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Sound.arc" -update . "%lightweightSourceDir%\resources\sound"
	"%scriptDir%\ArchiveTool.exe" "%grimarillionDir%\resources\Text_EN.arc" -update . "%lightweightSourceDir%\resources\text_en"
	ECHO. && ECHO Merge complete. & ECHO.
	ECHO Upon continuing, the AssetManager will automatically open so you can perform manual database patching.
	ECHO Keep this script open and close the AssetManager once patching is complete to perform final cleanup. & ECHO.
	ECHO Press Enter to continue...
	PAUSE >nul
	ECHO %scriptDir%
	START /wait "" "%scriptDir%\AssetManager.exe"
	GOTO :CLEANUP
)
IF /I "%mergeInput%"=="n" (
	EXIT
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :MERGE

:: -- Cleanup

:CLEANUP
CLS

ECHO AssetManager was closed and database patching is assumed to be complete. & ECHO.
ECHO Do you want to perform final cleanup? & ECHO.
ECHO Type 'y' to perform cleanup.
ECHO Type 'n' to exit. & ECHO.
SET /p cleanupInput=^>

ECHO.
IF /I "%cleanupInput%"=="y" (
	SET "removedDir=false"
	IF EXIST "%scriptDir%\database\templates" (
		RMDIR /s /q "%scriptDir%\database\templates"
		ECHO Directory removed: %scriptDir%\database\templates
		SET "removedDir=true"
	)
	IF EXIST "%lightweightDir%" (
		RMDIR /s /q "%lightweightDir%"
		ECHO Directory removed: %lightweightDir%
		SET "removedDir=true"
	)
	IF EXIST "%grimarillionDir%\database\records" (
		RMDIR /s /q "%grimarillionDir%\database\records"
		ECHO Directory removed: %grimarillionDir%\database\records
		SET "removedDir=true"
	)
	IF /I "!removedDir!"=="true" (
		ECHO.
	)

	ECHO Cleanup complete. & ECHO.
	ECHO You can remove this .bat file after exiting. & ECHO.
	ECHO Press Enter to exit...
	PAUSE >nul
	EXIT
)
IF /I "%cleanupInput%"=="n" (
	EXIT
)

ECHO. & ECHO Invalid option. & ECHO.
ECHO Press Enter to continue...
PAUSE >nul
GOTO :CLEANUP
