Before doing all this, you can decide on what the Maximum Level (currently 125) and the Devotion Cap (currently 68) should be.

Go to "___Lightweight Mod\Source\NonLightweight\database\records\creatures\pc" and open playerlevels.dbr with a Text Editor.

Edit the lines
	maxPlayerLevel,125,
	maxDevotionPoints,68,
and save the file.


++ Patching Instructions ++

!!! Note: DO NOT close the .bat when it says "Operation Completed"!

To avoid any problems, please set up your AssetManager the way I have (how it is normally supposed to be). Check the .jpeg file for the settings.

	0. Install Dawn of Masteries and put this '___Lightweight Mod' folder inside your mods folder

	1. Run the 'Merge archives.bat' and do what it says
	
		Note: You can right-click the 'Merge archives.bat' and check for yourself what it does.
		Note: Non Lightweight version extracts the whole Dawn of Masteries database, don't worry.

	2. If you are installing the Non Lightweight version
		
		Go to the "mods\dom\database" directory and delete the dom.arz file.

	3. Open the AssetManager.exe inside your Grim Dawn installation directory

		It is very important to do it exactly in this order!
	
		The build (F7) process may take several minutes. Even up to 10 to 20 minutes! Don't panic.

		3a. Select 'Mod' > 'Select' > '___Lightweight Mod'
		3b. Press F7
		3c. Select 'Mod' > 'Select' > 'dom'
		3d. Press F7
		
	4. Close the AssetManager

	5. Delete the '___Lightweight Mod' folder
	
	6. Delete the 'records' folder inside the "mods\dom\database" directory
	

++ Lost progress after installation? ++

Try renaming the 'Maps.arc' file inside "mods\dom\resources" to 'Levels.arc'. Also remember, a backup was created in your saves directory!