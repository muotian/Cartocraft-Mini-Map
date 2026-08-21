#

execute if score @s MagentaSpiritLine matches 1 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_1","color":"white"}]
execute if score @s MagentaSpiritLine matches 2 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_2","color":"white"}]
execute if score @s MagentaSpiritLine matches 3 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_3","color":"white"}]
execute if score @s MagentaSpiritLine matches 4 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_4","color":"white"}]
execute if score @s MagentaSpiritLine matches 5 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_5","color":"white"}]
execute if score @s MagentaSpiritLine matches 6 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_6","color":"white"}]
execute if score @s MagentaSpiritLine matches 7 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_7","color":"white"}]
execute if score @s MagentaSpiritLine matches 8 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_8","color":"white"}]
execute if score @s MagentaSpiritLine matches 9 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_9","color":"white"}]
execute if score @s MagentaSpiritLine matches 10 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_10","color":"white"}]

execute if score @s MagentaSpiritLine matches 11 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_11","color":"white"}]
execute if score @s MagentaSpiritLine matches 11 run function cook:item/recipes/recipe3
execute if score @s MagentaSpiritLine matches 11 run playsound entity.player.levelup player @s ~ ~ ~ 0.6 1.4

execute if score @s MagentaSpiritLine matches 12 run tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_12","color":"gray","italic":true}]

execute if score @s MagentaSpiritLine matches 12 run function cook:npc/spirit/dialogue1/finish
execute if score @s MagentaSpiritLine matches 1..11 run scoreboard players add @s MagentaSpiritLine 1
