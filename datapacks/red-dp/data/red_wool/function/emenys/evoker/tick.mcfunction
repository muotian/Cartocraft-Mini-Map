execute as @n[distance=..5, type = vex, tag = !red_wool.vex] run function red_wool:emenys/evoker/init_vex
execute if entity @s[nbt={HurtTime:9s}] run summon vex ^ ^ ^2