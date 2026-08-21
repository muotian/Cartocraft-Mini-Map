function mini_light:monster/elite_amethyst/amethyst_envoy_particle

# hurt
execute if predicate mini_light:monster/hurttime run function mini_light:monster/elite_amethyst/hurt

# skill
scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1
scoreboard players remove @s[scores={mini_light.monster_prepare=1..}] mini_light.monster_prepare 1
execute if score @s mini_light.monster_cooldown matches ..0 at @s if entity @a[distance=..4] run function mini_light:monster/elite_amethyst/skill1/prepare

execute if score @s mini_light.monster_prepare matches 0 run function mini_light:monster/elite_amethyst/skill1/cast
execute as @s[tag=mini_light.cast] if predicate mini_light:monster/onground at @s run function mini_light:monster/elite_amethyst/skill1/hit {dis:3.5}

# 生氣找目標
function mini_light:monster/elite_amethyst/find_target