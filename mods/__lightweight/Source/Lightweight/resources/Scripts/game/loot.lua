gd.loot = {}

local useItemDelay = Time.Now()
local useItemDelayLimit = 3000

function gd.loot.popSphereOnSpawn(objectId)
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
	Entity.Create("records/fx/skillsother/aoe/item_novaice_fx01.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
	local sound = Character.Create("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
		sound:SetCoords(Game.GetLocalPlayer():GetCoords())
		sound:PlaySound(SoundType.VoxSound)
		sound:PlaySound(SoundType.SpecialAttackSound1)
		sound:PlaySound(SoundType.SpecialAttackSound2)
end

function gd.loot.popSphereOnSpawnValuable(objectId)
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
	Entity.Create("records/fx/skillclass05/chillingsurge_radius_fxpak04.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
	local sound = Character.Create("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
		sound:SetCoords(Game.GetLocalPlayer():GetCoords())
		sound:PlaySound(SoundType.VoxSound)
		sound:PlaySound(SoundType.SpecialAttackSound1)
		sound:PlaySound(SoundType.SpecialAttackSound2)
end

function gd.loot.disableItems()
	useItemDelay = Time.Now()
	gd.loot.countSpheres()
end

function gd.loot.returnItemDelay()
	return useItemDelay
end

function gd.loot.returnItemDelayLimit()
	return useItemDelayLimit
end

function gd.loot.countSpheres()
	trackerCommon = 1
	trackerUncommon = 1
	trackerRandom = 1
	trackerMI = 1
	trackerMaterialsValuable = 1
	trackerMaterialsSpecial = 1
	trackerMaterialsNormal = 1
	trackerMaterialsLow = 1
	trackerValuable = 1
	trackerMagical = 1
	trackerLegendary = 1
	trackerDivine = 1
	
	trackerCommon = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_common.dbr", trackerCommon)
	trackerUncommon = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_uncommon.dbr", trackerUncommon)
	trackerRandom = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_random.dbr", trackerRandom)
	trackerMI = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_mi.dbr", trackerMI)
	trackerMaterialsValuable = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_materials_valuable.dbr", trackerMaterialsValuable)
	trackerMaterialsSpecial = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_materials_special.dbr", trackerMaterialsSpecial)
	trackerMaterialsNormal = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_materials_normal.dbr", trackerMaterialsNormal)
	trackerMaterialsLow = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_materials_low.dbr", trackerMaterialsLow)
	trackerValuable = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_valuable.dbr", trackerValuable)
	trackerMagical = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_magical.dbr", trackerMagical)
	trackerLegendary = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_legendary.dbr", trackerLegendary)
	trackerDivine = gd.loot.sphereCounter("records/__mod/spheres/sphere_inventory_divine.dbr", trackerDivine)
end

function gd.loot.sphereCounter(sphere, tracker)
	while Game.GetLocalPlayer():HasItem(sphere, tracker, false) do
		tracker = tracker + 1
	end
	return tracker
end

function gd.loot.inventoryPopSphere(sphere, loot, tracker)
	local counter = 1
	if (Time.Now() - useItemDelay) < useItemDelayLimit then
		return
	end
	while Game.GetLocalPlayer():HasItem(sphere, counter, false) do
		counter = counter + 1
	end
	counter = counter - 1
	while counter < (tracker - 1) do
		Entity.Create(loot):SetCoords(Game.GetLocalPlayer():GetCoords())
		counter = counter + 1
	end
	if tracker == 0 then
		Entity.Create(loot):SetCoords(Game.GetLocalPlayer():GetCoords())
	end
	gd.loot.countSpheres()
end

function gd.loot.createSphereOnPlayer(loot, tracker)
	if (tracker - 2) == 0 then
		do return end
	end
	Entity.Create(loot):SetCoords(Game.GetLocalPlayer():GetCoords())
	gd.loot.countSpheres()
end

function gd.loot.inventoryPopSphereRandom()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_random.dbr", "records/__mod/spheres/sphere_instapop_loot_random.dbr", trackerRandom)
end

function gd.loot.createSphereOnPlayerRandom()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_random.dbr", trackerRandom)
end

function gd.loot.inventoryPopSphereCommon()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_common.dbr", "records/__mod/spheres/sphere_instapop_loot_common.dbr", trackerCommon)
end

function gd.loot.createSphereOnPlayerCommon()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_common.dbr", trackerCommon)
end

function gd.loot.inventoryPopSphereUncommon()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_uncommon.dbr", "records/__mod/spheres/sphere_instapop_loot_uncommon.dbr", trackerUncommon)
end

function gd.loot.createSphereOnPlayerUncommon()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_uncommon.dbr", trackerUncommon)
end

function gd.loot.inventoryPopSphereValuable()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_valuable.dbr", "records/__mod/spheres/sphere_instapop_loot_valuable.dbr", trackerValuable)
end

function gd.loot.createSphereOnPlayerValuable()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_valuable.dbr", trackerValuable)
end

function gd.loot.inventoryPopSphereLegendary()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_legendary.dbr", "records/__mod/spheres/sphere_instapop_loot_legendary.dbr", trackerLegendary)
end

function gd.loot.createSphereOnPlayerLegendary()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_legendary.dbr", trackerLegendary)
end

function gd.loot.inventoryPopSphereMaterialsLow()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_materials_low.dbr", "records/__mod/spheres/sphere_instapop_loot_materials_low.dbr", trackerMaterialsLow)
end

function gd.loot.createSphereOnPlayerMaterialsLow()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_materials_low.dbr", trackerMaterialsLow)
end

function gd.loot.inventoryPopSphereMaterialsNormal()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_materials_normal.dbr", "records/__mod/spheres/sphere_instapop_loot_materials_normal.dbr", trackerMaterialsNormal)
end

function gd.loot.createSphereOnPlayerMaterialsNormal()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_materials_normal.dbr", trackerMaterialsNormal)
end

function gd.loot.inventoryPopSphereMaterialsValuable()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_materials_valuable.dbr", "records/__mod/spheres/sphere_instapop_loot_materials_valuable.dbr", trackerMaterialsValuable)
end

function gd.loot.createSphereOnPlayerMaterialsValuable()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_materials_valuable.dbr", trackerMaterialsValuable)
end

function gd.loot.inventoryPopSphereMaterialsSpecial()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_materials_special.dbr", "records/__mod/spheres/sphere_instapop_loot_materials_special.dbr", trackerMaterialsSpecial)
end

function gd.loot.createSphereOnPlayerMaterialsSpecial()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_materials_special.dbr", trackerMaterialsSpecial)
end

function gd.loot.inventoryPopSphereDivine()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_divine.dbr", "records/__mod/spheres/sphere_instapop_loot_divine.dbr", trackerDivine)
end

function gd.loot.createSphereOnPlayerDivine()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_divine.dbr", trackerDivine)
end

function gd.loot.inventoryPopSphereMagical()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_magical.dbr", "records/__mod/spheres/sphere_instapop_loot_magical.dbr", trackerMagical)
end

function gd.loot.createSphereOnPlayerMagical()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_magical.dbr", trackerMagical)
end

function gd.loot.inventoryPopSphereMI()
	gd.loot.inventoryPopSphere("records/__mod/spheres/sphere_inventory_mi.dbr", "records/__mod/spheres/sphere_instapop_loot_mi.dbr", trackerMI)
end

function gd.loot.createSphereOnPlayerMI()
	gd.loot.createSphereOnPlayer("records/__mod/spheres/sphere_instapop_loot_mi.dbr", trackerMI)
end