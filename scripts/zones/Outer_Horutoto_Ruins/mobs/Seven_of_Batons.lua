-----------------------------------
-- Area: Outer Horutoto
-- MOB:  Seven of Batons
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
   checkGoVregime(killer,mob,666,2);
end;