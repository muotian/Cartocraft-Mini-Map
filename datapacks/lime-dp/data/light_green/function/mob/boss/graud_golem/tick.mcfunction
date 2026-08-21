execute if entity @p[distance=..20] unless score @s light_green.mob.ai matches 1.. run function light_green:mob/boss/graud_golem/if_player



tp @e[tag=aj.graud_golem.root,type=item_display,limit=1,distance=..30] ~ ~ ~ ~ ~

execute store result score $hurt light_green.main.math run data get entity @s HurtTime

execute if score $hurt light_green.main.math matches 9 run function light_green:mob/boss/graud_golem/hurt
execute if score $hurt light_green.main.math matches 0 run function light_green:mob/boss/graud_golem/hurt_deafault

execute if score @s light_green.mob.ai matches 2.. run function light_green:mob/boss/graud_golem/normal
execute if score @s light_green.mob.ai matches 2 run function light_green:mob/boss/graud_golem/music/convert

execute if score @s light_green.boss.animation matches 1.. run function light_green:mob/boss/graud_golem/animation/convert