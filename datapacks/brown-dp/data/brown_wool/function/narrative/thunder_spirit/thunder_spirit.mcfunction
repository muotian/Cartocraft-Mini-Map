

execute if entity @s[tag=brown_wool.thunder_spirit.narrative1.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon2
execute if entity @s[tag=brown_wool.thunder_spirit.narrative2.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon3
execute if entity @s[tag=brown_wool.thunder_spirit.narrative3.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon4
execute if entity @s[tag=brown_wool.thunder_spirit.narrative4.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon5
execute if entity @s[tag=brown_wool.thunder_spirit.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon6
execute if entity @s[tag=brown_wool.thunder_spirit.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon6
execute if entity @s[tag=brown_wool.thunder_spirit.narrative7.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon7
execute if entity @s[tag=brown_wool.thunder_spirit.narrative8.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon8
execute if entity @s[tag=brown_wool.thunder_spirit.narrative9.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon9
execute if entity @s[tag=brown_wool.thunder_spirit.narrative10.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon9
execute if entity @s[tag=brown_wool.thunder_spirit.narrative11.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon10
execute if entity @s[tag=brown_wool.thunder_spirit.narrative12.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon11
execute if entity @s[tag=brown_wool.thunder_spirit.narrative13.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon12
execute if entity @s[tag=brown_wool.thunder_spirit.narrative14.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon13
execute if entity @s[tag=brown_wool.thunder_spirit.narrative15.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon13
execute if entity @s[tag=brown_wool.thunder_spirit.narrative16.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon14
execute if entity @s[tag=brown_wool.thunder_spirit.narrative17.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon15
execute if entity @s[tag=brown_wool.thunder_spirit.narrative18.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon16
execute if entity @s[tag=brown_wool.thunder_spirit.narrative19.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon17
execute if entity @s[tag=brown_wool.thunder_spirit.narrative20.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon18
execute if entity @s[tag=brown_wool.thunder_spirit.narrative21.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon19
execute if entity @s[tag=brown_wool.thunder_spirit.narrative22.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon20
execute if entity @s[tag=brown_wool.thunder_spirit.narrative23.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon24
execute if entity @s[tag=brown_wool.thunder_spirit.narrative23.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/equipment
execute if entity @s[tag=brown_wool.thunder_spirit.narrative24.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon17
execute if entity @s[tag=brown_wool.thunder_spirit.narrative25.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon21
execute if entity @s[tag=brown_wool.thunder_spirit.narrative26.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon22
execute if entity @s[tag=brown_wool.thunder_spirit.narrative27.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon23
execute if entity @s[tag=brown_wool.thunder_spirit.narrative28.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon17
execute if entity @s[tag=brown_wool.thunder_spirit.narrative29.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon17
execute if entity @s[tag=brown_wool.thunder_spirit.narrative30.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon25
execute if entity @s[tag=brown_wool.thunder_spirit.narrative31.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon26
execute if entity @s[tag=brown_wool.thunder_spirit.narrative32.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon27
execute if entity @s[tag=brown_wool.thunder_spirit.narrative33.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon28
execute if entity @s[tag=brown_wool.thunder_spirit.narrative34.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon29
execute if entity @s[tag=brown_wool.thunder_spirit.narrative35.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon30
execute if entity @s[tag=brown_wool.thunder_spirit.narrative36.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon31
execute if entity @s[tag=brown_wool.thunder_spirit.narrative37.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon32
execute if entity @s[tag=brown_wool.thunder_spirit.narrative38.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon33
execute if entity @s[tag=brown_wool.thunder_spirit.narrative39.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon34
execute if entity @s[tag=brown_wool.thunder_spirit.narrative40.0] on target run function brown_wool:narrative/thunder_spirit/thunder_spirit_summon17

execute on target run playsound block.wooden_pressure_plate.click_on player

execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] run kill @e[type=allay,tag=brown_wool.thunder_spirit.narrative]
execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] run kill @e[type=text_display,tag=brown_wool.thunder_spirit.narrative0]
execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] run kill @s


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/thunder_spirit/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




