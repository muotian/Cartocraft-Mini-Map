execute as @p[tag=!wool_purple.agree_to_talk] at @s unless items entity @s weapon.mainhand gold_nugget run return run function ordered_splinter:npc/guide/refuse
execute as @p[tag=!wool_purple.agree_to_talk] at @s if items entity @s weapon.mainhand gold_nugget run function ordered_splinter:npc/guide/agree
execute unless score #guide wool_purple.npc matches ..9 run scoreboard players set #guide wool_purple.npc 1
execute if score #guide wool_purple.npc matches 9 run function ordered_splinter:npc/guide/dialog/9
execute if score #guide wool_purple.npc matches 8 run function ordered_splinter:npc/guide/dialog/8
execute if score #guide wool_purple.npc matches 7 run function ordered_splinter:npc/guide/dialog/7
execute if score #guide wool_purple.npc matches 6 run function ordered_splinter:npc/guide/dialog/6
execute if score #guide wool_purple.npc matches 5 run function ordered_splinter:npc/guide/dialog/5
execute if score #guide wool_purple.npc matches 4 run function ordered_splinter:npc/guide/dialog/4
execute if score #guide wool_purple.npc matches 3 run function ordered_splinter:npc/guide/dialog/3
execute if score #guide wool_purple.npc matches 2 run function ordered_splinter:npc/guide/dialog/2
execute if score #guide wool_purple.npc matches 1 run function ordered_splinter:npc/guide/dialog/1
execute if score #guide wool_purple.npc matches 0 run function ordered_splinter:npc/guide/dialog/end