-----------------------------------
-- Area: Port Jeuno
-- NPC: Joachim
-- Abyssea starter
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Port_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	if(player:getQuestStatus(ABYSSEA,A_JOURNEY_BEGINS) == QUEST_ACCEPTED) then
	   player:startEvent (355);	   
	end   
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
	
	if (csid == 355) then
		player:addKeyItem(1271);
		player:messageSpecial(KEYITEM_OBTAINED,1271);
	end			
end;