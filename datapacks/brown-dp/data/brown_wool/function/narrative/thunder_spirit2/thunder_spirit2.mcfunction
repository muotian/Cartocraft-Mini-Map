

execute if entity @s[tag=brown_wool.thunder_spirit2.narrative1.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon2
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative2.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon3
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative3.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon4
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative4.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon5
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon6
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon6
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative7.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon7
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative8.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon8
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative9.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon9
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative10.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon9
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative11.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon10
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative12.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon11
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative13.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon12
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative14.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon13
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative15.0,tag=brown_wool.narrative.select] on target unless items entity @s container.* dragon_breath[custom_data={brown_wool.purify_water:1}] run tellraw @s [{translate:"entity.brown_wool.thunder_spirit2.narrative26",color:"red"}]
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative15.0,tag=brown_wool.narrative.select] on target if items entity @s container.* dragon_breath[custom_data={brown_wool.purify_water:1}] run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon15
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative15.0,tag=brown_wool.narrative.select] on target if items entity @s container.* dragon_breath[custom_data={brown_wool.purify_water:1}] run clear @s dragon_breath[custom_data={brown_wool.purify_water:1}]
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative16.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon14
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative17.0] on target run tag @n[type=marker,tag=brown_wool.thunder_spirit2.narrative_marker] add brown_wool.thunder_spirit2.narrative_marker2
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative17.0] on target run kill @e[type=text_display,tag=brown_wool.thunder_spirit2.narrative0]
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative17.0] on target run kill @e[type=interaction,tag=brown_wool.thunder_spirit2.narrative00]
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative18.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon16
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative19.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon17
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative20.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon18
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative21.0] on target run tag @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] add brown_wool.thunder_spirit.terrain_3
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative21.0] on target run tellraw @a [{translate:"entity.brown_wool.thunder_spirit2.narrative25",color:"red"}]
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative21.0] on target run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon19
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative22.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=survival] run function brown_wool:entity/boss/thunder_spirit/start
execute if entity @s[tag=brown_wool.thunder_spirit2.narrative22.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}


execute on target run playsound block.wooden_pressure_plate.click_on player



execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/thunder_spirit2/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select


execute if data entity @s interaction run data remove entity @s interaction




