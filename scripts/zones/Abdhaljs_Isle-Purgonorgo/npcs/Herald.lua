-----------------------------------
--  Area: Abdhaljs Isle-Purgonorgo
--   NPC: Pursuivant
--  Type: Warp
-- @zone: 44
--  @pos 516.223 -3.038 545.258
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
	player:startEvent(0x000C);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
	if (csid == 0x000C and option == 1) then
		player:setPVPFlag(0,1);
		--player:addTempItem(4146);
		--player:addTempItem(5831);
		--player:addStatusEffectEx(EFFECT_RERAISE,EFFECT_RERAISE,3,0,1800);
		--player:addStatusEffect(EFFECT_CONFRONTATION);
	end
end;