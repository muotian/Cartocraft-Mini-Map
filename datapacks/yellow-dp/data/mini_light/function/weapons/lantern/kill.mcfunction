advancement revoke @s only mini_light:weapons/lantern/kill
scoreboard players add @s mini_light.lantern_energy 1
scoreboard players operation @s mini_light.lantern_energy < $3 mini_light.lantern_energy
#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{frame:{golden:1b}}] run scoreboard players operation @s mini_light.lantern_kill < $2 mini_light.lantern_kill