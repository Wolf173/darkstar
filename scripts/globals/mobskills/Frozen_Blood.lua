---------------------------------------------
--  Frozen Mist
--
--  Description: Deals heavy Ice damage to targets in area of effect. Additional effect: Terror
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Range: Unknown
--  Notes:
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_TERROR;
	local slot = math.random(0,8);
	MobStatusEffectMove(mob, target, typeEffect, 1, 0, 60);

	local dmgmod = 2;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_ICE,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	
	return dmg;
end;
