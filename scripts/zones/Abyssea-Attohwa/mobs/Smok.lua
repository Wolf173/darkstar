-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Smok
-----------------------------------

-- require("scripts/zones/Abyssea-Attohwa/MobIDs");

package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/zones/Abyssea-Attohwa/MobIDs");
require("scripts/zones/Abyssea-Attohwa/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)	
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_MACC,500);
	mob:addMod(MOD_MEVA,100);
	mob:addMod(MOD_DOUBLE_ATTACK,15);
	mob:addMod(MOD_REGAIN,33);	
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)	
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
	
    if (mob:hasStatusEffect(EFFECT_BLOOD_WEAPON) == false and mob:actionQueueEmpty() == true) then
        local changeTime, twohourTime = mob:getExtraVar(2);

        if (twohourTime == 0) then
            twohourTime = math.random(8, 14);
            mob:setExtraVar(changeTime, twohourTime);
        end
        
        if (mob:AnimationSub() == 2 and mob:getBattleTime()/15 > twohourTime) then
            mob:useMobAbility(439);
            mob:setExtraVar(changeTime, (mob:getBattleTime()/15)+20);
        elseif(mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > 60) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            mob:SetMobSkillAttack(true);
            --and record the time this phase was started
            mob:setExtraVar(mob:getBattleTime(), twohourTime);
        -- subanimation 1 is flight, so check if he should land
        elseif(mob:AnimationSub() == 1 and 
                mob:getBattleTime() - changeTime > 30) then
            mob:useMobAbility(1036);
            mob:setExtraVar(mob:getBattleTime(), twohourTime);
        -- subanimation 2 is grounded mode, so check if he should take off
        elseif(mob:AnimationSub() == 2 and 
                mob:getBattleTime() - changeTime > 60) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            mob:SetMobSkillAttack(true);
            mob:setExtraVar(mob:getBattleTime(), twohourTime);
        end
	end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)	
end;

