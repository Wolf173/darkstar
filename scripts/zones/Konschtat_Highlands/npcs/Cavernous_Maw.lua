-----------------------------------
-- Area: Konschtat Highlands
-- NPC: Cavernous Maw
-- 
-- @zone 108
-- @pos 95.344, -69.080, -580.008
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    --local stone = TRAVERSER_STONE1;
	player:startEvent(0x006B,1,1,1,1,1,1,1);
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
	if(csid == 0x006B and option == 1) then
		player:setPos(153,-72,-837,142,15);
	end
	
end;