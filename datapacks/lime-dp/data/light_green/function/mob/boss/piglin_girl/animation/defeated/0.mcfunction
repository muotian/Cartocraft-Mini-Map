execute positioned 0.0 0.0 0.0 run tp @s ~ ~ ~
execute if score @s light_green.boss.animation matches 270..290 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s 0.0 15
execute if score @s light_green.boss.animation matches 260..270 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s ~1 ~2
execute if score @s light_green.boss.animation matches 120..260 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s 10 35
execute if score @s light_green.boss.animation matches 110..120 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s ~-0.5 ~1
execute if score @s light_green.boss.animation matches 20..110 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s 5 45
execute if score @s light_green.boss.animation matches 10..20 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s ~ ~-6
execute if score @s light_green.boss.animation matches 290 as @e[tag=aj.piglin_girl.root,limit=1] at @s run rotate @s 0.0 0

execute if score @s light_green.boss.animation matches 290 run stopsound @a[tag=light_green.boss.challenger]
execute if score @s light_green.boss.animation matches 290 as @e[tag=aj.piglin_girl.root,limit=1] at @n[tag=light_green.summon.graud_golem] rotated 0 0 run tp @s ~ ~34 ~ ~ ~
execute if score @s light_green.boss.animation matches 290 at @n[tag=light_green.summon.graud_golem] positioned ~-1.5 ~36 ~2 run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera3_real"]}
execute if score @s light_green.boss.animation matches 290 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s facing entity @e[tag=aj.piglin_girl.root,limit=1] feet run rotate @s ~ ~-30
execute if score @s light_green.boss.animation matches 290 as @a[tag=light_green.boss.challenger] run gamemode spectator @s
execute if score @s light_green.boss.animation matches 0..290 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera3_real]
execute if score @s light_green.boss.animation matches 290 as @a[tag=light_green.boss.challenger] run title @s times 5t 15t 5t
execute if score @s light_green.boss.animation matches 290 as @a[tag=light_green.boss.challenger] run title @s title {"text":"\ue002",font:"light_green:custom"}
execute if score @s light_green.boss.animation matches 266 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s run rotate @s ~1 ~-1
execute if score @s light_green.boss.animation matches 265 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s run rotate @s ~-1 ~1
execute if score @s light_green.boss.animation matches 265 run function light_green:mob/boss/piglin_girl/default
execute if score @s light_green.boss.animation matches 270 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 268 at @e[tag=aj.piglin_girl.root,limit=1] run playsound entity.player.attack.crit hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 271 unless score $piglin_girl_defeated light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_defeated_1"}]
execute if score @s light_green.boss.animation matches 271 as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/animations/defeated/play
execute if score @s light_green.boss.animation matches 180 if score $piglin_girl_defeated light_green.main.math matches 1 run scoreboard players set @s light_green.boss.animation -10
execute if score @s light_green.boss.animation matches 180 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_defeated_2"}]
execute if score @s light_green.boss.animation matches 100 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_defeated_4"}]
execute if score @s light_green.boss.animation matches 110 as @n[tag=light_green.piglin_girl.summon_camera3_real] run data modify entity @s teleport_duration set value 10
execute if score @s light_green.boss.animation matches 109 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s positioned ~1.5 ~-1.9 ~ facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute if score @s light_green.boss.animation matches 20 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s positioned ~ ~4 ~0.5 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute if score @s light_green.boss.animation matches 20 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_defeated_5"}]

execute if score @s light_green.boss.animation matches 120 at @e[tag=aj.piglin_girl.root,limit=1] run playsound entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 115 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 105 at @e[tag=aj.piglin_girl.root,limit=1] run playsound entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 105 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 110 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 100 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 20 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 20 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0


execute if score @s light_green.boss.animation matches -10 as @a[tag=light_green.boss.challenger] run title @s times 5t 15t 5t
execute if score @s light_green.boss.animation matches -10 as @a[tag=light_green.boss.challenger] run title @s title {"text":"\ue002",font:"light_green:custom"}
execute if score @s light_green.boss.animation matches -10 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/animations/nothing_battle/play
execute if score @s light_green.boss.animation matches -20 run scoreboard players set $piglin_girl_level light_green.main.math 2
execute if score @s light_green.boss.animation matches -20 run kill @e[tag=light_green.piglin_girl.summon_camera3_real]
execute if score @s light_green.boss.animation matches -25 run scoreboard players set $piglin_girl.summon light_green.main.math 1
execute if score @s light_green.boss.animation matches -25 run scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
execute if score @s light_green.boss.animation matches -25 run scoreboard players reset $piglin_girl_hit light_green.main.math
execute if score @s light_green.boss.animation matches -25 run scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
execute if score @s light_green.boss.animation matches -25 run scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
execute if score @s light_green.boss.animation matches -25 run scoreboard players set $piglin_girl_defeated light_green.main.math 1
execute if score @s light_green.boss.animation matches -25 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches -25 at @n[tag=light_green.summon.graud_golem] run tp @s ~ ~34 ~
execute if score @s light_green.boss.animation matches -25 run scoreboard players reset @e light_green.agony
execute if score @s light_green.boss.animation matches -25 run function light_green:arena/quit/piglin_girl/0
execute if score @s light_green.boss.animation matches -25 run function light_green:mob/boss/piglin_girl/kill