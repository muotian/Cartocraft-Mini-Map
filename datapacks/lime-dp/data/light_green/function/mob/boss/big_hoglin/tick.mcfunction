execute store result score $hoglin_attack light_green.main.math run data get entity @s AttackTick
execute store result score $hoglin_roar light_green.main.math run data get entity @s RoarTick
execute store result score $hoglin_stun light_green.main.math run data get entity @s StunTick

function light_green:mob/boss/big_hoglin/music

function light_green:arena/difficulty/challenge

execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35 ~ unless entity @p[tag=light_green.boss.challenger,distance=..31] run return run function light_green:mob/boss/big_hoglin/no_challenger

execute if score $hoglin_summon light_green.main.math matches 1.. run scoreboard players remove $hoglin_summon light_green.main.math 1

execute store result score @s light_green.mob.health run data get entity @s Health
execute if score @s light_green.mob.health < @s light_green.mob.health_late run function light_green:mob/boss/big_hoglin/health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health

execute if score $big_hoglin.hurt light_green.main.math matches 10 run function light_green:mob/boss/big_hoglin/hurt/hurt/convert
execute if score $big_hoglin.hurt light_green.main.math matches 10 if score $hoglin_dirt_armor light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/dirt_armor/have
execute if score $big_hoglin.hurt light_green.main.math matches 10 if score $hoglin_dirt_armor light_green.main.math matches 0 if score $hoglin_have_dirt light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/dirt_armor/clear
execute if score $big_hoglin.hurt light_green.main.math matches 1.. run scoreboard players remove $big_hoglin.hurt light_green.main.math 1
execute if score $big_hoglin.hurt light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/hurt/default/convert
execute if score $big_hoglin.hurt light_green.main.math matches 1 if score $hoglin_dirt_armor light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/dirt_armor/have

execute if score $big_hoglin.summon light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/hurt/default/convert

execute on target run tag @s add light_green.target

ride @n[tag=aj.big_hoglin_head.root,type=item_display] mount @n[tag=aj.big_hoglin.locator.head,type=item_display]

execute at @s rotated ~ 0 run tp @n[tag=aj.big_hoglin.root,type=item_display] ^ ^ ^0.25

function light_green:mob/boss/big_hoglin/rotate/convert


execute if score @s light_green.mob.ai matches 1.. run return run function light_green:mob/boss/big_hoglin/die_tick

execute unless score $hoglin_summon light_green.main.math matches 1.. if score @s light_green.custom.health matches ..0 run function light_green:mob/boss/big_hoglin/skill/die



execute unless entity @n[tag=light_green.target] run attribute @s movement_speed modifier remove light_green:big_hoglin_target
execute if entity @n[tag=light_green.target] run attribute @s movement_speed modifier add light_green:big_hoglin_target -0.1 add_value
execute unless entity @n[tag=light_green.target] run scoreboard players reset @s light_green.main.math
execute if entity @n[tag=light_green.target] run scoreboard players add @s light_green.main.math 1

execute if score @s light_green.main.math matches 100 if entity @n[tag=light_green.target] unless score $hoglin_stun light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/skill/small_jump
execute if score @s light_green.main.math matches 200.. if entity @n[tag=light_green.target] unless score $hoglin_stun light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/skill/rush
execute unless score @s light_green.boss.attack_type matches 1.. if entity @n[tag=light_green.target,distance=15..] unless score $hoglin_stun light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/skill/rush

execute if score $hoglin_attack light_green.main.math matches 9 as @n[tag=aj.big_hoglin_head.root,type=item_display] run function light_green:mob/boss/big_hoglin/skill/head_attack
execute if score $hoglin_roar light_green.main.math matches 20 as @n[tag=aj.big_hoglin_head.root,type=item_display] run function light_green:mob/boss/big_hoglin/skill/roar

tag @n[tag=light_green.target] remove light_green.target


execute unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/big_hoglin/move/detect

execute if score $hoglin_attack light_green.boss.animation matches 1.. unless score $hoglin_roar light_green.boss.animation matches 1.. run function light_green:mob/boss/big_hoglin/head_animation/convert
execute unless score $hoglin_attack light_green.boss.animation matches 1.. if score $hoglin_roar light_green.boss.animation matches 1.. run function light_green:mob/boss/big_hoglin/head_animation/convert
execute if score $hoglin_attack light_green.boss.animation matches 1.. if score $hoglin_roar light_green.boss.animation matches 1.. run function light_green:mob/boss/big_hoglin/head_animation/convert

execute unless score @s light_green.move_step matches 1.. unless score @s light_green.boss.attack_type matches 1.. run return fail
execute if score @s light_green.boss.attack_type matches 1.. store result storage light_green:boss damage float 0.1 run scoreboard players set $damage light_green.main.math 5
function light_green:mob/boss/big_hoglin/animation/convert