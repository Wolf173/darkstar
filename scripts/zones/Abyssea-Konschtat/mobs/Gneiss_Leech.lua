-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Gneiss_Leech
-----------------------------------

-- require("scripts/zones/Abyssea-Konschtat/MobIDs");

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
	local cruor = 200;
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

