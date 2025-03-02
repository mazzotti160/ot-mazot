local potionsModal = CreatureEvent("MountDoll")

-- Tabela de mounts
local mounts = {
    [1] = {name = "Widow Queen", id = 1},
    [2] = {name = "Racing Bird", id = 2},
    [3] = {name = "War Bear", id = 3},
    [4] = {name = "Black Sheep", id = 4},
    [5] = {name = "Midnight Panther", id = 5},
    [6] = {name = "Draptor", id = 6},
    [7] = {name = "Titanica", id = 7},
    [8] = {name = "Tin Lizzard", id = 8},
    [9] = {name = "Rapid Boar", id = 10},
    [10] = {name = "Undead Cavebear", id = 12},
    [11] = {name = "Donkey", id = 13},
    [12] = {name = "Tiger Slug", id = 14},
    [13] = {name = "Uniwheel", id = 15},
    [14] = {name = "Crystal Wolf", id = 16},
    [15] = {name = "War Horse", id = 17},
    [16] = {name = "Kingly Deer", id = 18},
    [17] = {name = "Tamed Panda", id = 19},
    [18] = {name = "Dromedary", id = 20},
    [19] = {name = "Scorpion King", id = 21},
    [20] = {name = "Lady Bug", id = 27},
    [21] = {name = "Manta Ray", id = 28},
    [22] = {name = "Ironblight", id = 29},
    [23] = {name = "Magma Crawler", id = 30},
    [24] = {name = "Dragonling", id = 31},
    [25] = {name = "Gnarlhound", id = 32},
    [26] = {name = "Water Buffalo", id = 35},
    [27] = {name = "Ursagrodon", id = 38},
    [28] = {name = "The Hellgrip", id = 39},
    [29] = {name = "Noble Lion", id = 40},
    [30] = {name = "Shock Head", id = 42},
    [31] = {name = "Walker", id = 43},
    [32] = {name = "Neon Sparkid", id = 98},
    [33] = {name = "Vortexion", id = 99},
    [34] = {name = "Stone Rhino", id = 106},
    [35] = {name = "Mole", id = 119},
    [36] = {name = "Fleeting Knowledge", id = 126},
    [37] = {name = "Lacewing Moth", id = 130},
    [38] = {name = "Hibernal Moth", id = 131},
    [39] = {name = "Gryphon", id = 144},
    [40] = {name = "Haze", id = 162},
    [41] = {name = "Phantasmal Jade", id = 167},
    [42] = {name = "White Lion", id = 174},
    [43] = {name = "Shellodon", id = 183},
    [44] = {name = "Singeing Steed", id = 184},
    [45] = {name = "Spirit of Purity", id = 217},
    [46] = {name = "Foxmouse", id = 218},
    [47] = {name = "Pegasus", id = 227},
}

function potionsModal.onModalWindow(player, modalWindowId, buttonId, choiceId)
    if modalWindowId == 10002 then
        if buttonId == 101 then -- Botão de compra de 1 item (potion)
            local Mountdoll_id = 25979
            
            -- Verificação da montaria escolhida
            local selectedMount = mounts[choiceId]
            if selectedMount then
                if player:hasMount(selectedMount.id) then
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have this mount.")
                    player:getPosition():sendMagicEffect(CONST_ME_POFF) -- Efeito de erro
                elseif player:getItemCount(Mountdoll_id) >= 1 then
                    -- Adiciona a montaria selecionada
                    player:addMount(selectedMount.id)
                    player:removeItem(Mountdoll_id, 1)
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You earned the " .. selectedMount.name .. " mount.")
                    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
                end
            end
        end
    end
    player:unregisterEvent("MountDoll") -- Corrigido o nome do evento
end

potionsModal:register()
