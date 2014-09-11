---------------------------------------------------------------------------------------------------
-- func: setflag
-- auth: Link
-- desc: Sets the target players level.
---------------------------------------------------------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
cmdprops =
{
    permission = 1,
    parameters = "si"
};

function onTrigger(player, allegiance)
    local allegiance = player:getAllegiance();
    if (player:getAllegiance() == 1) then
        player:setFlag(0x0100);
	  -- player:setNation(0);
    end	  
	print ("allegiance");
    print ("allegiance", allegiance);
   -- player:allegiance(0x0009);
end

-- function getAllegiance(player, allegiance)
    -- local allegiance = player:getAllegiance();
    -- --player:allegiance(0x0009);
	-- return print allegiance;
-- end