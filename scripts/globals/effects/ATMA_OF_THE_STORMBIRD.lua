-----------------------------------
--
--  ATMA_OF_THE_STORMBIRD
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	if (effect:getPower() == 1) then
		target:addMod(MOD_ACC,40);
		target:addMod(MOD_THUNDERATT,40);
		target:addMod(MOD_REFRESH,5);
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
	if (effect:getPower() == 1) then
		target:delMod(MOD_ACC,40);
		target:delMod(MOD_THUNDERATT,40);
		target:delMod(MOD_REFRESH,5);
	end
end;