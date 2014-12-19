-----------------------------------------
-- Spell: Warp
-- Transports the user to their Home Point
-----------------------------------------

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	target:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
    spell:setMsg(93);
	return 0;
end;