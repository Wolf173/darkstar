-----------------------------------
-- Area: Abyssea-Konschtat
-- NPC: Conflux Surveyor
-- 
-----------------------------------

package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
 -- player:startEvent(0x07D1,1,1,stone,0,0);
    local stone = TRAVERSER_STONE1;
    local power = 7200;
	
	if player:hasStatusEffect(EFFECT_VISITANT) then
	   player:delStatusEffectSilent(EFFECT_VISITANT);
	   player:showText(npc,7326);
	elseif player:hasKeyItem(stone) then
       player:setVar("Abysseatime",7200);
	   player:addStatusEffect(EFFECT_VISITANT,power,0,power); 
	   player:showText(npc,7324,0,stone,power,0,0,1);
	else
	   player:showText(npc,NO_STONE, stone);
    end
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

end;



