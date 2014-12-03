---------------------------------------------
--  Tortoise Stomp
--
--  Description: Single target Defense Down effect.
--  Type: Physical
--  Utsusemi/Blink absorb:&nbsp;??
--  Range: Varying Area of Effect
--  Notes:
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 1;
	local dmgmod = 2.8;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    local typeEffect = EFFECT_STUN;
    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 30, 0, 60);

	target:delHP(dmg);
	return dmg;
end;
