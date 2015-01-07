-----------------------------------
-- Area: Tahrongi Canyon
-- NPC: Cavernous Maw
-- Teleports Players to Abyssea - Tahrongi
-- @pos -28 45 -684 117
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Abyssea-Tahrongi/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (ENABLE_ABYSEA == 1 and player:getMainLvl() >= 30) then
        local HasStone = getTravStonesTotal(player);
        if (HasStone >= 1 and player:getQuestStatus(ABYSSEA, DAWN_OF_DEATH) == QUEST_ACCEPTED
        and player:getQuestStatus(ABYSSEA, MEGADRILE_MENACE) == QUEST_AVAILABLE) then
            player:startEvent(0x0000);
        else
            player:startEvent(0x0064,0,1); -- No param = no entry.
        end
    else
        player:messageSpecial(NOTHING_HAPPENS);
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
    if (csid == 0) then
        player:addQuest(ABYSSEA, MEGADRILE_MENACE);
    elseif (csid ==1) then
        -- Killed Kukulkan
    elseif(csid == 0x0064 and option == 1) then
        player:setPos(-24,44,-678,240,45);
    end
end;