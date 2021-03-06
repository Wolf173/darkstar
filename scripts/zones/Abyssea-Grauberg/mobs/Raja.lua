-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Raja
-----------------------------------

-- require("scripts/zones/Abyssea-Grauberg/MobIDs");
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)	
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_MATT,25);
	mob:addMod(MOD_MACC,500);
	mob:addMod(MOD_DEF,-100);	
	mob:addMod(MOD_REGAIN,33);	
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)	
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)	
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)	
end;

