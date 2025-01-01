# grimarillion-lightweight-mod-patch

A custom [Lightweight Mod](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690) (v2023.11.26) compatibility patch for [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587), based on the official [Dawn of Masteries compatibility patch](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690/148).

## Prerequisites

1. Grim Dawn (v1.2.x)
2. [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587) (v0.92a)

## Usage

1. Copy the `mods` folder into the Grim Dawn root directory.
2. Follow the instructions in `mods\__Lightweight Mod\README.txt`.

> TODO: Rewrite this

++ Patching Instructions ++

!!! Note: DO NOT close the .bat when it says "Operation Completed"!

To avoid any problems, please set up your AssetManager the way I have (how it is normally supposed to be). Check the .jpeg file for the settings.

	0. Install Dawn of Masteries and put this '__lightweight' folder inside your mods folder

	1. Run the 'Merge archives.bat' and do what it says
	
		Note: You can right-click the 'Merge archives.bat' and check for yourself what it does.

	2. Open the AssetManager.exe inside your Grim Dawn installation directory

		It is very important to do it exactly in this order!
	
		The build (F7) process may take several minutes. Even up to 10 to 20 minutes! Don't panic.

		3a. Select 'Mod' > 'Select' > '__lightweight'
		3b. Press F7
		3c. Select 'Mod' > 'Select' > 'grimarillion'
		3d. Press F7
		
	3. Close the AssetManager

	4. Delete the '__lightweight' folder
	
	5. Delete the 'records' folder inside the "mods\grimarillion\database" directory
	

++ Lost progress after installation? ++

Try renaming the 'Maps.arc' file inside "mods\grimarillion\resources" to 'Levels.arc'. Also remember, a backup was created in your saves directory!

## Patch Info

Steps taken for Grimarillion compatibility:

1. Extracted the following mod sources:

   - DoM (1.6.0a)
   - Grimarillion (0.92a)
   - Lightweight Mod (11.26.2023)
   - Lightweight Mod DoM Compatibility Patch

2. Three-way compared:

   - DoM + Lightweight + DoM Compat
   - Grimarillion + Lightweight + DoM Compat

3. Baselined Grimarillion Compatibility Patch with Grimarillion file versions.
4. Manually merged in Lightweight Mod / Lightweight Mod DoM Compatibility Patch changes.
5. Updated skill/loot/etc indexes & weights, where necessary
