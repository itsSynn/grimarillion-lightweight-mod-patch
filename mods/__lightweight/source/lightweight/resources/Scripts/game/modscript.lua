gd.modscript = {}

function gd.modscript.initiateMod()
	gd.loot.disableItems()
end

local doggo = nil
local trigger = nil
local merchant = nil

local doggoDelay = 0

-- Spawns the dog onto the summoned pet
function gd.modscript.spawnDoggo(objectId)
	if doggo == nil or (Time.Now() - doggoDelay) > 60000 then
		trigger = Entity.Create("records/__mod/dog_trigger.dbr")
			trigger:SetCoords(Entity.Get(objectId):GetCoords())
		doggo = Entity.Create("records/__mod/dog.dbr")
			doggo:SetCoords(Entity.Get(objectId):GetCoords())
		Entity.Create("records/fx/ui/riftgateelectric_open_fx01.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
		local sound = Character.Create("records/__mod/dog_sound_npc.dbr")
			sound:SetCoords(Entity.Get(objectId):GetCoords())
			sound:PlaySound(SoundType.VoxSound)
		UI.Notify("tag_DogSpawned")
		doggoDelay = Time.Now()
	end
end

-- Removes the dog when leaving the trigger zone
function gd.modscript.removeDoggo()
	if doggo ~= nil then
		Entity.Create("records/fx/skillsother/castfx/ice_cast_fx.dbr"):SetCoords(doggo:GetCoords())
		local sound = Character.Create("records/__mod/dog_sound_npc.dbr")
			sound:SetCoords(doggo:GetCoords())
			sound:PlaySound(SoundType.VoiceSound1)
		trigger:Destroy()
		doggo:Destroy()
		doggo = nil
		if merchant ~= nil then
			Entity.Create("records/fx/ui/riftgatepersonalopen_fxpak.dbr"):SetCoords(merchant:GetCoords())
			merchant:Destroy()
			merchant = nil
		end
	end
end

-- Spawns an ambush that spawns the actual merchant
function gd.modscript.spawnMerchant()
	Entity.Create("records/__mod/merchant_ambush.dbr"):SetCoords(doggo:GetCoords())
end

function gd.modscript.spawnMerchantOnAmbush(objectId)
	merchant = Entity.Create("records/__mod/merchant.dbr")
		merchant:SetCoords(Entity.Get(objectId):GetCoords())
	Entity.Create("records/fx/ambient/korvaakdoor01_deactivate_fx.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
	local sound = Character.Create("records/__mod/merchant_sound_npc.dbr")
		sound:SetCoords(Entity.Get(objectId):GetCoords())
		sound:PlaySound(SoundType.VoxSound)
	UI.Notify("tag_MerchantSpawned")
end

function gd.modscript.returnStatusMerchant()
	if merchant ~= nil then
		return true
	end
	return false
end

-- Disables the popping of spheres next to Caravan NPCs
function gd.modscript.spawnTriggerOnStash(objectId)
	Entity.Create("records/__mod/spheres/trigger_disable_spheres.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
end