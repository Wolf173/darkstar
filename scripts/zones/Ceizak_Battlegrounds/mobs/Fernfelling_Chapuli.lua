-----------------------------------
-- Area: Arrapago Reef
-- NPC:  Medusa
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function OnMobEngaged(mob,target)
    mob:AnimationSub(1);
	
	
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	
end;