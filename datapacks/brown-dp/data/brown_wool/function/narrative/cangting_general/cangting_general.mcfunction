

execute if entity @s[tag=brown_wool.cangting_general.narrative1.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon2
execute if entity @s[tag=brown_wool.cangting_general.narrative2.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon3
execute if entity @s[tag=brown_wool.cangting_general.narrative3.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon4
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target unless entity @e[tag=brown_wool.xuan_ting_priest0] unless entity @e[tag=brown_wool.thunder_shadow_guard0] unless entity @e[tag=brown_wool.thunder_rock_guard0] if entity @s[gamemode=survival] run function brown_wool:entity/boss/cangting_general/start
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target if entity @e[tag=brown_wool.xuan_ting_priest0] unless entity @e[tag=brown_wool.thunder_shadow_guard0] unless entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target unless entity @e[tag=brown_wool.xuan_ting_priest0] unless entity @e[tag=brown_wool.thunder_rock_guard0] if entity @e[tag=brown_wool.thunder_shadow_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target unless entity @e[tag=brown_wool.xuan_ting_priest0] unless entity @e[tag=brown_wool.thunder_shadow_guard0] if entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target if entity @e[tag=brown_wool.xuan_ting_priest0] if entity @e[tag=brown_wool.thunder_shadow_guard0] unless entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target if entity @e[tag=brown_wool.xuan_ting_priest0] unless entity @e[tag=brown_wool.thunder_shadow_guard0] if entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target unless entity @e[tag=brown_wool.xuan_ting_priest0] if entity @e[tag=brown_wool.thunder_shadow_guard0] if entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative4.0,tag=brown_wool.narrative.select] on target if entity @e[tag=brown_wool.xuan_ting_priest0] if entity @e[tag=brown_wool.thunder_shadow_guard0] if entity @e[tag=brown_wool.thunder_rock_guard0] run tellraw @s {translate:"entity.brown_wool.cangting_general.narrative22",color:"red"}
execute if entity @s[tag=brown_wool.cangting_general.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon2
execute if entity @s[tag=brown_wool.cangting_general.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon5
execute if entity @s[tag=brown_wool.cangting_general.narrative7.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon11
execute if entity @s[tag=brown_wool.cangting_general.narrative8.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon6
execute if entity @s[tag=brown_wool.cangting_general.narrative9.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon7
execute if entity @s[tag=brown_wool.cangting_general.narrative10.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon8
execute if entity @s[tag=brown_wool.cangting_general.narrative11.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon9
execute if entity @s[tag=brown_wool.cangting_general.narrative12.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon10
execute if entity @s[tag=brown_wool.cangting_general.narrative13.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon2
execute if entity @s[tag=brown_wool.cangting_general.narrative14.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon12
execute if entity @s[tag=brown_wool.cangting_general.narrative15.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon13
execute if entity @s[tag=brown_wool.cangting_general.narrative16.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/cangting_general/cangting_general_summon14
execute if entity @s[tag=brown_wool.cangting_general.narrative17.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon15
execute if entity @s[tag=brown_wool.cangting_general.narrative18.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon16
execute if entity @s[tag=brown_wool.cangting_general.narrative19.0] on target run function brown_wool:narrative/cangting_general/cangting_general_summon2


execute on target run playsound block.wooden_pressure_plate.click_on player


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/cangting_general/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




