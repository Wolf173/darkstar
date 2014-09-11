-----------------------------------
-- Area: Abyssea-Konschtat
-- NPC: Atma Infusionist
-- Atma Infusionist
-----------------------------------

package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/atma");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- if (trade:gil(100) and trade:getItemCount() == 1) then
	    -- player:addStatusEffect(EFFECT_ATMA,0,9000);
	-- end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local cruor = 100;
	if (player:hasStatusEffect(EFFECT_VISITANT) == false) then
	    player:showText(npc,7405);
	
    elseif player:hasStatusEffect(EFFECT_REGEN) then
	    player:delStatusEffect(EFFECT_REGEN);
		player:delStatusEffect(EFFECT_REGAIN);
		player:delStatusEffect(EFFECT_REFRESH);
		player:delStatusEffect(EFFECT_MAX_HP_BOOST);
		player:showText(npc,7403);
	else
	    local HP = player:getMaxHP();
		local MP = player:getMaxMP();
	    player:addStatusEffectEx(EFFECT_REGAIN,EFFECT_ATMA,5,0,3600);
	    player:addStatusEffectEx(EFFECT_REGEN,EFFECT_ATMA,10,0,3600);
		player:addStatusEffectEx(EFFECT_REFRESH,EFFECT_ATMA,10,0,3600);
		player:addStatusEffectEx(EFFECT_MAX_HP_BOOST,EFFECT_ATMA,100,0,3600);
		player:restoreHP(HP);
		player:restoreMP(MP);
		player:showText(npc,7416,cruor);
        player:delCruor(100);		
	end    
    
