---@diagnostic disable: undefined-global
gd.loot = {}

local useItemDelay = Time.Now()
local useItemDelayLimit = 3000

function gd.loot.disableItems()
	useItemDelay = Time.Now()
	gd.loot.updateInventory()
end

function gd.loot.returnItemDelay()
	return useItemDelay
end

function gd.loot.returnItemDelayLimit()
	return useItemDelayLimit
end

local inventory = {	["records/__mod/spheres/sphere_inventory_common.dbr"] 				= 0,
					["records/__mod/spheres/sphere_inventory_uncommon.dbr"] 			= 0,
					["records/__mod/spheres/sphere_inventory_random.dbr"] 				= 0,
					["records/__mod/spheres/sphere_inventory_mi.dbr"] 					= 0,
					["records/__mod/spheres/sphere_inventory_materials_valuable.dbr"] 	= 0,
					["records/__mod/spheres/sphere_inventory_materials_special.dbr"] 	= 0,
					["records/__mod/spheres/sphere_inventory_materials_normal.dbr"] 	= 0,
					["records/__mod/spheres/sphere_inventory_materials_low.dbr"] 		= 0,
					["records/__mod/spheres/sphere_inventory_valuable.dbr"] 			= 0,
					["records/__mod/spheres/sphere_inventory_legendary.dbr"] 			= 0,
					["records/__mod/spheres/sphere_inventory_magical.dbr"] 				= 0,
					["records/__mod/spheres/sphere_inventory_divine.dbr"] 				= 0,
					["records/__mod/spheres/sphere_inventory_blueprints_all.dbr"] 		= 0,
					["records/__mod/spheres/sphere_inventory_blueprints_materials.dbr"] = 0,
					["records/__mod/spheres/sphere_inventory_blueprints_epic.dbr"] 		= 0,
					["records/__mod/spheres/sphere_inventory_blueprints_legendary.dbr"] = 0,
					["records/__mod/spheres/sphere_inventory_iron_bits.dbr"] 			= 0}

function gd.loot.updateInventory()
	for key, val in pairs(inventory) do
		inventory[key] = gd.loot.count(key)
	end
end

function gd.loot.updateInventoryOnPickUp(characterId, objectId)
	local key = Entity.Get(objectId):GetName()
	inventory[key] = gd.loot.count(key)
end

function gd.loot.count(key)
	local count = 0
	while Game.GetLocalPlayer():HasItem(key, count, false) do
		count = count + 1
	end
	return count - 1
end

function gd.loot.inventorySphereCommon()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_common.dbr")
end

function gd.loot.inventorySphereUncommon()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_uncommon.dbr")
end

function gd.loot.inventorySphereValuable()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_valuable.dbr")
end

function gd.loot.inventorySphereLegendary()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_legendary.dbr")
end

function gd.loot.inventorySphereDivine()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_divine.dbr")
end

function gd.loot.inventorySphereRandom()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_random.dbr")
end

function gd.loot.inventorySphereMI()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_mi.dbr")
end

function gd.loot.inventorySphereMaterialsLow()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_materials_low.dbr")
end

function gd.loot.inventorySphereMaterialsNormal()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_materials_normal.dbr")
end

function gd.loot.inventorySphereMaterialsValuable()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_materials_valuable.dbr")
end

function gd.loot.inventorySphereMaterialsSpecial()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_materials_special.dbr")
end

function gd.loot.inventorySphereBlueprintsAll()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_blueprints_all.dbr")
end

function gd.loot.inventorySphereBlueprintsMaterials()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_blueprints_materials.dbr")
end

function gd.loot.inventorySphereBlueprintsEpic()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_blueprints_epic.dbr")
end

function gd.loot.inventorySphereBlueprintsLegendary()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_blueprints_legendary.dbr")
end

function gd.loot.inventorySphereMagical()
	gd.loot.destroySphere("records/__mod/spheres/sphere_inventory_magical.dbr")
end

function gd.loot.destroySphere(key)
	if (Time.Now() - useItemDelay) < useItemDelayLimit then
		do return end
	end
	local loot = string.gsub(key, "inventory", "instapop_loot")
	local count = gd.loot.count(key)
	while count < (inventory[key]) do
		Entity.Create(loot):SetCoords(Game.GetLocalPlayer():GetCoords())
		print("-- Popped Beutekugel: ", loot)
		count = count + 1
	end
	--if inventory[key] == 0 then
	--	Entity.Create(loot):SetCoords(Game.GetLocalPlayer():GetCoords())
	--end
	inventory[key] = gd.loot.count(key)
