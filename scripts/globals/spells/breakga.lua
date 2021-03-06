-----------------------------------------
-- Spell: Breakga
-- Temporarily blinds an enemy, greatly lowering its accuracy.
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
    -- Pull base stats.
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    --local bonus = AffinityBonus(caster, spell:getElement());
    local resist = applyResistanceEffect(caster,spell,target,dINT,35,0,EFFECT_PETRIFICATION);
    -- Duration, including resistance.  Unconfirmed.
    local duration = 30 * resist;

    -- Begin nerfing of Break on NMs
    if(target:isMob() == true) then
        if (target:isNM() == true) then
            spell:setMsg(75);
            return EFFECT_PETRIFICATION;
        end
    end
    -- End nerfing of Break on NMs

    if(resist > 0.5) then
        if(target:addStatusEffect(EFFECT_PETRIFICATION,1,0,duration)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    else
        spell:setMsg(85);
    end

    return EFFECT_PETRIFICATION;
end;