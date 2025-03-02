local text =
	"Info basica do servidor:	\n Suporte, donate, reports no discord: https://discord.gg/Urx2SHvn		\n 1. Primeira exercise weapon gratis com 64.000 cargas no reward diario.	\n 2. Fist aumenta fast attack, cheque sua velocidade com !attackspeed.	\n 3. Exercise shield sobe o dobro de fist fighting.	\n 4. !hpmp e !regen para verificar quanto tempo voce tem restante de bonus regen e bonus hpmp.	\n 5. !reloadhpmp para renovar sua condiçao de double hpmp, sugestao de uso: a cada level use o comando.	\n 6. !emote on = spells laranja.	\n 7. !autoloot on = ativa o autoloot.	\n 8. !flask on = voce nao recebera vials ao usar suas potions.	\n 9. Voce pode bufar o heal das suas potions atraves das quests no templo.	\n 10. Sistema de craft de armas bis no templo, materiais no discord.	\n 11. Npcs de loot na adventurer guild, Lootseller no templo somente se o jogador tiver o Lootseller Permission, dropa no daily boss e vende na store.	\n 12. Daily boss: todo dia as 19h20 o teleport abre, 19h30 o boss nasce, 20hrs o teleport fecha. verifique discord pra ver drops.	\n 13. Area da warzone 123: minor token = addons, red teleport crystal = mounts, major tokens = prismatic e gill set class 4."

local offlineTrainingBook = Action()

function offlineTrainingBook.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:showTextDialog(22118, text)
	return true
end

offlineTrainingBook:position({ x = 32369, y = 32238, z = 7 })
offlineTrainingBook:register()
