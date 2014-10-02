-----------------------------------
-----------------------------------
-- NPC: Sturdy Pyxis
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/textIDs");
package.loaded["scripts/globals/abyssea"] = nil;
package.loaded["scripts/globals/sturdypyxis"] = nil;
package.loaded["scripts/globals/pyxisloot"] = nil;
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/sturdypyxis");
require("scripts/globals/pyxisloot");
-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
	local LightPearl = player:getVar("LightPearl");
	local LightEbon = player:getVar("LightEbon");
	local LightGold = player:getVar("LightGold");
	local LightSilver = player:getVar("LightSilver");
	local LightAzure = player:getVar("LightAzure");
	local LightRuby = player:getVar("LightRuby");
	local LightAmber = player:getVar("LightAmber");
	local PyxisID = npc:getID();
	
----------------------------------------------
-- Trade Key + NPC ID
----------------------------------------------	
	
----------------------------------------------
-- Restore
----------------------------------------------
		
	if (PyxisID == 16839177) or (PyxisID == 16839178) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then -- Blue Restore/Buff
			player:tradeComplete();
			player:messageSpecial(7519,2490);
			npc:AnimationSub(5);
			
			playermaxMP = player:getMaxMP();
			playermaxHP = player:getMaxHP();
			player:addHP(playermaxHP);
			player:addMP(playermaxMP);
			player:resetRecasts();
			player:addTP(3000);
			
			GetNPCByID(PyxisID):showNPC(5);
	end		
