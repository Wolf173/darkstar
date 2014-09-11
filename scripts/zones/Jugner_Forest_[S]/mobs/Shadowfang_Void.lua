-----------------------------------
-- Area: Jugner_Forest_[S]
-- NPC:  Shadowfang Void
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

path = {45, 0, -17,
		 61, 0, -36,
		 45, 0, -17,
		 62, 0, -5};		 
function OnMobSpawn(mob)
   local mobID = getMobByID();
   mob:addMod(MOD_HASTE,25);
   if (mobID = 17113724) then
       mob:Allegiance[2];
   end
end;

function OnMobPath(mob)
    pathfind.patrol(mob, path);
	
end;
function OnMobRoam(mob)
-- move to start position if not moving
    if(mob:isFollowingPath() == true) then
    end
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

function onMobDeath(mob, killer)
end;