---------------------------------------------
--  Polar Blast
--
--  Description: Deals Ice damage to enemies within a fan-shaped area. Additional effect: Paralyze 
--  Type: Breath
--  Ignores Shadows
--  Range: Unknown Cone
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
   if (mob:AnimationSub() <= 1) then
      return 0;
   else
      return 1;
   end
end;

function OnMobWeaponSkill(target, mob, skill)

   local dmgmod = MobBreathMove(mob, target, 0.01, 0.1, ELE_ICE, 1200);
	local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_ICE,MOBPARAM_IGNORE_SHADOWS);

   MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 15, 0, 60);

	target:delHP(dmg);
	return dmg;
end;
