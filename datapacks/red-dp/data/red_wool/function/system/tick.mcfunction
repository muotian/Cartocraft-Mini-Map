# Weapons
scoreboard players remove @a[scores = {red_wool.explosion_for_reg = -100..}] red_wool.explosion_for_reg 1
scoreboard players remove @a[scores = {red_wool.tnt_axe = -100..}] red_wool.tnt_axe 1
scoreboard players remove @a[scores = {red_wool.player_use = -100..}] red_wool.player_use 1

execute as @e[tag = red_wool.tnt_axe] at @s run function red_wool:enchantment/tnt_axe/tnt_tick


scoreboard players remove @a red_wool.totem_of_peace 1

scoreboard players remove @a red_wool.new_year_leggings 1

# Mobs
execute as @e[tag = red_wool.enemy, tag = ! red_wool.balance] run function red_wool:emenys/balance
execute as @e[tag = red_wool_enemy, tag = ! red_wool.balance] run function red_wool:emenys/balance

execute as @e[tag = red_wool.skeleton] at @s run function red_wool:emenys/skeleton/tick
execute as @e[tag = red_wool.wither_skeleton] at @s run function red_wool:emenys/wither_skeleton/tick


execute as @e[type = tnt, tag = red_wool.UnRideTNT1] at @s run function red_wool:enchantment/bow_shoot_tnt/tick
execute as @e[type = #arrows, nbt = {inGround:1b}, tag = red_wool.UnRideTNT] at @s run function red_wool:enchantment/bow_shoot_tnt/kill

execute as @e[tag = red_wool.creeper] at @s run function red_wool:emenys/bomber/tick

execute as @e[tag = red_wool.evoker] at @s run function red_wool:emenys/evoker/tick

execute as @e[tag = red_wool.wolf.active] at @s run function red_wool:npc/wolf/tick

execute as @e[tag = red_wool.boss.trigger.display] at @s run function red_wool:npc/dragon_egg/rotated

# Team
team join red_wool @e[tag = red_wool_enemy]

# Boss
execute as @n[tag = red_wool.boss] if entity @p[predicate=red_wool:in_boss_area] run function red_wool:boss/tick
execute as @n[tag = red_wool.boss] unless entity @p[predicate=red_wool:in_boss_area] run function red_wool:boss/tick_no_player

#NPC
execute as @n[tag = red_wool.villager.1] run rotate @s facing entity @p

# Pickaxe
execute as @a if score @s red_wool.break_spawner matches 1.. if predicate red_wool:spawner_breaker at @s positioned ^ ^ ^3 at @n[type = experience_orb, nbt={Age:0s}] run function red_wool:items/spawner_breaker/run
scoreboard players set @a red_wool.break_spawner 0

execute if score hp red_wool.boss matches 1.. unless entity @n[tag = red_wool.boss] run function red_wool:boss/spawn


# BGM
execute as @a run function red_wool:system/bgm/tick