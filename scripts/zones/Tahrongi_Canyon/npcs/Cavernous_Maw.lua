-----------------------------------
-- NPC: Cavernous Maw
-- @zone 117
-- 
-----------------------------------
package.loaded["scripts/zones/Tahrongi_Canyon/TextIDs"] = nil;
-------------------------------------
require("scripts/zones/Tahrongi_Canyon/TextIDs");
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
 -- cs 38 first time click on maw
 -- cs 39 firs time return from maw
 
    --local stone = TRAVERSER_STONE1;
	player:startEvent(100,1,1,1,1,1,1,1);
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
	if(csid == 100 and option == 1) then
		player:setPos(-23,44,-680,245,45);
	end
	
end;