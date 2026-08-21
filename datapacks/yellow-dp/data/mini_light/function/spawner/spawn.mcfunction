# 執行者、致行位置是有sp標籤的實體

# 森林
execute if entity @s[tag=mini_light.sp.cave_spider] run summon cave_spider ~ ~ ~ {DeathLootTable:"mini_light:monster_forest"}
execute if entity @s[tag=mini_light.sp.bogged] run summon bogged ~ ~ ~ {equipment:{mainhand:{id:"bow",count:1}}, DeathLootTable:"mini_light:monster_forest"}
execute if entity @s[tag=mini_light.sp.creeper] run summon creeper
execute if entity @s[tag=mini_light.sp.dodger] run function mini_light:monster/dodger/summon
execute if entity @s[tag=mini_light.sp.elite_poison_zombie] run function mini_light:monster/elite_poison_zombie/summon
execute if entity @s[tag=mini_light.sp.pufferfish] run summon pufferfish ~ ~ ~ {attributes:[{id:"scale", base:3.0d}], DeathLootTable:"mini_light:monster_forest"}

# 洞窟
execute if entity @s[tag=mini_light.sp.zombie] run summon zombie ~ ~ ~ {DeathLootTable:"mini_light:monster_cave"}
execute if entity @s[tag=mini_light.sp.skeleton] run summon skeleton ~ ~ ~ {DeathLootTable:"mini_light:monster_cave"}
execute if entity @s[tag=mini_light.sp.crystal_skeleton] run function mini_light:monster/crystal_skeleton/summon
execute if entity @s[tag=mini_light.sp.redstone_skeleton] run function mini_light:monster/redstone_skeleton/summon
execute if entity @s[tag=mini_light.sp.worm_skeleton] run function mini_light:monster/worm_skeleton/summon
execute if entity @s[tag=mini_light.sp.elite_amethyst] run function mini_light:monster/elite_amethyst/summon

# 城堡
execute if entity @s[tag=mini_light.sp.ravager] run summon ravager ~ ~ ~ {DeathLootTable:"mini_light:monster_castle"}
execute if entity @s[tag=mini_light.sp.knockback_guard] run function mini_light:monster/knockback_guard/summon
execute if entity @s[tag=mini_light.sp.wither_reaper] run function mini_light:monster/wither_reaper/summon
execute if entity @s[tag=mini_light.sp.chain_blade] run function mini_light:monster/chain_blade/summon
execute if entity @s[tag=mini_light.sp.machine_gun] run function mini_light:monster/machine_gun/summon

execute if entity @s[tag=mini_light.sp.super_evoker] run function mini_light:monster/super_evoker/summon

tp ~ ~-100 ~
kill @s