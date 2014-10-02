-----------------------------------
-- Area: Abyssea-Konschtat
-- NPC: Conflux Surveyor
-- 
-----------------------------------

package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/utils");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	local visitant = 0;
    local prevtime = player:getVar("Abysseatime");
    local stones = 0; -- Number of Traverser Stone KeyItems player currently has
    local sojourn = 0;
	
    if(player:hasStatusEffect(EFFECT_VISITANT)) then
        visitant = 60;
    end

    if(player:hasKeyItem(TRAVERSER_STONE1)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(TRAVERSER_STONE2)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(TRAVERSER_STONE3)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(TRAVERSER_STONE4)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(TRAVERSER_STONE5)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(TRAVERSER_STONE6)) then
        stones = stones + 1;
    end

    if(player:hasKeyItem(IVORY_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end

    if(player:hasKeyItem(SCARLET_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end

    if(player:hasKeyItem(JADE_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end

    if(player:hasKeyItem(SAPPHIRE_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end

    if(player:hasKeyItem(INDIGO_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end

    if(player:hasKeyItem(EMERALD_ABYSSITE_OF_SOJOURN)) then
        sojourn = sojourn + 1;
    end
	
	
	
	
	
	player:startEvent(0x07D1,0,visitant,prevtime,stones,sojourn,0,0,0);
		
	
	-- print("onEventSelection")
    -- print("onEventSelection - CSID:",csid);
    -- print("onEventSelection - option ===",option);	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- print("onEventSelection")
    -- print("onEventSelection - CSID:",csid);
    -- print("onEventSelection - option ===",option);
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)

	local duration = 0;
    local prevtime = player:getVar("Abysseatime"); -- Gets reduced by Visitants "on tic".
    local spentstones = 0; -- Number of Traverser Stone KeyItem to remove from player.

	if(prevtime > 7200) then
		prevtime = 7200;
		duration = prevtime;
	else
		duration = prevtime;
	end

	if(player:hasKeyItem(IVORY_ABYSSITE_OF_SOJOURN)) then
		duration = duration + 180;
	end
	
	if(player:hasKeyItem(SCARLET_ABYSSITE_OF_SOJOURN)) then
			duration = duration + 180;
	end	
    
	if(player:hasKeyItem(JADE_ABYSSITE_OF_SOJOURN)) then
		duration = duration + 180;
	end
	
	if(player:hasKeyItem(SAPPHIRE_ABYSSITE_OF_SOJOURN)) then
		duration = duration + 180;
	end
	
	if(player:hasKeyItem(INDIGO_ABYSSITE_OF_SOJOURN)) then
		duration = duration + 180;
	end
	
	if(player:hasKeyItem(EMERALD_ABYSSITE_OF_SOJOURN)) then
		duration = duration + 180;
	end
		
	if(csid == 0x07D1) then
	local overtime = player:getVar("Abysseatime");

		if(option == 2) then -- Use no stones, use previous remaining time
				player:addStatusEffect(EFFECT_VISITANT,0,0,duration);
				player:messageSpecial(TIME_SET_OR_EXTENDED,0,TRAVERSER_STONE1,(duration/60));
				player:setVar("NO_VISITANT",0);
				player:setVar("Abysseatime",prevtime);
			
		elseif(option == 65538) then -- Use 1 stone
				duration = (duration+1800);
				player:addStatusEffect(EFFECT_VISITANT,0,0,duration);
				player:messageSpecial(TIME_SET_OR_EXTENDED,1,TRAVERSER_STONE1,(duration/60));
				player:setVar("NO_VISITANT",0);
				player:setVar("Abysseatime",duration);
				spentstones = 1;

		elseif(option == 131074) then -- Use 2 stone
				duration = (duration+3600);
				player:addStatusEffect(EFFECT_VISITANT,0,0,duration);
				player:messageSpecial(TIME_SET_OR_EXTENDED,2,TRAVERSER_STONE1,(duration/60));
				player:setVar("NO_VISITANT",0);
				player:setVar("Abysseatime",duration);
				spentstones = 2;
            
		elseif(option == 196610) then -- Use 3 stone
				duration = (duration+5400);
				player:addStatusEffect(EFFECT_VISITANT,0,0,duration);
				player:messageSpecial(TIME_SET_OR_EXTENDED,3,TRAVERSER_STONE1,(duration/60));
				player:setVar("Abysseatime",duration);
				spentstones = 3;

		elseif(option == 262146) then -- Use 4 stone
				duration = (duration+7200);
				player:addStatusEffect(EFFECT_VISITANT,0,0,duration);
				player:messageSpecial(TIME_SET_OR_EXTENDED,4,TRAVERSER_STONE1,(duration/60));
				player:setVar("Abysseatime",duration);
				spentstones = 4;
			
		elseif(option == 65539) then -- Use 1 stone Extend
				if (duration > 7200) then
					duration = prevtime;
				else
					duration = (duration+1800);
				end
				player:messageSpecial(VISITANT_EXTENDED,30,prevtime);
				player:setVar("Abysseatime",duration);
				spentstones = 1;
				
		elseif(option == 131075) then -- Use 2 stone Extend
				if (duration > 7200) then
					duration = prevtime;
				else
					duration = (duration+3600);
				end
				player:messageSpecial(VISITANT_EXTENDED,60,prevtime);
				player:setVar("Abysseatime",duration);
				spentstones = 2;	

		elseif(option == 196611) then -- Use 3 stone Extend
				if (duration > 7200) then
					duration = prevtime;
				else
					duration = (duration+5400);
				end
				player:messageSpecial(VISITANT_EXTENDED,90,prevtime);
				player:setVar("Abysseatime",duration);
				spentstones = 3;		
		end
	end
		

	if(spentstones == 4) then
		if(player:hasKeyItem(TRAVERSER_STONE6)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE6);
		elseif(player:hasKeyItem(TRAVERSER_STONE5)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE5);
		elseif(player:hasKeyItem(TRAVERSER_STONE4)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE4);
		elseif(player:hasKeyItem(TRAVERSER_STONE3)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE3);
		elseif(player:hasKeyItem(TRAVERSER_STONE2)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE2);
		elseif(player:hasKeyItem(TRAVERSER_STONE1)) then
			spentstones = 3;
			player:delKeyItem(TRAVERSER_STONE1);
		end
	end
	if(spentstones == 3) then
		if(player:hasKeyItem(TRAVERSER_STONE6)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE6);
		elseif(player:hasKeyItem(TRAVERSER_STONE5)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE5);
		elseif(player:hasKeyItem(TRAVERSER_STONE4)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE4);
		elseif(player:hasKeyItem(TRAVERSER_STONE3)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE3);
		elseif(player:hasKeyItem(TRAVERSER_STONE2)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE2);
		elseif(player:hasKeyItem(TRAVERSER_STONE1)) then
			spentstones = 2;
			player:delKeyItem(TRAVERSER_STONE1);
		end
	end

    if(spentstones == 2) then
        if(player:hasKeyItem(TRAVERSER_STONE6)) then
           spentstones = 1;
           player:delKeyItem(TRAVERSER_STONE6);
        elseif(player:hasKeyItem(TRAVERSER_STONE5)) then
            spentstones = 1;
            player:delKeyItem(TRAVERSER_STONE5);
        elseif(player:hasKeyItem(TRAVERSER_STONE4)) then
            spentstones = 1;
            player:delKeyItem(TRAVERSER_STONE4);
        elseif(player:hasKeyItem(TRAVERSER_STONE3)) then
            spentstones = 1;
			player:delKeyItem(TRAVERSER_STONE3);
        elseif(player:hasKeyItem(TRAVERSER_STONE2)) then
            spentstones = 1;
            player:delKeyItem(TRAVERSER_STONE2);
        elseif(player:hasKeyItem(TRAVERSER_STONE1)) then
            spentstones = 1;
            player:delKeyItem(TRAVERSER_STONE1);
        end
    end

    if(spentstones == 1) then
        if(player:hasKeyItem(TRAVERSER_STONE6)) then
			player:delKeyItem(TRAVERSER_STONE6);
        elseif(player:hasKeyItem(TRAVERSER_STONE5)) then
			player:delKeyItem(TRAVERSER_STONE5);
        elseif(player:hasKeyItem(TRAVERSER_STONE4)) then
			player:delKeyItem(TRAVERSER_STONE4);
        elseif(player:hasKeyItem(TRAVERSER_STONE3)) then
			player:delKeyItem(TRAVERSER_STONE3);
            elseif(player:hasKeyItem(TRAVERSER_STONE2)) then
			player:delKeyItem(TRAVERSER_STONE2);
        elseif(player:hasKeyItem(TRAVERSER_STONE1)) then
			player:delKeyItem(TRAVERSER_STONE1);
        end
    end
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
	-- print("onEventSelection")
    -- print("onEventSelection - CSID:",csid);
    -- print("onEventSelection - option ===",option);
end;