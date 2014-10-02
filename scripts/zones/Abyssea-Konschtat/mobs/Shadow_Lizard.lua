-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Shadow_Lizard
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
package.loaded["scripts/globals/abyssea"] = nil;
package.loaded["scripts/globals/sturdypyxis"] = nil;
require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/common");
require("scripts/globals/sturdypyxis");

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
	--DoExp(mob,target)
	Stagger(mob,target,wsID,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)	
	-- local WS = target:getCurrentAction(); 
	-- local skill = GetCurrentWeaponSkill(); 
	-- if (WS == ACTION_WEAPONSKILL_START)  and (skill == 42) then
		-- killer:messageSpecial(7288);
	-- end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    
	
	DoCruor(mob,killer);
    DoLights(mob,killer);
	PyxisSpawn(mob,killer,npc);
	
end;