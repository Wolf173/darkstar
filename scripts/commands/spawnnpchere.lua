---------------------------------------------------------------------------------------------------
-- func: @spawnnpchere <mobId>
-- desc: Spawns an NPC by mob_spawn_pos and then moves it to the current position, if in same zone.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ii"
};

function onTrigger(player, mobId)
    local npc = GetNPCByID(mobId);
    local zone = player:getZone();
    GetNPCByID(17166784, 17166790);
end;