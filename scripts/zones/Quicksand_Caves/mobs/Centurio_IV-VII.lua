-----------------------------------
-- Area: Quicksand Caves
--  MOB: Centurio IV-VII
-- Pops in Bastok mission 8-1 "The Chains that Bind Us"
-----------------------------------
package.loaded["scripts/zones/Quicksand_Caves/MobIDs"] = nil;
-----------------------------------
require("scripts/zones/Quicksand_Caves/MobIDs");

function onMobDisengage(mob)
    DespawnMob(mob:getID(), 120);
end;

function onMobDeath(mob, player, isKiller)
    if (isKiller and GetMobByID(TRIARIUS_IV_XIV):isDead() and GetMobByID(PRINCEPS_IV_XLV):isDead()) then
        GetNPCByID(QM6):setLocalVar("cooldown", os.time() + 300);
    end
end;