-- local list = {
           -- ATMA_OF_THE_LION, ATMA_OF_THE_STOUT_ARM, ATMA_OF_THE_TWIN_CLAW, ATMA_OF_ALLURE, ATMA_OF_ETERNITY,
           -- ATMA_OF_THE_HEAVENS, ATMA_OF_THE_BAYING_MOON, ATMA_OF_THE_EBON_HOOF, ATMA_OF_TREMORS, ATMA_OF_THE_SAVAGE_TIGER,
           -- ATMA_OF_THE_VORACIOUS_VIOLET, ATMA_OF_CLOAK_AND_DAGGER, ATMA_OF_THE_STORMBIRD, ATMA_OF_THE_NOXIOUS_FANG, ATMA_OF_VICISSITUDE,
           -- ATMA_OF_THE_BEYOND, ATMA_OF_STORMBREATH, ATMA_OF_GALES, ATMA_OF_THRASHING_TENDRILS, ATMA_OF_THE_DRIFTER,
           -- ATMA_OF_THE_STRONGHOLD, ATMA_OF_THE_HARVESTER, ATMA_OF_DUNES, ATMA_OF_THE_COSMOS, ATMA_OF_THE_SIREN_SHADOW,
           -- ATMA_OF_THE_IMPALER, ATMA_OF_THE_ADAMANTINE, ATMA_OF_CALAMITY, ATMA_OF_THE_CLAW, ATMA_OF_BALEFUL_BONES,
           -- ATMA_OF_THE_CLAWED_BUTTERFLY, ATMA_OF_THE_DESERT_WORM, ATMA_OF_THE_UNDYING, ATMA_OF_THE_IMPREGNABLE_TOWER,
           -- ATMA_OF_THE_SMOLDERING_SKY, ATMA_OF_THE_DEMONIC_SKEWER, ATMA_OF_THE_GOLDEN_CLAW, ATMA_OF_THE_GLUTINOUS_OOZE,
           -- ATMA_OF_THE_LIGHTNING_BEAST, ATMA_OF_THE_NOXIOUS_BLOOM, ATMA_OF_THE_GNARLED_HORN, ATMA_OF_THE_STRANGLING_WIND, 
		   -- ATMA_OF_THE_DEEP_DEVOURER, ATMA_OF_THE_MOUNTED_CHAMPION, ATMA_OF_THE_RAZED_RUINS, ATMA_OF_THE_BLUDGEONING_BRUTE,
           -- ATMA_OF_THE_RAPID_REPTILIAN, ATMA_OF_THE_WINGED_ENIGMA, ATMA_OF_THE_CRADLE, ATMA_OF_THE_UNTOUCHED,
           -- ATMA_OF_THE_SANGUINE_SCYTHE, ATMA_OF_THE_TUSKED_TERROR, ATMA_OF_THE_MINIKIN_MONSTROSITY, ATMA_OF_THE_WOULD_BE_KING,
           -- ATMA_OF_THE_BLINDING_HORN, ATMA_OF_THE_DEMONIC_LASH, ATMA_OF_APPARITIONS, ATMA_OF_THE_SHIMMERING_SHELL,
           -- ATMA_OF_THE_MURKY_MIASMA, ATMA_OF_THE_AVARICIOUS_APE, ATMA_OF_THE_MERCILESS_MATRIARCH, ATMA_OF_THE_BROTHER_WOLF,
           -- ATMA_OF_THE_EARTH_WYRM, ATMA_OF_THE_ASCENDING_ONE, ATMA_OF_THE_SCORPION_QUEEN, ATMA_OF_A_THOUSAND_NEEDLES,
           -- ATMA_OF_THE_BURNING_EFFIGY, ATMA_OF_THE_SMITING_BLOW, ATMA_OF_THE_LONE_WOLF, ATMA_OF_THE_CRIMSON_SCALE,
           -- ATMA_OF_THE_SCARLET_WING, ATMA_OF_THE_RAISED_TAIL, ATMA_OF_THE_SAND_EMPEROR, ATMA_OF_THE_OMNIPOTENT,
           -- ATMA_OF_THE_WAR_LION, ATMA_OF_THE_FROZEN_FETTERS, ATMA_OF_THE_PLAGUEBRINGER, ATMA_OF_THE_SHRIEKING_ONE,
           -- ATMA_OF_THE_HOLY_MOUNTAIN, ATMA_OF_THE_LAKE_LURKER, ATMA_OF_THE_CRUSHING_CUDGEL, ATMA_OF_PURGATORY,
           -- ATMA_OF_BLIGHTED_BREATH, ATMA_OF_THE_PERSISTENT_PREDATOR, ATMA_OF_THE_STONE_GOD, ATMA_OF_THE_SUN_EATER,
           -- ATMA_OF_THE_DESPOT, ATMA_OF_THE_SOLITARY_ONE, ATMA_OF_THE_WINGED_GLOOM, ATMA_OF_THE_SEA_DAUGHTER,
           -- ATMA_OF_THE_HATEFUL_STREAM, ATMA_OF_THE_FOE_FLAYER, ATMA_OF_THE_ENDLESS_NIGHTMARE, ATMA_OF_THE_SUNDERING_SLASH,
           -- ATMA_OF_ENTWINED_SERPENTS, ATMA_OF_THE_HORNED_BEAST, ATMA_OF_AQUATIC_ARDOR, ATMA_OF_THE_FALLEN_ONE,
           -- ATMA_OF_FIRES_AND_FLARES, ATMA_OF_THE_APOCALYPSE
		   -- };
-- local atma = {1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,
             -- 1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,
             -- 1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,
             -- 1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,
             -- 1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,
             -- 1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378};

    --local getluna = player:hasKeyItem(1439);
	--local Has_Atma_Set = 1;
	--local No_Atma_Set = 0;
	--local atma = player:hasKeyItem();	
	--player:startEvent(0x07D3,1,1,1,1,1,1,1,1);
	---printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
end;    

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    --local atma1 = player:getVar("atma1");
	--local atma2 = player:getVar("atma2");
	--local atma3 = player:getVar("atma3");
	--local key = player:hasKeyItem(atma);
	--if (CSID == 0x7D3 and option == 2) then
	--player:updateEvent(0,atma1,atma2,atma3)
	--end
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    --if (CSID == 0x0228 and option == 3) then
	   -- player:setVar("atma1",0);
		--player:setVar("atma2",0);
	   -- player:setVar("atma3",0);
	--end	
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



