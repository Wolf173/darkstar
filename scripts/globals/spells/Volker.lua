-----------------------------------------
-- Spell: Voker
-- Summons Trust alter ego Volker

-- M=6

-----------------------------------------

require("scripts/globals/pets");
require("scripts/globals/summon");
require("scripts/globals/bcnm");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	local result = 0;
	if(caster:getObjType() == TYPE_PC) then
		result = avatarMiniFightCheck(caster);
	elseif(caster:hasPet()) then
        result = 1;
    elseif (not caster:canUsePet()) then
		result = 0;
    end
	return result;
end;

function onSpellCast(caster,target,spell)
	caster:spawnPet();

	return 0;
end;