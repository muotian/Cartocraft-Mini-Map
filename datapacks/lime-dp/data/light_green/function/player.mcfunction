execute unless score @s light_green.player_id matches 1.. store result score @s light_green.player_id run scoreboard players add $player_id light_green.main.math 1

attribute @s movement_speed modifier remove light_green:big_hoglin_blood
attribute @s jump_strength modifier remove light_green:big_hoglin_blood
attribute @s movement_speed modifier remove light_green:big_hoglin_mud
attribute @s jump_strength modifier remove light_green:big_hoglin_mud

execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id

function light_green:hurt_detect/0

execute if score @s light_green.tp_door_cd matches 1.. run scoreboard players remove @s light_green.tp_door_cd 1
execute if score @s light_green.death matches 0.. run function light_green:tag_clear
execute if score @s light_green.hand_cannon_cd matches 1.. run function light_green:item/golem/hand_cannon/score

execute if score @s light_green.break_defanse_time matches 1.. run function light_green:break_defance/tick
execute if score @s light_green.cant_move matches 1.. run function light_green:mob/boss/piglin_girl/cant_move/tick
execute if score @s light_green.heal matches 1.. run function light_green:player/heal/0
execute if score @s light_green.long_heal matches 2.. run function light_green:player/long_heal/0
execute if score @s light_green.instant_heal.cold matches 1.. run function light_green:player/instant_heal
execute if score @s light_green.scout matches 1.. run function light_green:item/golem/mod/scout/score
execute if score @s light_green.dialog matches 1.. run function light_green:area_level/dialog/tick

function light_green:player/armor

function light_green:player/weapon

execute if score @s light_green.sprint.resistance matches -2.. run function light_green:player/sprint_resistance/0

function light_green:player/trigger/convert


execute if score @s light_green.hoglin_swing.damage matches 0.. run scoreboard players operation @s light_green.hoglin_swing.damage_real = @s light_green.hoglin_swing.damage
execute if score @s light_green.hoglin_swing.damage matches 0.. if score @s light_green.hoglin.shield.upgrade.keep matches 1.. if items entity @s weapon.mainhand *[custom_data~{light_green.hoglin_sword:1b}] run function light_green:item/big_hoglin/sword/upgrade/left_click
scoreboard players reset @s light_green.hoglin_swing.damage

scoreboard players reset @s light_green.second_life.damage
scoreboard players reset @s light_green.hoglin_sword.damage

clear @s *[custom_data~{light_green.fill_item:1}]

function light_green:player/advancement/blocked/tick
function light_green:player/advancement/eat/tick
function light_green:player/advancement/eating/tick
function light_green:player/advancement/hurt/tick