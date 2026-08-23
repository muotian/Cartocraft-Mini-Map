execute at @n[tag = red_wool.center] positioned ~-46 ~52 ~25 run function red_wool:boss/pets/zombie
execute at @n[tag = red_wool.center] positioned ~-29 ~52 ~37 run function red_wool:boss/pets/zombie
execute at @n[tag = red_wool.center] positioned ~-46 ~52 ~37 run function red_wool:boss/pets/zombie
execute at @n[tag = red_wool.center] positioned ~-29 ~52 ~25 run function red_wool:boss/pets/zombie
scoreboard players add skill_num red_wool.boss 1
scoreboard players set skill_cool_down red_wool.boss 80
playsound entity.ravager.roar block @a ~ ~ ~ 1.0 1.0 1.0