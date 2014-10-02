-----------------------------------------
-- Spell: Battery Charge
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/bluemagic");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)


    local mp = 8;
	local duration = 300;
	if (caster:hasStatusEffect(EFFECT_DIFFUSION) == true and caster:getID() == target:getID()) then
		duration = duration * 3;
	end

	if (target:getMainLvl() < 75) then
		duration = duration * target:getMainLvl() / 75;
	end
	if (target:hasStatusEffect(EFFECT_DIFFUSION) or target:hasStatusEffect(EFFECT_DIFFUSION)) then
		spell:setMsg(75);
		return 0;
	end
	target:delStatusEffect(EFFECT_REFRESH);
	target:addStatusEffect(EFFECT_REFRESH,mp,3,duration);

    return EFFECT_REFRESH;
end;