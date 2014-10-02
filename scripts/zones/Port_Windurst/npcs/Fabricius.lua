-----------------------------------
--	Area: Port Windurst
--	NPC: Fabricius
--	Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Port_Windurst/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------
-- 0 = ok to give, 1 = maxed out stones, 2= no charged stones.
function onTrigger(player,npc)
	local addStone = player:addTstone(1);
	local NPCStoneStock = 0;
	local TimeTillNextStone = player:VanadielMinute();
	
	if (player:getVar("Tstone") == 1) then
		OnGameDayAutomatisation(addStone);
		NPCStoneStock = player:getTstone();
		if player (NPCStoneStock = 0) then
			player:startEvent(0x036A,0,NPCStoneStock,4,2,TimeTillNextStone,1271);
			
	else
		NPCStoneStock = 0;
	end
	player:startEvent(0x036A,0,NPCStoneStock,4,StonesReadyOrNot,1700,1271);
	
end;
-- ([CSID],[0][npc stone stock amount],[players current stone amount keyitem count],[stones ready or not ready],[time till next stone);

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	print("onEventSelection")
    print("onEventSelection - CSID:",csid);
    print("onEventSelection - option ===",option);
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	print("onEventFinish")
    print("onEventFinish - CSID:",csid);
    print("onEventFinish - option ===",option);
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;
