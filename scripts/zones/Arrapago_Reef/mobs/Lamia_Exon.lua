-----------------------------------
-- Area: Arrapago Reef
-- NPC:  Medusa
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
   mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());
   
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function OnMobEngaged(mob, target)
    
end;
function onMobFight(mob,target)
    
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    DespawnMob(16998863);
	DespawnMob(16998864);
	DespawnMob(16998865);
	DespawnMob(16998866);
end;