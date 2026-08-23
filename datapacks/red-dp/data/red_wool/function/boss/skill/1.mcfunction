execute at @n[tag = red_wool.center] positioned ~-46 ~52 ~25 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-29 ~52 ~37 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-46 ~52 ~37 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-29 ~52 ~25 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-37.5 ~52 ~25 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-37.5 ~52 ~37 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-46 ~52 ~31 run function red_wool:boss/pets/vindicator_spawn
execute at @n[tag = red_wool.center] positioned ~-29 ~52 ~31 run function red_wool:boss/pets/vindicator_spawn
scoreboard players set skill_cool_down red_wool.boss 80
scoreboard players add skill_num red_wool.boss 1

playsound entity.ravager.roar block @a ~ ~ ~ 1.0 1.0 1.0