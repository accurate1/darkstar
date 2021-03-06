-----------------------------------
-- Area: Yughott Grotto (142)
--  MOB: Orcish_Grunt
-----------------------------------

require("scripts/zones/Yughott_Grotto/MobIDs");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    local mobID = mob:getID();
    if (Ashmaker_Gotblut_PH[mobID] ~= nil) then

        local ToD = GetServerVariable("[POP]Ashmaker_Gotblut");
        if (ToD <= os.time() and GetMobAction(Ashmaker_Gotblut) == 0) then
            if (math.random(1,20) == 5) then
                UpdateNMSpawnPoint(Ashmaker_Gotblut);
                GetMobByID(Ashmaker_Gotblut):setRespawnTime(GetMobRespawnTime(mobID));
                SetServerVariable("[PH]Ashmaker_Gotblut", mobID);
                DisallowRespawn(mobID, true);
            end
        end
    end

end;

