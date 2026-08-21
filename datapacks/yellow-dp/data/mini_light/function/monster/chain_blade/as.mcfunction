scoreboard players set @s[tag=new] mini_light.monster_cooldown 20
tag @s[tag=new] remove new

# 技能準備
execute as @s[scores={mini_light.monster_cooldown=0}] run function mini_light:monster/chain_blade/prepare
execute as @s[scores={mini_light.monster_prepare=5..}] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

#技能發動
execute as @s[scores={mini_light.monster_prepare=1}] at @s anchored eyes run function mini_light:monster/chain_blade/cast

# 記分板扣分
scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1
scoreboard players remove @s[scores={mini_light.monster_prepare=1..}] mini_light.monster_prepare 1

# 在黑暗中會完全隱形
execute as @s[tag=!mini_light.in_dark] at @s if predicate mini_light:monster/in_dark run function mini_light:monster/chain_blade/armor_off
execute as @s[tag=mini_light.in_dark] at @s unless predicate mini_light:monster/in_dark run function mini_light:monster/chain_blade/armor_on