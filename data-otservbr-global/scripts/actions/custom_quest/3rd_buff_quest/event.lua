local receiveBakragoreOutfit = CreatureEvent("3BuffHeal")

function receiveBakragoreOutfit.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
    local targetMonster = creature:getMonster()
    if not targetMonster then
        return true
    end
    for cid, damage in pairs(creature:getDamageMap()) do
        local participant = Player(cid)
        if participant and participant:isPlayer() then
            if participant:getStorageValue(35656514) <= 2 then
                participant:setStorageValue(35656514, 3)
                participant:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
            end
        end
    end
end

receiveBakragoreOutfit:register()
