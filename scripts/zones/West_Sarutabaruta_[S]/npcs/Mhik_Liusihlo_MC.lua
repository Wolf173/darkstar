-----------------------------------
-- Mhik Liusihlo MC
-- 
-- @pos
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/globals/teleports");
require("scripts/globals/campaign");
require("scripts/zones/West_Sarutabaruta_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	local zone = 95;
	SpawnMob(17166541,95);
	-- SpawnMob(17166785);
	-- SpawnMob(17166786);
	-- SpawnMob(17166787);
	-- SpawnMob(17166788);
	-- SpawnMob(17166789);
	-- SpawnMob(17166790);
   
    
	-- GetNPCByID(17166784);
	-- GetNPCByID(17166785);
	-- GetNPCByID(17166786);
	-- GetNPCByID(17166787);
	-- GetNPCByID(17166788);
	-- GetNPCByID(17166789);
	-- GetNPCByID(17166790);
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;
   
-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;