----------------------------------------------
-- Cruor
----------------------------------------------
	
	if (PyxisID == 16839143) or (PyxisID == 16839144) or (PyxisID ==  16839145) or (PyxisID == 16839145) and  (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
			player:tradeComplete();
			player:messageSpecial(7519,2490);
			
		if (LightAzure < 50) then
			local tier1 = math.random(20,50);
			player:addCruor(tier1);
			player:messageSpecial(7465,tier1);		-- Crour
			
		elseif (LightAzure > 50 and LightAzure < 100) then
			local tier2 = math.random(50,80);
			player:addCruor(tier2);
			player:messageSpecial(7465,tier2);
			
		elseif (LightAzure > 100 and LightAzure < 150) then
			local tier3 = math.random(80,150);
			player:addCruor(tier3);
			player:messageSpecial(7465,tier3);
			
		elseif (LightAzure > 150 and LightAzure < 200) then
			local tier4 = math.random(150,300);
			player:addCruor(tier4);
			player:messageSpecial(7465,tier4);
			
		elseif (LightAzure > 200) then
			local tier4 = 1250;
			player:addCruor(tier4);
			player:messageSpecial(7465,tier4);	
		end
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
	end		
----------------------------------------------
-- Exp
----------------------------------------------	
	local ExpAmount = 0;
	
	if (PyxisID == 16839179) or (PyxisID == 16839180) or (PyxisID == 16839181) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then		
			
			player:tradeComplete();
			player:messageSpecial(7519,2490);
			
		if (LightAzure < 50) then
			ExpAmount = 250;
			return ExpAmount;
		elseif (LightAzure > 50) and (LightAzure < 100) then
			ExpAmount = math.random(300,400);
			return ExpAmount;
		elseif (LightAzure > 100) and (LightAzure < 150) then
			ExpAmount = math.random(400,600);
			return ExpAmount;
		elseif (LightAzure > 150) and (LightAzure < 200) then
			ExpAmount = math.random(600,800);
			return ExpAmount;
		elseif (LightAzure > 200) then
			ExpAmount = math.random(800,1250);
			return ExpAmount;
		end	
	end	
	npc:AnimationSub(5);
	GetNPCByID(PyxisID):showNPC(5);
	player:addExp(ExpAmount);
	
----------------------------------------------
-- Exp
----------------------------------------------		
	
	if (PyxisID == 16839138) or (PyxisID == 16839139) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:messageSpecial(VISITANT_EXTENDED,20,1,1);
        player:addVar("Abysseatime",1200);
	end
	
	
	
	
	
----------------------------------------------
-- Adding Lights
----------------------------------------------
	local lightamount = 0;
	-------------------
	--  pearl light
	-------------------
	if (PyxisID == 16839122) or (PyxisID == 16839129) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				lightamount = math.random(2,5);
				player:addVar("LightPearl",lightamount);
				player:messageSpecial(7467,0); 				
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				lightamount = math.random(5,11);
				player:addVar("LightPearl",lightamount);
				player:messageSpecial(7467,1);
				
			elseif (LightRuby > 200) then
				lightamount = math.random(11,20);
				player:addVar("LightPearl",lightamount);
				player:messageSpecial(7467,2);
			end
			
	-------------------
	--  gold light
	-------------------		
			
	elseif (PyxisID == 16839126) or (PyxisID == 16839133) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				lightamount = math.random(2,5);				
				player:addVar("LightGold",lightamount);
				player:messageSpecial(7468,0);
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				ightamount = math.random(5,11);	
				player:addVar("LightGold",lightamount);
				player:messageSpecial(7468,1);
				
			elseif (LightRuby > 200) then
				lightamount = math.random(11,20);	
				player:addVar("LightGold",lightamount);
				player:messageSpecial(7468,2);
			end
			
	-------------------
	-- silvery light
	-------------------			
			
	elseif (PyxisID == 16839127) or (PyxisID == 16839125) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				lightamount = math.random(2,5);	
				player:addVar("LightSilver",lightamount);
				player:messageSpecial(7469,0); 				
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				lightamount = math.random(5,11);				
				player:addVar("LightSilver",lightamount);
				player:messageSpecial(7469,1);
				
			elseif (LightRuby > 200) then
				lightamount = math.random(11,20);	
				player:addVar("LightSilver",lightamount);
				player:messageSpecial(7469,2);
			end	
			
	-------------------
	-- ebon light
	-------------------			
			
	elseif (PyxisID == 16839132) or (PyxisID == 16839130) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				local lightamount = math.random(2,5);	
				player:addVar("LightEbon",lightamount);
				player:messageSpecial(7470,0);				
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				local lightamount = math.random(5,11);	
				player:addVar("LightEbon",lightamount);
				player:messageSpecial(7470,1);
				
			elseif (LightRuby > 200) then
				local lightamount = math.random(11,20);	
				player:addVar("LightEbon",lightamount);
				player:messageSpecial(7470,2);
			end
			
	-------------------
	-- azure light
	-------------------			
			
	elseif (PyxisID == 16839123) or (PyxisID == 16839137) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				local lightamount = math.random(2,5);	
				player:addVar("LightAzure",lightamount);
				player:messageSpecial(7471,0);
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				local lightamount = math.random(5,11);	
				player:addVar("LightAzure",lightamount);
				player:messageSpecial(7471,1);
				
			elseif (LightRuby > 150 and LightRuby < 200) then
				local lightamount = math.random(11,20);	
				player:addVar("LightAzure",lightamount);
				player:messageSpecial(7471,2);
				
			elseif (LightRuby > 200) then
				local lightamount = math.random(20,30);	
				player:addVar("LightAzure",lightamount);
				player:messageSpecial(7471,3);
			end	
			
	-------------------
	-- ruby light
	-------------------			
			
	elseif (PyxisID == 16839124) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				local lightamount = math.random(2,5);	
				player:addVar("LightRuby",lightamount);
				player:messageSpecial(7472,0); 
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				local lightamount = math.random(5,11);	
				player:addVar("LightRuby",lightamount);
				player:messageSpecial(7472,1);
				
			elseif (LightRuby > 150 and LightRuby < 200) then
				local lightamount = math.random(11,20);	
				player:addVar("LightRuby",lightamount);
				player:messageSpecial(7472,2);
				
			elseif (LightRuby > 200) then
				local lightamount = math.random(20,30);	
				player:addVar("LightRuby",lightamount);
				player:messageSpecial(7472,3);
			end	
	
	-------------------
	-- amber light
	-------------------	
			
	elseif (PyxisID == 16839128) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
				player:tradeComplete();
				player:showText(player,7519,2490);
				npc:AnimationSub(5);
				GetNPCByID(PyxisID):showNPC(5);
				
			if (LightRuby < 50) then
				local lightamount = math.random(2,5);	
				player:addVar("LightAmber",lightamount);
				player:messageSpecial(7473,0); 	
				
			elseif (LightRuby > 50 and LightRuby < 150) then
				lightamount = math.random(5,11);	
				player:addVar("LightAmber",lightamount);
				player:messageSpecial(7473,1);
				
			elseif (LightRuby > 150 and LightRuby < 200) then
				lightamount = math.random(11,20);	
				player:addVar("LightAmber",lightamount);
				player:messageSpecial(7473,2);
				
			elseif (LightRuby > 200) then
				lightamount = math.random(20,30);	
				player:addVar("LightAmber",lightamount);
				player:messageSpecial(7473,3);
			end
	end
----------------------------------------------
-- Adding Temp Items
----------------------------------------------			

-- TempTier1 = {4206,5824,5827,5837};
-- TempTier2 = {5836,5832,5828,5825};
-- TempTier3 = {5849,5830,5850};
-- TempTier4 = {5851,5847,5831,5829,5834,4254,5393};

    
	
	if (PyxisID == 16839140) or (PyxisID == 16839141) or (PyxisID == 16839142) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:tradeComplete();
		player:showText(player,7519,2490);
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
		
		if (LightAzure < 50) then
			local TempItem = math.random(1,4);
			if (TempItem == 1) then
				player:addTempItem(4206);
				player:messageSpecial(7280,4206);
			elseif(TempItem == 2) then
				player:addTempItem(5824);
				player:messageSpecial(7280,5824);
			elseif(TempItem == 3) then
				player:addTempItem(5827);
				player:messageSpecial(7280,5827);
			elseif(TempItem == 4) then
				player:addTempItem(5837);
				player:messageSpecial(7280,5837);
			end
			
		elseif (LightAzure > 50 and LightAzure < 100) then
			local TempItem = math.random(1,4);
			if (TempItem == 1) then
				player:addTempItem(5836);
				player:messageSpecial(7280,5836);
			elseif(TempItem == 2) then
				player:addTempItem(5832);
				player:messageSpecial(7280,5832);
			elseif(TempItem == 3) then
				player:addTempItem(5828);
				player:messageSpecial(7280,5828);
			elseif(TempItem == 4) then
				player:addTempItem(5825);
				player:messageSpecial(7280,5825);
			end
			
		elseif (LightAzure > 100 and LightAzure < 150) then
			local TempItem = math.random(1,3);
			if (TempItem == 1) then
				player:addTempItem(5849);
				player:messageSpecial(7280,5849);
			elseif(TempItem == 2) then
				player:addTempItem(5830);
				player:messageSpecial(7280,5830);
			elseif(TempItem == 3) then
				player:addTempItem(5850);
				player:messageSpecial(7280,5850);
			end
			
		elseif (LightAzure > 200) then
			local TempItem = math.random(1,7);
			if (TempItem == 1) then
				player:addTempItem(5851);
				player:messageSpecial(7280,5851);
			elseif(TempItem == 2) then
				player:addTempItem(5847);
				player:messageSpecial(7280,5847);
			elseif(TempItem == 3) then
				player:addTempItem(5831);
				player:messageSpecial(7280,5831);
			elseif(TempItem == 4) then
				player:addTempItem(5829);
				player:messageSpecial(7280,5829);
			elseif(TempItem == 5) then
				player:addTempItem(5834);
				player:messageSpecial(7280,5834);
			elseif(TempItem == 6) then
				player:addTempItem(4254);
				player:messageSpecial(7280,4254);
			elseif(TempItem == 7) then
				player:addTempItem(5393);
				player:messageSpecial(7280,5393);	
			end
		end
	end	

----------------------------------------------
-- Items by Area
----------------------------------------------		
	
	local zone = player:getZone();

--[[----------------------------
	ABYSSEA_LA_THEINE  = 132; 
	ABYSSEA_KONSCHTAT  = 15;
	ABYSSEA_TAHRONGI   = 45;
	ABYSSEA_ATTOHWA    = 215;
	ABYSSEA_MISAREAUX  = 216;
	ABYSSEA_VUNKERL    = 217;
	ABYSSEA_ALTEPA	   = 218;
	ABYSSEA_ULEGUERAND = 253;
	ABYSSEA_GRAUBERG   = 254;
----------------------------]]--
	
	---------------------
	-- Give Tier 1 loot
	---------------------
	if (PyxisID == 16839113) or (PyxisID == 16839114) or (PyxisID == 16839115) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:tradeComplete();
		player:showText(player,7519,2490);
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
		local zone = player:getZone();
		local loot = PyxisLootTier1(zone,npc);
					
					
		if(loot[1]=="keyitem") then
			player:addKeyItem(loot[2]);
			player:messageSpecial(KEYITEM_OBTAINED,loot[2]);
		else
			-- Item
			player:addItem(loot[2]);
			player:messageSpecial(ITEM_OBTAINED,loot[2]);
		end
	end
	
	---------------------
	-- Give Tier 2 loot
	---------------------	
	
	if (PyxisID == 16839116) or (PyxisID == 16839117) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:tradeComplete();
		player:showText(player,7519,2490);
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
		local zone = player:getZone();
		local loot = PyxisLootTier1(zone,npc);
					
					
		if(loot[1]=="keyitem") then
			player:addKeyItem(loot[2]);
			player:messageSpecial(KEYITEM_OBTAINED,loot[2]);
		else
			-- Item
			player:addItem(loot[2]);
			player:messageSpecial(ITEM_OBTAINED,loot[2]);
		end
	end
	
	---------------------
	-- Give Tier 3 loot
	---------------------
	
	if (PyxisID == 16839118) or (PyxisID == 16839119) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:tradeComplete();
		player:showText(player,7519,2490);
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
		local zone = player:getZone();
		local loot = PyxisLootTier1(zone,npc);
					
					
		if(loot[1]=="keyitem") then
			player:addKeyItem(loot[2]);
			player:messageSpecial(KEYITEM_OBTAINED,loot[2]);
		else
			-- Item
			player:addItem(loot[2]);
			player:messageSpecial(ITEM_OBTAINED,loot[2]);
		end
	end
	
	---------------------
	-- Give Tier 4 loot
	---------------------
	
	if (PyxisID == 16839182) or
		(PyxisID == 16839183) or 
		(PyxisID == 16839184) or 
		(PyxisID == 16839185) or 
		(PyxisID == 16839186) or
		(PyxisID == 16839187) or
		(PyxisID == 16839188) or
		(PyxisID == 16839189) or
		(PyxisID == 16839190) or
		(PyxisID == 16839192) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
			player:tradeComplete();
			player:showText(player,7519,2490);
			npc:AnimationSub(5);
			GetNPCByID(PyxisID):showNPC(5);
			local zone = player:getZone();
			local loot = PyxisLootTier1(zone,npc);
					
					
			if(loot[1]=="keyitem") then
				player:addKeyItem(loot[2]);
				player:messageSpecial(KEYITEM_OBTAINED,loot[2]);
			else
			-- Item
				player:addItem(loot[2]);
				player:messageSpecial(ITEM_OBTAINED,loot[2]);
			end
	end

----------------------------------------------
-- Adding Time
----------------------------------------------			
			
	if (PyxisID == 16839138) or (PyxisID == 16839139) and (trade:hasItemQty(2490,1) and trade:getItemCount() == 1) then
		player:tradeComplete();
		player:showText(player,7519,2490);
		npc:AnimationSub(5);
		GetNPCByID(PyxisID):showNPC(5);
				
		local tick = player:getVar("Abysseatime");
		local TE = 200;
		player:setVar("Abysseatime",tick+TE);
		if (tick > 7201) then
			player:setVar("Abysseatime",7200);
		end
		player:messageSpecial(7296,200,1);
	end		
end;
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
    local LightPearl = player:getVar("LightPearl");
	local LightEbon = player:getVar("LightEbon");
	local LightGold = player:getVar("LightGold");
	local LightSilver = player:getVar("LightSilver");
	local LightAzure = player:getVar("LightAzure");
	local LightRuby = player:getVar("LightRuby");
	local LightAmber = player:getVar("LightAmber");
	local zone = player:getZone();
	local PyxisID = npc:getID();
	
	if (PyxisID == 16839122) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,0); 	--  pearl light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,0);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,0);
			end	
	elseif (PyxisID == 16839126) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,1); 	--  gold light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,1);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,1);
			end	
	elseif (PyxisID == 16839127) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,2); 	-- silvery light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,2);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,2);
			end	
	elseif (PyxisID == 16839132) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,3);  	-- ebon light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,3);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,3);
			end	
	elseif (PyxisID == 16839123) then
			if (LightRuby < 50) then
				player:messageSpecial(7495,0,0);  	-- azure light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7495,1,0);
			elseif (LightRuby > 150 and LightRuby < 200) then
				player:messageSpecial(7495,2,0);
			elseif (LightRuby > 200) then
				player:messageSpecial(7495,3,0);	
			end	
	elseif (PyxisID == 16839124) then
			if (LightRuby < 50) then
				player:messageSpecial(7495,0,1);  	-- ruby light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7495,1,1);
			elseif (LightRuby > 150 and LightRuby < 200) then
				player:messageSpecial(7495,2,1);
			elseif (LightRuby > 200) then
				player:messageSpecial(7495,3,1);	
			end	
	elseif (PyxisID == 16839128) then
			if (LightRuby < 50) then
				player:messageSpecial(7495,0,2);  	-- amber light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7495,1,2);
			elseif (LightRuby > 150 and LightRuby < 200) then
				player:messageSpecial(7495,2,2);
			elseif (LightRuby > 200) then
				player:messageSpecial(7495,3,2);	
			end	
	elseif (PyxisID == 16839129) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,0); 	--  pearl light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,0);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,0);
			end
	elseif (PyxisID == 16839133) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,1); 	--  gold light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,1);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,1);
			end	
	elseif (PyxisID == 16839125) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,2); 	-- silvery light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,2);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,2);
			end	
	elseif (PyxisID == 16839130) then
			if (LightRuby < 50) then
				player:messageSpecial(7493,0,3);  	-- ebon light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7493,1,3);
			elseif (LightRuby > 200) then
				player:messageSpecial(7493,2,3);
			end	
	elseif (PyxisID == 16839137) then
			if (LightRuby < 50) then
				player:messageSpecial(7495,0,0);  	-- azure light
			elseif (LightRuby > 50 and LightRuby < 150) then
				player:messageSpecial(7495,1,0);
			elseif (LightRuby > 150 and LightRuby < 200) then
				player:messageSpecial(7495,2,0);
			elseif (LightRuby > 200) then
				player:messageSpecial(7495,3,0);	
			end	
	elseif (PyxisID == 16839177) or (PyxisID == 16839178) then 	-- Blue Restore/Buff
				player:messageSpecial(7488,4);
	elseif (PyxisID == 16839143) or (PyxisID == 16839144) or (PyxisID == 16839145) then
			if (LightAzure < 50) then
				player:messageSpecial(7489,0); 		-- Crour
			elseif (LightAzure > 50 and LightAzure < 100) then
				player:messageSpecial(7489,1);
			elseif (LightAzure > 100 and LightAzure < 150) then
				player:messageSpecial(7489,2);
			elseif (LightAzure > 150 and LightAzure < 200) then
				player:messageSpecial(7489,3);
			elseif (LightAzure > 200) then
				player:messageSpecial(7489,4);	
			end	
	elseif (PyxisID == 16839179) or (PyxisID == 16839180) or (PyxisID == 16839181) then		
			if (LightAzure < 50) then
				player:messageSpecial(7490,0); 		-- EXP
			elseif (LightAzure > 50 and LightAzure < 100) then
				player:messageSpecial(7490,1);
			elseif (LightAzure > 100 and LightAzure < 150) then
				player:messageSpecial(7490,2);
			elseif (LightAzure > 150 and LightAzure < 200) then
				player:messageSpecial(7490,3);
			elseif (LightAzure > 200) then
				player:messageSpecial(7490,4);	
			end			
	elseif (PyxisID == 16839140) or (PyxisID == 16839141) or (PyxisID == 16839142) then		
				player:messageSpecial(7491); 		-- Temp Items		
	elseif (PyxisID == 16839138) or (PyxisID == 16839139) then		
				player:messageSpecial(7492); 		-- Time	
	elseif (PyxisID == 16839113) or (PyxisID == 16839114) or (PyxisID == 16839116) or (PyxisID == 16839117) then
				player:messageSpecial(7487,1);  		-- gold	items	
	elseif (PyxisID == 16839115)  or (PyxisID == 16839119) then
				player:messageSpecial(7487,3);  		-- gold	key items
	elseif (PyxisID == 16839120) or (PyxisID == 16839121) then
				player:messageSpecial(7487,2);  		-- gold	items
	elseif (PyxisID == 16839182) or (PyxisID == 16839183) or (PyxisID == 16839184) or (PyxisID == 16839185) then
				player:messageSpecial(7487,2);  		-- gold	items	
	elseif (PyxisID == 16839186) or (PyxisID == 16839187) then
				player:messageSpecial(7487,2);  		-- gold	items
	elseif (PyxisID == 16839188) or (PyxisID == 16839189) or (PyxisID == 16839190) or (PyxisID == 16839192) then
				player:messageSpecial(7487,3);  		-- gold	key items	
	end	
	-- print("startEvent")
    -- print("startEvent - CSID:",csid);
    -- print("startEvent - option ===",option);
end;
-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- print("onEventUpdate")
    -- print("onEventUpdate - CSID:",csid);
    -- print("onEventUpdate - option ===",option);
end;
-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,npc,csid,option)
    -- print("onEventFinish")
    -- print("onEventFinish - CSID:",csid);
    -- print("onEventFinish - option ===",option);
end;