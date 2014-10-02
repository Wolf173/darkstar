-----------------------------------
-- This file contains functions and
-- data related to Abyssea
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Vunkerl/TextIDs"] = nil;
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/zones/Abyssea-La_Theine/TextIDs");
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
require("scripts/zones/Abyssea-Altepa/TextIDs");
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/zones/Abyssea-Misareaux/TextIDs");
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
require("scripts/zones/Abyssea-Vunkerl/TextIDs");
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/weaponskills");
require("scripts/globals/magic");
-----------------------------------   

-----------------------------------
-- Calculating lights
-----------------------------------
			
function DoLights(mob,killer)
	
	----------------------
	-- Lights
	----------------------
    local pearl = killer:getVar("LightPearl");
    local ebon = killer:getVar("LightEbon");
	local gold = killer:getVar("LightGold");
	local silver = killer:getVar("LightSilver");
	local azure = killer:getVar("LightAzure");
	local ruby = killer:getVar("LightRuby");
	local amber = killer:getVar("LightAmber");
	
	local light = 1;
    local ebonlight = ebon+light;
	local pearllight = pearl+light;
	local goldlight = gold+light;
	local silverlight = silver+light;
	local azurelight = azure+light;
	local rubylight = ruby+light;
	local amberlight = amber+light;
	
	--------------------------------------------
	-- 		Add lights on mob death
	--------------------------------------------
	local lightchance = math.random(0,25);
	
    if (lightchance == 1) then
		if (pearl > 255) then
			killer:setVar("LightPearl",255);
		else
			killer:setVar("LightPearl",pearllight);
		end
		
	elseif (lightchance == 5) then
		if (amber > 255) then
			killer:setVar("LightAmber",255);
		else
			killer:setVar("LightAmber",amberlight);
		end
		
	elseif (lightchance == 10) then
		if (azure > 255) then
			killer:setVar("LightAzure",255);
		else
			killer:setVar("LightAzure",azurelight);
		end
		
	elseif (killer:getCurrentAction() == ACTION_WEAPONSKILL_FINISH) then
		if (ruby > 255) then
			killer:setVar("LightRuby",255);
		else
			killer:setVar("LightRuby",rubylight);
		end	
	end	
end;

-----------------------------------
-- 		Check Lights on /heal
-----------------------------------
function checklights(target, effect)

    local param0 = target:getVar("LightPearl");
	local param1 = target:getVar("LightEbon");
	local param2 = target:getVar("LightGold");
	local param3 = target:getVar("LightSilver");
	local param4 = target:getVar("LightAzure");
	local param5 = target:getVar("LightRuby");
	local param6 = target:getVar("LightAmber");
	local Tick = (target:getVar("Abysseatime")/60);
	
    if target:hasStatusEffect(EFFECT_VISITANT) and target:hasStatusEffect(EFFECT_HEALING) then
		target:messageSpecial(SHOW_LIGHTS,param0,param1,param2,param3);
		target:messageSpecial(SHOW_LIGHTS2,param4,param5,param6);
		target:messageSpecial(TIME_REMAINING, Tick, 1, 0);
	end
end;



-----------------------------------
-- Calculating cruor drop from mobs
-----------------------------------

function DoCruor(mob,killer)
	local zone = killer:getZone();
    local silver = killer:getVar("LightSilver");
	local mycruor = killer:getCruor();
	cruor = (10+silver*2);
	killer:addCruor(cruor);
	
	killer:messageSpecial(6979,cruor,mycruor,0,0,zone); 
end;

-----------------------------------
-- Exp bonus from Ebon Light
-----------------------------------

function DoExp(mob,target)
 
	local bonus = target:getVar("LightEbon");
	local caprate = 100;
	if (bonus > 100) then
		bonus = caprate;
	end
	target:addMod(MOD_EXP_BONUS,bonus);	
end;



