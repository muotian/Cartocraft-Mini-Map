function light_green:mob/boss/piglin_girl/music

function light_green:arena/difficulty/challenge

effect clear @s slowness

execute store result score $piglin_girl.max_hp light_green.main.math run bossbar get light_green:piglin_girl max
execute if score @s light_green.custom.health > $piglin_girl.max_hp light_green.main.math run scoreboard players operation @s light_green.custom.health = $piglin_girl.max_hp light_green.main.math

execute store result bossbar light_green:piglin_girl value run scoreboard players get @s light_green.custom.health

execute if score @s light_green.boss.attack_type matches ..0 run return run function light_green:mob/boss/piglin_girl/animation/convert

execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35 ~ unless entity @p[tag=light_green.boss.challenger,distance=..31] run return run function light_green:mob/boss/piglin_girl/end

execute if score $piglin_girl_axe_jump_late light_green.main.math matches 1.. run scoreboard players remove $piglin_girl_axe_jump_late light_green.main.math 1


execute if score @s light_green.main.math matches 1.. run scoreboard players add @s light_green.main.math 1
execute if score $piglin_girl_level light_green.main.math matches 2 unless score $piglin_girl.dagger_load light_green.main.math matches 1.. unless score $piglin_girl_dagger_throw_target light_green.main.math matches 18.. run scoreboard players add $piglin_girl_dagger_throw_target light_green.main.math 1
execute if score $piglin_girl_level light_green.main.math matches 2 unless score $piglin_girl.dagger_load light_green.main.math matches 1.. run scoreboard players set $piglin_girl.dagger_load light_green.main.math 55
execute if score $piglin_girl_level light_green.main.math matches 2 if score $piglin_girl.dagger_load light_green.main.math matches 1.. run scoreboard players remove $piglin_girl.dagger_load light_green.main.math 1

scoreboard players add $piglin_girl_idle light_green.main.math 1

scoreboard players add $piglin_girl_throw light_green.main.math 1

ride @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] mount @n[tag=aj.piglin_girl.locator.head_cheak]
execute at @s rotated ~ 0 run tp @n[tag=aj.piglin_girl.root,type=item_display] ~ ~ ~

execute if score $piglin_girl_level light_green.main.math matches 2 if score $piglin_girl_hit light_green.main.math matches 5.. run scoreboard players add @s light_green.custom.health 1
execute if score $piglin_girl_level light_green.main.math matches 2 if score $piglin_girl_hit light_green.main.math matches 5.. run scoreboard players reset $piglin_girl_hit light_green.main.math

execute store result score @s light_green.mob.health run data get entity @s Health
execute if score @s light_green.mob.health < @s light_green.mob.health_late run function light_green:mob/boss/piglin_girl/health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health

execute if score $piglin_girl.hurt light_green.main.math matches 10 run function light_green:mob/boss/piglin_girl/hurt
execute if score $piglin_girl.hurt light_green.main.math matches 1.. run scoreboard players remove $piglin_girl.hurt light_green.main.math 1
execute if score $piglin_girl.hurt light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/default

execute if score $piglin_girl.summon light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/default

execute if score @s light_green.custom.health matches ..0 if score $piglin_girl_level light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/to_level
execute if score @s light_green.custom.health matches ..0 if score $piglin_girl_level light_green.main.math matches 2 run return run function light_green:mob/boss/piglin_girl/skill/defeated

execute on target run tag @s add light_green.target

execute if score $piglin_girl.throw_late light_green.main.math matches 1.. run scoreboard players remove $piglin_girl.throw_late light_green.main.math 1
execute if entity @n[tag=light_green.target] run scoreboard players set $piglin_girl.throw_late light_green.main.math 4

execute unless score $piglin_girl.throw_late light_green.main.math matches 1.. unless entity @s[tag=light_green.boss.piglin_girl.axe.jump] unless entity @n[tag=light_green.target] run scoreboard players reset $piglin_girl_throw light_green.main.math

execute unless score @s light_green.boss.attack_type matches 1.. unless score $piglin_girl_skill2 light_green.main.math matches 1.. run function light_green:mob/boss/piglin_girl/sprint/math
execute unless score @s light_green.boss.attack_type matches 1.. if score $piglin_girl_sprint_axe light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/sprint_weapon
execute unless score @s light_green.boss.attack_type matches 1.. unless score $piglin_girl_sprint_axe light_green.main.math matches 1.. if entity @s[tag=light_green.target_sprint_ready] if entity @n[tag=light_green.target] run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1.. if entity @s[tag=light_green.target_sprint_ready_spear] if entity @n[tag=light_green.target] run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1.. if entity @s[tag=light_green.target_sprint_ready_dagger] if entity @n[tag=light_green.target] run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1.. if entity @s[tag=light_green.boss.piglin_girl.axe.jump_ready] if entity @n[tag=light_green.target] run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1.. if entity @s[tag=light_green.boss.piglin_girl.axe.jump.replay_ready] if entity @n[tag=light_green.target] run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute unless score @s light_green.boss.attack_type matches 1.. if score $piglin_girl_skill2 light_green.main.math matches 1 unless entity @s[tag=light_green.target_sprint_ready] run function light_green:mob/boss/piglin_girl/skill/sprint_weapon


execute if score $piglin_girl_dagger_hit light_green.main.math matches 20.. unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/piglin_girl/skill/throw
execute if score $piglin_girl_throw light_green.main.math matches 120.. unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/piglin_girl/skill/throw

execute unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/piglin_girl/attack_detect/convert

function light_green:mob/boss/piglin_girl/rotate/convert

tag @n[tag=light_green.target] remove light_green.target


execute unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/piglin_girl/move/detect


execute if score $piglin_girl_idle light_green.main.math matches 100 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function light_green:mob/boss/piglin_girl/weapon_anima/idle1_5/convert
execute if score $piglin_girl_idle light_green.main.math matches 110 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function light_green:mob/boss/piglin_girl/weapon_anima/idle2/convert

execute unless score @s light_green.move_step matches 1.. unless score @s light_green.boss.attack_type matches 1.. run return fail
execute if score @s light_green.boss.attack_type matches 1.. store result storage light_green:boss damage float 0.1 run scoreboard players set $damage light_green.main.math 5


function light_green:mob/boss/piglin_girl/animation/convert