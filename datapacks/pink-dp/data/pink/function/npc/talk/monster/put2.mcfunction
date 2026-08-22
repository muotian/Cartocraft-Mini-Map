#
advancement revoke @s only pink:npc/talk/monster_put2

#
execute unless items entity @s weapon.mainhand *[custom_data~{pink_sp:1b}] run function pink:npc/talk/monster/x
execute if items entity @s weapon.mainhand *[custom_data~{pink_sp:1b}] run function pink:npc/talk/monster/put {id:2}

