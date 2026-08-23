

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative1.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative2.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon3
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative3.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon4
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative4.0,tag=brown_wool.narrative.select] on target unless entity @e[tag=brown_wool.cangting_general0] if entity @s[gamemode=survival] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/start
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative4.0,tag=brown_wool.narrative.select] on target if entity @e[tag=brown_wool.cangting_general0] run tellraw @s {translate:"entity.brown_wool.thunderous_fiend_rift_fang.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon5
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative7.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon11
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative8.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon6
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative9.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon7
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative10.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon8
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative11.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon9
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative12.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon10
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative13.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative14.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon12
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative15.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon13
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative16.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon14
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative17.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon15
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative18.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon16
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.narrative19.0] on target run function brown_wool:narrative/thunderous_fiend_rift_fang/thunderous_fiend_rift_fang_summon2


execute on target run playsound block.wooden_pressure_plate.click_on player


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/thunderous_fiend_rift_fang/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