end

function gd.loot.destroySphereDialog(key)
	local loot = string.gsub(key, "inventory", "instapop_loot")
	Game.GetLocalPlayer():TakeItem(key, 1, false)
	gd.loot.destroySphere(key)
end

--- Iron Bits loot sphere scatters the loot through an ambush

function gd.loot.inventorySphereIronBits()
	gd.loot.destroySphereIronBits("records/__mod/spheres/sphere_inventory_iron_bits.dbr")
end

function gd.loot.destroySphereIronBits(key)
	if (Time.Now() - useItemDelay) < useItemDelayLimit then
		do return end
	end
	local ambush = string.gsub(key, "spheres/sphere_inventory_iron_bits", "iron_bits_sphere_ambush")
	local count = gd.loot.count(key)
	while count < (inventory[key]) do
		Entity.Create(ambush):SetCoords(Game.GetLocalPlayer():GetCoords())
		Entity.Create("records/fx/skillclass05/chillingsurge_radius_fxpak04.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
		gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
		count = count + 1
	end
	--if inventory[key] == 0 then
	--	Entity.Create(ambush):SetCoords(Game.GetLocalPlayer():GetCoords())
	--	Entity.Create("records/fx/skillclass05/chillingsurge_radius_fxpak04.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
	--	gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
	--end
	inventory[key] = gd.loot.count(key)
end

function gd.loot.destroySphereDialogIronBits(key)
	if (inventory[key] - 2) == 0 then
		do return end
	end
	Entity.Create(string.gsub(key, "spheres/sphere_inventory_iron_bits", "iron_bits_sphere_ambush")):SetCoords(Game.GetLocalPlayer():GetCoords())
	Entity.Create("records/fx/skillclass05/chillingsurge_radius_fxpak04.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
	gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
	inventory[key] = gd.loot.count(key)
	Game.GetLocalPlayer():TakeItem(key, 1, false)
end

function gd.loot.createSphereOnUnitIronBits(objectId)
	Entity.Create("records/__mod/spheres/sphere_instapop_loot_iron_bits.dbr"):SetCoords(Character.Get(objectId):GetCoords())
end

-- Level up rewards

function gd.loot.createSphereOnPlayerMaterialsBlueprintsEpic()
	Entity.Create("records/__mod/spheres/sphere_instapop_loot_blueprints_epic.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
end

function gd.loot.createSphereOnPlayerMaterialsBlueprintsLegendary()
	Entity.Create("records/__mod/spheres/sphere_instapop_loot_blueprints_legendary.dbr"):SetCoords(Game.GetLocalPlayer():GetCoords())
end

--- Loot sphere explosion and sound

function gd.loot.popSphereOnSpawn(objectId)
	Entity.Create("records/fx/skillsother/aoe/item_novaice_fx01.dbr"):SetCoords(Destructible.Get(objectId):GetCoords())
	gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
end

function gd.loot.popSphereOnSpawnValuable(objectId)
	Entity.Create("records/fx/skillclass05/chillingsurge_radius_fxpak04.dbr"):SetCoords(Destructible.Get(objectId):GetCoords())
	gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
end

function gd.loot.popSphereOnSpawnIronBits(objectId)
	Entity.Create("records/fx/skillsother/aoe/aethernova_fxpak01.dbr"):SetCoords(Destructible.Get(objectId):GetCoords())
	gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
end

--- Recycle feature

local recycleTrigger = nil
local recycleTriggerDelay = Time.Now()
local recycleRewardDelay = Time.Now()

local recycleRewards	= {	sphere_mi				= {probability = 15/1000},
							sphere_pop_materials	= {probability = 10/1000},
							sphere_pop_legendary	= {probability = 4/1000},
							sphere_pop_divine		= {probability = 1/1000},
							nothing					= {probability = 970/1000}}

function gd.loot.recycle(objectId)
	if (Time.Now() - recycleTriggerDelay) > 1000 then
		gd.loot.destroyTriggerOnRecycle()
		do return end
	end
	local coords = Entity.Get(objectId):GetCoords()
	if gd.loot.checkItemsOnRecycle(Entity.Get(objectId):GetName()) == 1 then
		gd.loot.recycleDetermineLoot("a", objectId)
		gd.loot.recycleReward(coords)
	elseif gd.loot.checkItemsOnRecycle(Entity.Get(objectId):GetName()) == 2 then
		gd.loot.recycleDetermineLoot("b", objectId)
		gd.loot.recycleReward(coords)
	end
end

function gd.loot.recycleDetermineLoot(rarity, objectId)
	local level = Game.GetLocalPlayer():GetLevel()
	if level < 25 then
		Entity.Create("records/__mod/recycle/destructible_" .. rarity .. "01.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
	elseif level < 50 then
		Entity.Create("records/__mod/recycle/destructible_" .. rarity .. "25.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
	elseif level < 75 then
		Entity.Create("records/__mod/recycle/destructible_" .. rarity .. "50.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
	else
		Entity.Create("records/__mod/recycle/destructible_" .. rarity .. "75.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
	end
	Entity.Get(objectId):Destroy()
end

function gd.loot.recycleReward(coords)
	local result = gd.utility.getRandomItem(recycleRewards, 1)
	if (Time.Now() - recycleRewardDelay) < 60000 then
		do return end
	end
	if result == "sphere_mi" then
		gd.loot.destroyTriggerOnRecycle()
		Entity.Create("records/__mod/spheres/sphere_inventory_mi.dbr"):SetCoords(coords)
		Entity.Create("records/fx/skillsother/aoe/aethernova_fxpak01.dbr"):SetCoords(coords)
		gd.utility.playSound("records/__mod/spheres/sound/sound_effect_open_sphere_npc.dbr")
		recycleRewardDelay = Time.Now()
	elseif result == "sphere_pop_materials" then
		Entity.Create("records/__mod/spheres/sphere_instapop_loot_materials_normal.dbr"):SetCoords(coords)
		recycleRewardDelay = Time.Now()
	elseif result == "sphere_pop_legendary" then
		gd.loot.destroyTriggerOnRecycle()
		Entity.Create("records/__mod/spheres/sphere_instapop_loot_legendary.dbr"):SetCoords(coords)
		recycleRewardDelay = Time.Now()
	elseif result == "sphere_pop_divine" then
		gd.loot.destroyTriggerOnRecycle()
		Entity.Create("records/__mod/spheres/sphere_instapop_loot_divine.dbr"):SetCoords(coords)
		recycleRewardDelay = Time.Now()
	else
		-- No additional reward
	end
end

function gd.loot.createTriggerOnRecycle(objectId)
	local coords = Entity.Get(objectId):GetCoords()
	--Entity.Create("records/__mod/recycle/fx.dbr"):SetCoords(coords)
	Entity.Create("records/__mod/recycle/decal.dbr"):SetCoords(coords)
	recycleTrigger = Entity.Create("records/__mod/recycle/trigger.dbr")
		recycleTrigger:SetCoords(coords)
	recycleTriggerDelay = Time.Now()
end

function gd.loot.destroyTriggerOnRecycle()
	if recycleTrigger ~= nil then
		recycleTrigger:Destroy()
	end
end

function gd.loot.checkItemsOnRecycle(entity)
	if string.find(entity, "/gear") then
		print("-- Checking item -- " .. entity)
		if string.find(entity, "/axe") and (string.find(entity, "/c") or string.find(entity, "/d")) then
			-- Special case
			return 0
		elseif string.find(entity, "/a") then
			print("-- Recycling item -- " .. entity)
			return 1
		elseif string.find(entity, "/b") then
			print("-- Recycling item -- " .. entity)
			return 1
		elseif string.find(entity, "/c") and Game.GetLocalPlayer():HasToken("RECYCLE_EPIC_ITEMS") then
			-- Missing: Checking upgraded path
			return 2
		end
	end
	return 0
end

function gd.loot.popSphereOnSpawnRecycle(objectId)
	--Entity.Create("records/fx/ambient/break_metalsparks01_fx.dbr"):SetCoords(Destructible.Get(objectId):GetCoords())
	--Entity.Create("records/fx/skillclass02/firestrike_explosive_fx01.dbr"):SetCoords(Destructible.Get(objectId):GetCoords())
	Destructible.Get(objectId):Destroy(Vec(0,1,0), 10, true)
end