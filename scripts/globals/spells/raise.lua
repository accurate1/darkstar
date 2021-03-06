-----------------------------------------
-- Spell: Raise
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    if (target:isPC()) then
        target:sendRaise(1);
    else
        if (target:getName() == "Prishe") then
            -- CoP 8-4 Prishe
            target:setLocalVar("Raise", 1);
        end
    end
    spell:setMsg(309);

    return 1;
end;
