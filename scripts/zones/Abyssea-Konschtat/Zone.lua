-----------------------------------
--
-- Zone: Abyssea-Konschtat
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/abyssea");
-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
					 --(RegionID, X, Radius, Z)
	-- zone:registerRegion(1, 128, 50, -829,0,0,0); -- Ward update message.
	
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
	cs = -1;
	player:setVar("LightPearl",0);
    player:setVar("LightEbon",0);
	player:setVar("LightGold",0);
	player:setVar("LightSilver",0);
	player:setVar("LightAzure",0);
	player:setVar("LightRuby",0);
	player:setVar("LightAmber",0);
	
	player:addStatusEffect(EFFECT_PREPARATIONS,0,0,300);
	player:setVar("preptime",300);
	
	if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
			player:setPos(150.000, -71.000, -839.986, 140);	
	end
	
	return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
	-- local preptime = player:getVar("ABYSSEA_PREP_TIME");
	-- local prevTime = player:getVar("ABYSSEA_PREP_TIME_PREV");
	
	-- if(region == 1) then
        -- if (player:hasStatusEffect(EFFECT_PREPARATIONS) == true) then
			-- player:setVar("ABYSSEA_PREP_TIME",prevTime);
        -- end
	-- end	
end;

-----------------------------------	
-- onRegionLeave	
-----------------------------------	

function onRegionLeave(player,region)
	-- local preptime = player:getVar("ABYSSEA_PREP_TIME");
	
	-- if(region == 1) then
		-- if (player:hasStatusEffect(EFFECT_PREPARATIONS) == true) then
			-- player:setVar("ABYSSEA_PREP_TIME",10);
		-- end
	-- end
end;
	
-----------------------------------
-- CharZoneOut
-----------------------------------

function CharZoneOut(player)
	player:delStatusEffectSilent(EFFECT_PREPARATIONS);
	player:delStatusEffectSilent(EFFECT_VISITANT);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

end;



