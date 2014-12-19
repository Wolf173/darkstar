-----------------------------------------
-- ID: 16613
-- Spirit Sword
-- Additional effect: Light damage
-- Enchantment: TP+100
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 5;

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
        local dmg = math.random(7,21);
        local params = {};
        params.bonusmab = 0;
        params.includemab = false;
        dmg = addBonusesAbility(player, ELE_LIGHT, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(player,target,ELE_LIGHT,0);
        dmg = adjustForTarget(target,dmg,ELE_LIGHT);
        dmg = finalMagicNonSpellAdjustments(player,target,ELE_LIGHT,dmg);

        local message = 163;
        if (dmg < 0) then
            message = 167;
        end

        return SUBEFFECT_LIGHT_DAMAGE,message,dmg;
    end
end;

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addTP(10); -- Core currently makes this *10 stated value, so its 100...
end;