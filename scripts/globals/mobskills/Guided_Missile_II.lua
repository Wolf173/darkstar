---------------------------------------------------
--  Guided_Missile
--
--  Description: ~475 magic damage, ignores Utsusemi
--  Type: Magical
--  
--  Range: 15 yalms
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
 local mobID = mob:getID();   --(16908294 ,16908301 ,16908308 =omega ,16933124=proto-omega)
 local mobhp = mob:getHPP();
   if (mobID == 16933124 and mobhp < 70 and mobhp > 30 )then -- proto-omega first bipedform
	  return 0;
   elseif ((mobID == 17813910 or mobID == 17813914 or mobID == 17813918)and mobhp < 10 and mobhp > 0) then  -- Pantokrator       
      return 0;  
   elseif ((mobID == 17813910 or mobID == 17813914 or mobID == 17813918)and mobhp < 45 and mobhp > 25) then  -- Pantokrator       
      return 0; 
   end
   return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end
