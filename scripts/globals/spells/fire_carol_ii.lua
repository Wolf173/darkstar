-----------------------------------------
-- Spell: Fire Carol II
-- MOD_FIRERES
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	return handleCarol(caster, target, spell, 50, 120, MOD_FIRERES);
end;
