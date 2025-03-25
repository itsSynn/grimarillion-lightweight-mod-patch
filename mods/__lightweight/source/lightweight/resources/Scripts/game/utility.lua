---@diagnostic disable: undefined-global
gd.utility = {}

function gd.utility.isPlayingDiabloVersion()
	return true
end

function gd.utility.playSound(path)
	local sound = Character.Create(path)
		sound:SetCoords(Game.GetLocalPlayer():GetCoords())
		sound:PlaySound(SoundType.VoxSound)
		sound:PlaySound(SoundType.SpecialAttackSound1)
		sound:PlaySound(SoundType.SpecialAttackSound2)
end

local value = 25000

function gd.utility.getRandomItem(input, modifier)
	math.randomseed(Time.Now() * (value / 1000) * modifier)
    value = value - 1
    local p = math.random()
    local cumulativeProbability = 0
    for name, item in pairs(input) do
        cumulativeProbability = cumulativeProbability + item.probability
        if (p <= cumulativeProbability) then
            return name
        end
    end
end

function gd.utility.getTableSize(input)
    local count = 0
    for _, __ in pairs(input) do
        count = count + 1
    end
    return count
end