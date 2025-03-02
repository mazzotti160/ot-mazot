local receiveBakragoreOutfit = CreatureEvent("BossRoomReward")


function receiveBakragoreOutfit.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
    local targetMonster = creature:getMonster()
    if not targetMonster then
        return true
    end
    for cid, damage in pairs(creature:getDamageMap()) do
        local participant = Player(cid)
        if participant and participant:isPlayer() then
            if participant:getStorageValue(5548996370265) ~= 1 then
                participant:setStorageValue(5548996370265, 1)
                participant:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
				participant:say("You earned the right the open the Raid Chest! GOOD LUCK!", TALKTYPE_MONSTER_SAY)
            end
        end
    end
end

receiveBakragoreOutfit:register()
