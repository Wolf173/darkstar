-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/status/atma");
require("scripts/globals/keyitems");
-----------------------------------
-- onEffectGain Action
-----------------------------------
cmdprops =
{
    permission = 1,
    parameters = "siii"
};
function onTrigger(player, target, atma, duration)


 -- -- -- -- -- -- atma effect -- -- -- -- -- --
    local Lion = ATMA_OF_THE _LION
    if(type(AtmaName) == "atmaname") then  
	      player:addStatusEffect(EFFECT_ATMA);
	      target:addMod(MOD_TRIPLE_ATTACK,7);
	      target:addMod(MOD_UDMGPHYS,10);
		  target:addMod(MOD_LIGHTATT,30);
		  effectTarget:messagePublic(280, effectTarget, ATMA_OF_THE _LION);
	else
        return; 
	end	
local pc = GetPlayerByName(target);
    if (pc ~= nil) then
            effectTarget = pc;
    else
        return;
    end
    if (atma == nil) then
        player:PrintToPlayer( "Atma cannot be nil." );
        return;
    end	 
		 
		 
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
         player:delStatusEffect(EFFECT_ATMA);
end;