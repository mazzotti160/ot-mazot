local moonlightCrystals = Action()

local totalCost = 2500000000

function moonlightCrystals.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local tieratual = target:getTier() -- Obtém o nível atual do item alvo
	
	    if tieratual == 10 then
        player:say("Your item is already on max tier!", TALKTYPE_MONSTER_SAY)
    elseif player:removeMoneyBank(totalCost) and tieratual < 10 then
        local tierup = tieratual + 1 -- Calcula o próximo nível
        local itemarticle = target:getArticle()
        local itemname = target:getName()
        local chance = math.random(1000)
        if chance <= 1000 then -- 10 = 1%, 20 = 2% 100 = 10%, 500 = 50%
            target:setTier(tierup) -- Aumenta o nível do item alvo em um
            local message = "SUCCESS!: " .. player:getName() .. " succeeded his forge attempt and forged " .. itemarticle .. " " .. itemname .. " from tier " .. tieratual .. " to tier " .. tierup .. "."
            Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
            player:say("Congratulations! Move your item around backpack to update tier!", TALKTYPE_MONSTER_SAY)
            item:remove(1)
        else
            item:remove(1)
            player:say("Good luck next time!", TALKTYPE_MONSTER_SAY)
        end
		else
        player:say("Sorry, you need 2.500.000.000 gold coins to do this!", TALKTYPE_MONSTER_SAY)
        return false -- Indica que a ação não foi executada porque o jogador não tem dinheiro suficiente
    end
    return true -- Indica que a ação foi executada corretamente
end

moonlightCrystals:id(37171) -- Define o ID da ação
moonlightCrystals:register() -- Registra a ação
