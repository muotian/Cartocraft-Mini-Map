

execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative1.0] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon2
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative2.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon3
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative3.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon4
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=survival] run function brown_wool:entity/boss/thunder_rock_guard/start
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative4.0,tag=brown_wool.narrative.select] on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative5.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon2
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative6.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon5
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative7.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon8
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative8.0] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon6
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative9.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon7
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative10.0] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon2
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative11.0] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon9
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative12.0,tag=brown_wool.narrative.select] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon10
execute if entity @s[tag=brown_wool.thunder_rock_guard.narrative13.0] on target run function brown_wool:narrative/thunder_rock_guard/thunder_rock_guard_summon2


execute on target run playsound block.wooden_pressure_plate.click_on player


execute if entity @s[tag=brown_wool.narrative.select0] run data modify entity @s width set value 0


execute if entity @s[tag=brown_wool.narrative.select] run function brown_wool:narrative/thunder_rock_guard/as_select1

execute if entity @s[tag=brown_wool.narrative.select0] as @a[distance=..3] at @s positioned ~ ~1.6 ~ run function brown_wool:narrative/select

execute if data entity @s interaction run data remove entity @s interaction




