# grimarillion-lightweight-mod-patch

A custom [Lightweight Mod](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690) compatibility patch for [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587), based on the official [Dawn of Masteries compatibility patch](https://forums.crateentertainment.com/t/lightweight-mod-for-speeding-up-the-leveling-process/108690/148).

## Prerequisites

You must have the following installations:

| Install                                                                            | Version         |
| ---------------------------------------------------------------------------------- | --------------- |
| Grim Dawn                                                                          | `1.2.x` (Steam) |
| [Grimarillion](https://forums.crateentertainment.com/t/rel-grimarillion-v92/46587) | `0.92a`         |

You must have the Grim Dawn AssetManager setup with the following options:

| Option                        | Value                                           |
| ----------------------------- | ----------------------------------------------- |
| Working Directory             | `<Grim Dawn Installation Directory>`            |
| Build Directory               | `<Grim Dawn Installation Directory>`            |
| Tools Directory               | `<Grim Dawn Installation Directory>`            |
| Additional Browse Directories | `<Grim Dawn Installation Directory>\gdx2\`      |
| Additional Source Directories | `<Grim Dawn Installation Directory>\mods\gdx2\` |

## Setup

Run `merge.bat` and follow the prompts.

## Info

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
5. Updated skill/loot/etc indexes & weights, where necessary.
