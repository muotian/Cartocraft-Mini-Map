#

execute if score @s MagentaSpiritLine matches 101 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_2_1","color":"white"}]
execute if score @s MagentaSpiritLine matches 102 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_2_2","color":"white"}]
execute if score @s MagentaSpiritLine matches 103 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_2_3","color":"white"}]

execute if score @s MagentaSpiritLine matches 103 run function cook:npc/spirit/dialogue2/finish
execute if score @s MagentaSpiritLine matches 101..102 run scoreboard players add @s MagentaSpiritLine 1
