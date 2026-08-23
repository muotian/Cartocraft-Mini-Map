

execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative1.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon2
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative2.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon3
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative3.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon4
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=survival] run function brown_wool:entity/boss/xuan_ting_priest/start
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon2
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon5
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative7.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon11
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative8.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon6
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative9.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon7
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative10.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon8
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative11.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon9
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative12.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon10
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative13.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon2
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative14.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon12
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative15.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon13
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative16.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon14
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative17.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon15
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative18.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon16
execute if entity @s[tag=brown_wool.xuan_ting_priest.narrative19.0] on target run function brown_wool:narrative/xuan_ting_priest/xuan_ting_priest_summon2


execute on target run playsound block.wooden_pressure_plate.click_on player


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/xuan_ting_priest/as_select1


execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




