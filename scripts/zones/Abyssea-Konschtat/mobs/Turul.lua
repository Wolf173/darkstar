-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Turul
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/MobIDs");
require("scripts/globals/pathfind");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)	
end;

-----------------------------------
-- onMobSpawn
-----------------------------------
path = {-13, 28, 305,
	     180, 23, 333,
         293, 24, 332,
         360, 33, 383,
         417, 24, 370,
         443, 26, 219,
         372, 18, 104,
         219, 23, 111,
	      20, 27, 219,
	     -27, 20, 291};
function onMobSpawn(mob)
    OnMobRoam(mob);
end;
function OnMobPath(mob)
    pathfind.patrol(mob, path);
	
end;
function OnMobRoam(mob)
-- move to start position if not moving
    if(mob:isFollowingPath() == false) then
       mob:pathThrough(pathfind.first(path));
    end
	if (math.random(0,0) == 0) then
        mob:hideName(false);
        mob:untargetable(false);
        mob:AnimationSub(6);
		--mob:wait(10);
    else
        mob:hideName(true);
        mob:untargetable(true);
        mob:AnimationSub(6);
    end
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
	mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CRUOR_OBTAINED = 7461;
	local pearl = killer:getVar("LightPearl");
    local ebon = killer:getVar("LightEbon");
	local gold = killer:getVar("LightGold");
	local silver = killer:getVar("LightSilver");
	local azure = killer:getVar("LightAzure");
	local ruby = killer:getVar("LightRuby");
	local amber = killer:getVar("LightAmber");
	local ACTION_ATTACK	= 1;
    local ACTION_RANGED_FINISH = 2;
    local ACTION_WEAPONSKILL_FINISH = 3;
    local ACTION_MAGIC_FINISH = 4;
	local cruor = 600;
	local result = cruor+silver;
	local OnKill = killer:getCurrentAction();
	local chance = 1;
	local lightchance = math.random(0,10);
	local ebonlight = ebon+chance;
	local pearllight = pearl+chance;
	local goldlight = gold+chance;
	local silverlight = silver+chance;
	local azurelight = azure+chance;
	local rubylight = ruby+chance;
	local amberlight = amber+chance;
	
	
	
	if (lightchance == 0) then
	    killer:setVar("LightEbon",ebonlight);
		if (ebon == 256) then
	        killer:setVar("LightEbon",255);	
		end
	elseif (lightchance == 2) then
	    killer:setVar("LightGold",goldlight);
		if (gold == 256) then
	        killer:setVar("LightGold",255);		
		end	
	elseif (lightchance == 4) then
	    killer:setVar("LightPearl",pearllight);
		if (pearl == 256) then
	        killer:setVar("LightPearl",255);		
		end	
	elseif (lightchance == 6) then
	    killer:setVar("LightAmber",amberlight);
		if (amber == 256) then
	        killer:setVar("LightAmber",255);		
		end	
	elseif (lightchance == 8) then
	    killer:setVar("LightAzure",azurelight);
		if (azure == 256) then
	        killer:setVar("LightAzure",255);		
		end	
	elseif (lightchance == 10) then
	    killer:setVar("LightRuby",rubylight);
		if (ruby == 256) then
	        killer:setVar("LightRuby",255);		
		end	
	end
	
	killer:messageSpecial(7461,result);	
end;

