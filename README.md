# grim-dawn-lightweight-grimarillion-compat

1. Extracted the following:

   - DoM (1.6.0a)
   - Grimarillion (0.92a)
   - Lightweight Mod (11.26.2023)
   - Lightweight Mod DoM Compat Patch

2. Three-way folder compared:

   - DoM + Lightweight + DoM Compat
   - Grimarillion + Lightweight + DoM Compat

3. Baselined changed files with Grimarillion version
4. Merged over DoM Compat Patch changes:

   - Most changes related to `_mod` references.
   - Changed skill numbers to be in sequence with Grimarillion:
      
      - `database\records\skills\itemskills\consumableskills\_skilltree_consumableskills02.dbr`
      
   - Deleted what looked to be DoM-only files:
   
      - `database\records\items\loottables\mastertables\__mt_compall_a01.dbr`
      - `database\records\items\loottables\mastertables\mt_compall_a01.dbr`
