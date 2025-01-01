# grimarillion-lightweight-mod-patch

A custom [Lightweight Mod](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690) (v2023.11.26) compatibility patch for [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587), based on the official [Dawn of Masteries compatibility patch](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690/148).

## Prerequisites

1. Grim Dawn (v1.2.x)
2. [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587 (v0.92a)

## Usage

1. Copy the `mods` folder into the Grim Dawn root directory.
2. Follow the instructions in `mods\__Lightweight Mod\README.txt`.

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

3. Baselined changed files with Grimarillion versions.
4. Merged Lightweight Mod DoM Compatibility Patch changes and updated skill/loot/etc indexes & weights where necessary.
