-----------------------------------
-- Area: Abyssea-Konschtat
-- NPC: Cruor Prospector
-- 
-----------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/common");
require("scripts/globals/missions");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
     
        player:startEvent(0x07D2,player:getCruor());
		print("onEventSelection")
        print("onEventSelection - CSID:",csid);
        print("onEventSelection - option ===",option);	
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- if (CSID == 0x07D2) then
	print("onEventSelection")
    print("onEventSelection - CSID:",csid);
    print("onEventSelection - option ===",option);
    
   -- end
   -- 552
   -- printf("CSID: %u",csid);
   -- printf("RESULT: %u",option);	
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)

    print("onEventSelection")
    print("onEventSelection - CSID:",csid);
    print("onEventSelection - option ===",option);
    local abysseaTime = player:getVar("Abysseatime");
    if (option >= 552) then
	    cost = 0;
	-------------------------------------------------
	-- Item Purchase
	-------------------------------------------------

		if(option == 65537) then
		   local item = 11503;
		   cost = 4000; 
	        if(player:getFreeSlotsCount() > 0) then
		       player:messageBasic(ITEM_CANNOT_BE_OBTAINED);
			else
			   player:messageSpecial(ITEM_OBTAINED,item);
	           player:addItem(item);
			end
	    end
    -------------------------------------------------
	-- Effect from Crour Purchase
	-------------------------------------------------
        local NO_VISITANT = 7358;
		if (player:hasStatusEffect(EFFECT_VISITANT) == false) then
		   return 0;
		else
	        if(option == 393220) then
		        cost = 50;
                local typeEffect = EFFECT_MAX_HP_BOOST;
				player:delStatusEffect(typeEffect);
                player:addStatusEffect(typeEffect,20,0,abysseaTime);
			elseif(option == 458756) then
				cost = 120;
				local typeEffect = EFFECT_MAX_MP_BOOST;
				player:delStatusEffect(typeEffect);
				player:addStatusEffect(typeEffect,10,0,abysseaTime);
			elseif(option == 524292) then
				cost = 100;
				local typeEffect1 = EFFECT_STR_BOOST;
				local typeEffect2 = EFFECT_DEX_BOOST;
				player:delStatusEffect(typeEffect1);
				player:addStatusEffect(typeEffect1,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect2);
				player:addStatusEffect(typeEffect2,10,0,abysseaTime);
			elseif(option == 589828) then
				cost = 100;
				local typeEffect1 = EFFECT_VIT_BOOST;
				local typeEffect2 = EFFECT_AGI_BOOST;
				player:delStatusEffect(typeEffect1);
				player:addStatusEffect(typeEffect1,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect2);
				player:addStatusEffect(typeEffect2,10,0,abysseaTime);
			elseif(option == 655364) then
				cost = 100;
				local typeEffect1 = EFFECT_INT_BOOST;
				local typeEffect2 = EFFECT_MND_BOOST;
				local typeEffect3 = EFFECT_CHR_BOOST;
				player:delStatusEffect(typeEffect1);
				player:addStatusEffect(typeEffect1,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect2);
				player:addStatusEffect(typeEffect2,10,0,abysseaTime);
				player:delStatusEffect(typeEffect3);
				player:addStatusEffect(typeEffect3,10,0,abysseaTime);
			elseif(option == 720900) then
				cost = 470;
				local typeEffect = EFFECT_MAX_HP_BOOST;
				local typeEffect1 = EFFECT_MAX_MP_BOOST;
				local typeEffect2 = EFFECT_INT_BOOST;
				local typeEffect3 = EFFECT_MND_BOOST;
				local typeEffect4 = EFFECT_CHR_BOOST;
				local typeEffect5 = EFFECT_STR_BOOST;
				local typeEffect6 = EFFECT_DEX_BOOST;
				local typeEffect7 = EFFECT_VIT_BOOST;
				local typeEffect8 = EFFECT_AGI_BOOST;
				player:delStatusEffect(typeEffect);
				player:addStatusEffect(typeEffect,20,0,abysseaTime);
				player:delStatusEffect(typeEffect1);
				player:addStatusEffect(typeEffect1,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect2);
				player:addStatusEffect(typeEffect2,10,0,abysseaTime);
				player:delStatusEffect(typeEffect3);
				player:addStatusEffect(typeEffect3,10,0,abysseaTime);
				player:delStatusEffect(typeEffect4);
				player:addStatusEffect(typeEffect4,10,0,abysseaTime);
				player:delStatusEffect(typeEffect5);
				player:addStatusEffect(typeEffect5,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect6);
				player:addStatusEffect(typeEffect6,10,0,abysseaTime);
				player:delStatusEffect(typeEffect7);
				player:addStatusEffect(typeEffect7,10,0,abysseaTime);   
				player:delStatusEffect(typeEffect8);
				player:addStatusEffect(typeEffect8,10,0,abysseaTime);
			end
		end
	    player:delCruor(cost);	
    end
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;


