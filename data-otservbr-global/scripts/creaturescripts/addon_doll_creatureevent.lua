local potionsModal = CreatureEvent("AddonDoll")

-- Tabela de outfits
local outfits = {
    [1] = {name = "Citizen", female = 136, male = 128},
    [2] = {name = "Hunter", female = 137, male = 129},
    [3] = {name = "Knight", female = 139, male = 131},
    [4] = {name = "Nobleman", female = 140, male = 132},
    [5] = {name = "Summoner", female = 138, male = 133},
    [6] = {name = "Warrior", female = 142, male = 134},
    [7] = {name = "Barbarian", female = 147, male = 143},
    [8] = {name = "Druid", female = 148, male = 144},
    [9] = {name = "Wizard", female = 149, male = 145},
    [10] = {name = "Oriental", female = 150, male = 146},
    [11] = {name = "Pirate", female = 155, male = 151},
    [12] = {name = "Assassin", female = 156, male = 152},
    [13] = {name = "Beggar", female = 157, male = 153},
    [14] = {name = "Shaman", female = 158, male = 154},
    [15] = {name = "Norseman", female = 252, male = 251},
    [16] = {name = "Nightmare", female = 269, male = 268},
    [17] = {name = "Jester", female = 270, male = 273},
    [18] = {name = "Brotherhood", female = 279, male = 278},
    [19] = {name = "Demon Hunter", female = 288, male = 289},
    [20] = {name = "Yalaharian", female = 324, male = 325},
    [21] = {name = "Newly Wed", female = 329, male = 328},
    [22] = {name = "Warmaster", female = 336, male = 335},
    [23] = {name = "Wayfarer", female = 366, male = 367},
    [24] = {name = "Afflicted", female = 431, male = 430},
    [25] = {name = "Elementalist", female = 433, male = 432},
    [26] = {name = "Deepling", female = 464, male = 463},
    [27] = {name = "Insectoid", female = 466, male = 465},
    [28] = {name = "Crystal Warlord", female = 513, male = 512},
    [29] = {name = "Soil Guardian", female = 514, male = 516},
    [30] = {name = "Demon", female = 542, male = 541},
    [31] = {name = "Cave Explorer", female = 575, male = 574},
    [32] = {name = "Dream Warden", female = 578, male = 577},
    [33] = {name = "Glooth Engineer", female = 618, male = 610},
    [34] = {name = "Jersey", female = 620, male = 619},
    [35] = {name = "Recruiter", female = 745, male = 746},
    [36] = {name = "Rift Warrior", female = 845, male = 846},
    [37] = {name = "Festive", female = 929, male = 931},
    [38] = {name = "Makeshift Warrior", female = 1043, male = 1042},
    [39] = {name = "Battle Mage", female = 1070, male = 1069},
    [40] = {name = "Discoverer", female = 1095, male = 1094},
    [41] = {name = "Dream Warrior", female = 1147, male = 1146},
    [42] = {name = "Percht Raider", female = 1162, male = 1161},
    [43] = {name = "Golden", female = 1211, male = 1210},
    [44] = {name = "Hand of the Inquisition", female = 1244, male = 1243},
    [45] = {name = "Orcsoberfest Garb", female = 1252, male = 1251},
    [46] = {name = "Poltergeist", female = 1271, male = 1270},
    [47] = {name = "Falconer", female = 1283, male = 1282},
    [48] = {name = "Revenant", female = 1323, male = 1322},
    [49] = {name = "Rascoohan", female = 1372, male = 1371},
    [50] = {name = "Citizen of Issavi", female = 1387, male = 1386},
    [51] = {name = "Royal Bounacean Advisor", female = 1437, male = 1436},
    [52] = {name = "Fire-Fighter", female = 1569, male = 1568},
    [53] = {name = "Ancient Aucar", female = 1598, male = 1597},
    [54] = {name = "Decaying Defender", female = 1663, male = 1662},
    [55] = {name = "Draccoon Herald", female = 1723, male = 1722},
    [56] = {name = "Rootwalker", female = 1775, male = 1774},
    [57] = {name = "Beekeeper", female = 1777, male = 1776},
}

function potionsModal.onModalWindow(player, modalWindowId, buttonId, choiceId)
    if modalWindowId == 10001 then
        if buttonId == 101 then -- Botão de compra de 1 item (potion)
            local addondoll_id = 8778
            
            -- Verificação do outfit escolhido
            local selectedOutfit = outfits[choiceId]
            if selectedOutfit then
                if player:hasOutfit(selectedOutfit.female, 2) or player:hasOutfit(selectedOutfit.male, 2) then
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have this outfit.")
                    player:getPosition():sendMagicEffect(CONST_ME_POFF) -- Efeito de erro
                elseif player:getItemCount(addondoll_id) >= 1 then
                    -- Adiciona addons do outfit selecionado
                    player:addOutfitAddon(selectedOutfit.female, 1) -- Outfit feminino
                    player:addOutfitAddon(selectedOutfit.female, 2) -- Outfit feminino
                    player:addOutfitAddon(selectedOutfit.male, 1) -- Outfit masculino
                    player:addOutfitAddon(selectedOutfit.male, 2) -- Outfit masculino				
                    player:removeItem(addondoll_id, 1)
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You earned " .. selectedOutfit.name .. " outfits.")
                    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
                end
            end
        end
    end
    player:unregisterEvent("AddonDoll") -- Corrigido o nome do evento
end

potionsModal:register()