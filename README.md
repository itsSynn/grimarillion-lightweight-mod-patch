# grimarillion-lightweight-mod-patch

A custom [Lightweight Mod](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690) (v2023.11.26) compatibility patch for [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587), based on the official [Dawn of Masteries compatibility patch](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690/148).

## Prerequisites

1. Grim Dawn (v1.2.x)
2. [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587) (v0.92a)
3. Grim Dawn AssetManager setup with the following options:

   | Option                        | Value                                      |
   | ----------------------------- | ------------------------------------------ |
   | Working Directory             | `<Grim Dawn Install Directory>`            |
   | Build Directory               | `<Grim Dawn Install Directory>`            |
   | Tools Directory               | `<Grim Dawn Install Directory>`            |
   | Additional Browse Directories | `<Grim Dawn Install Directory>\gdx2\`      |
   | Additional Source Directories | `<Grim Dawn Install Directory>\mods\gdx2\` |

## Installation

1. Copy the `mods` folder and `merge.bat` into your Grim Dawn install directory.
2. Follow the instructions in `mods\__Lightweight Mod\README.txt`.
3. Run `merge.bat` and follow the steps.

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
