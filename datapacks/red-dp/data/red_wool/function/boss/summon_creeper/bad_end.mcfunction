execute as @a[predicate=red_wool:in_boss_area] run damage @s 120 red_wool:true_explosion
effect give @a[predicate=red_wool:in_boss_area] blindness 5 0
execute at @a[predicate=red_wool:in_boss_area] run function red_wool:enchantment/dealt_true_explosion_particle_blue
playsound entity.wither.spawn block @a ~ ~ ~ 1.0 1.0 1.0

function red_wool:boss/summon_creeper/end