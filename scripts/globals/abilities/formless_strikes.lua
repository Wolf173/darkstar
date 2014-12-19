-----------------------------------
-- Ability: Formless Strikes
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	return 0,0;
end;

function onUseAbility(player, target, ability)
   player:addStatusEffect(EFFECT_FORMLESS_STRIKES,1,0,180);
end;