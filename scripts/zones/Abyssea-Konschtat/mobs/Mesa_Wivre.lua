-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Mesa_Wivre
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/zones/Abyssea-Konschtat/MobIDs");
require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)	
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)	
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
	WeaknessTriggerSet(mob,target,wsID,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------


function onMobFight(mob,target)
	WeaknessTriggerRed(mob,target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
	local keyId = 1283;
	if (killer:getVar("RED_PROC") == 1) then
		killer:addKeyItem(keyId);
		killer:messageSpecial( KEYITEM_OBTAINED, keyId );
	end
	
	DoExp(mob,killer);
    DoLights(mob,killer);
	PyxisSpawn(mob,killer,npc);
	DoCruor(mob,killer)
end;