-----------------------------------------
-- Setting up Weakness with onMobEngaged
-----------------------------------------
function WeaknessTriggerSet(mob,target,skill)
	
	--[[-----------------------------------------------------------------------------
	-- Weakness Red - triggered by using a specific elemental Weapon Skill on the NM.
	---------------------------------------------------------------------------------
		Red Weakness 	Triggers By Weapon
		
		Weapon Type 	Weapon Skills			ID
		----------------------------------------------------
		Club			Seraph Strike			161
		----------------------------------------------------
		Dagger			Cyclone					20
						Energy Drain			22
		----------------------------------------------------
		Great Katana	Tachi: Jinpu			148
						Tachi: Koki				149
		----------------------------------------------------
		Great Sword		Freezebite				51	
		----------------------------------------------------
		Katana			Blade: Ei				133
		----------------------------------------------------
		Polearm			Raiden Thrust			114
		----------------------------------------------------
		Scythe			Shadow of Death			98
		----------------------------------------------------
		Staff			Sunburst				180
						Earth Crusher			178
		----------------------------------------------------
		Sword			Red Lotus Blade			34
						Seraph Blade			37
		----------------------------------------------------]]
	-- trigger 0-3 0 = Yellow 1 = blue 2 = Red 3 = White
	local WS = 0;
	local DayElement = VanadielDayElement();
	local Skill = skill:getID();
	
	-- Trigger can be( day before <- current day -> day after ).
	-- Setting as fixed for now as needs more testing.
	
	if (DayElement == 0) then
	
		local Wskill = math.random(1,5);
		if (Wskill == 1) then
			WS = 34;
		elseif (Wskill == 2) then
			WS = 22;
		elseif (Wskill == 3) then
			WS = 98;
		elseif (Wskill == 4) then
			WS = 178;
		elseif (Wskill == 5) then
			WS = 133;
		end
		target:setVar("RedTrigger", WS);
		--print("WS",WS);

	elseif (DayElement == 1) then
	
		local Wskill = math.random(1,2);
		if (Wskill == 1) then
			WS = 178;
		elseif (Wskill == 2) then
			WS = 34;
		end
		target:setVar("RedTrigger", WS);
		--print("WS",WS);
		
	elseif (DayElement == 2) then
	
		local Wskill = math.random(1,2);
		if (Wskill == 1) then
			WS = 178;
		elseif (Wskill == 2) then
			WS = 20;
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);
		
	elseif (DayElement == 3) then
	
		local Wskill = math.random(1,3);
		if (Wskill == 1) then
			WS = 148;
		elseif (Wskill == 2) then
			WS = 20;
		elseif (Wskill == 3) then
			WS = 51;
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);
		
	elseif (DayElement == 4) then
	
		local Wskill = math.random(1,3);
		if (Wskill == 1) then
			WS = 51;
		elseif (Wskill == 2) then
			WS = 114;
		elseif (Wskill == 3) then
			WS = 148;
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);
		
	elseif (DayElement == 5) then
	
		local Wskill = math.random(1,6);
		if (Wskill == 1) then
			WS = 114;
		elseif (Wskill == 2) then
			WS = 51;
		elseif (Wskill == 3) then
			WS = 149;
		elseif (Wskill == 4) then
			WS = 161;
		elseif (Wskill == 5) then
			WS = 180;
		elseif (Wskill == 6) then
			WS = 37;
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);
		
	elseif (DayElement == 6) then
	
		local Wskill = math.random(1,8);
		if (Wskill == 1) then
			WS = 149;
		elseif (Wskill == 2) then
			WS = 161;
		elseif (Wskill == 3) then
			WS = 180;
		elseif (Wskill == 4) then
			WS = 37;
		elseif (Wskill == 5) then
			WS = 22;	
		elseif (Wskill == 6) then
			WS = 133;
		elseif (Wskill == 7) then
			WS = 98;
		elseif (Wskill == 8) then
			WS = 114;	
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);	
		
	elseif (DayElement == 7) then
	
		local Wskill = math.random(1,8);
		if (Wskill == 1) then
			WS = 22;
		elseif (Wskill == 2) then
			WS = 133;
		elseif (Wskill == 3) then
			WS = 98;
		elseif (Wskill == 4) then
			WS = 149;
		elseif (Wskill == 5) then
			WS = 161;	
		elseif (Wskill == 6) then
			WS = 180;
		elseif (Wskill == 7) then
			WS = 37;
		elseif (Wskill == 8) then
			WS = 34;
		end	
		target:setVar("RedTrigger", WS);
		--print("WS",WS);	
	end
end;



function WeaknessTriggerRed(mob,target)
	local RedTrigger = target:getVar("RedTrigger");
	local WSID = target:getVar("MyTriggerRED");
	local wsStart = target:getCurrentAction();
	local RedProc = target:getVar("RED_PROC");
	local RedClue = 0;
	local msgchance = math.random(0,2);
	
	if (wsStart == ACTION_WEAPONSKILL_FINISH) and (target:hasKeyItem(1442)) then
		if (msgchance == 1) then
			if (RedTrigger == 34) then
				RedClue = 1;
			elseif (RedTrigger == 51) then
				RedClue = 2;
			elseif (RedTrigger == 20) or (RedTrigger == 148) then
				RedClue = 3;
			elseif (RedTrigger == 178) then
				RedClue = 4;
			elseif (RedTrigger == 114) then
				RedClue = 5;
			elseif (RedTrigger == 149) or (RedTrigger == 161) or (RedTrigger == 37) then
				RedClue = 7;
			elseif (RedTrigger == 22) or (RedTrigger == 133) or (RedTrigger == 98) then
				RedClue = 8;
			end
		    target:messageSpecial(RED_WEAKNESS,RedClue);
			target:setVar("RED_PROC",0); -- makes sure other weapon skills won't trigger the weakness trigger.
		end
		
	elseif (wsStart == ACTION_WEAPONSKILL_FINISH) and (WSID == RedTrigger) then
		mob:weaknessTrigger(2);
		target:messageSpecial(STAGGERED,0,0,0,0,true);
		mob:addStatusEffect(EFFECT_TERROR,0,0,30);
		target:setVar("MyTriggerRED",0);
		target:setVar("RED_PROC",1);
		--print("RedTrigger",RedTrigger);
		--print("WSID",WSID);
	end
end;