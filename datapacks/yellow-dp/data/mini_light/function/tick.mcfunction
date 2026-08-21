function mini_light:monster/dodger/tick
function mini_light:monster/elite_poison_zombie/tick
function mini_light:monster/redstone_skeleton/tick
function mini_light:monster/crystal_skeleton/tick
function mini_light:monster/chain_blade/tick
function mini_light:monster/elite_amethyst/tick
function mini_light:monster/knockback_guard/tick
function mini_light:monster/machine_gun/tick
function mini_light:monster/wither_reaper/tick
function mini_light:monster/super_evoker/tick

function mini_light:spawner/tick
function mini_light:villager/tick

# 火把
advancement revoke @a[advancements={mini_light:weapons/torch/hit=true}] only mini_light:weapons/torch/hit

# 物件持續時間
scoreboard players remove @e[scores={mini_light.duration=1..}] mini_light.duration 1
kill @e[scores={mini_light.duration=0}]

# 靈魂寶石頭盔
effect give @a[predicate=mini_light:gem/soul_gem_helmet] night_vision 20 0 true

# 靈魂寶石鞋子
scoreboard players remove @a[scores={mini_light.soul_gem_boots.cd=1..}] mini_light.soul_gem_boots.cd 1
execute as @a[predicate=mini_light:gem/soul_gem_boots] at @s unless score @s mini_light.soul_gem_boots.cd matches 1.. if block ~ ~ ~ #mini_light:torch run function mini_light:gem/soul_gem_boots

# 武器
execute as @a unless score @s mini_light.lantern_energy matches -2147483648..2147483647 run scoreboard players set @s mini_light.lantern_energy 0
execute as @a unless score @s mini_light.candle_hit matches -2147483648..2147483647 run scoreboard players set @s mini_light.candle_hit 0

# 火球
execute as @e[tag=mini_light.spark] at @s run function mini_light:weapons/blaze/spark/spark_move

# 反擊鱗甲
execute as @a[scores={mini_light.counter_shield_count=1..}] at @s run function mini_light:weapons/emerald/counter_shield/spin

# 裝飾物
execute as @e[tag=mini_light.decoration,predicate=!mini_light:vehicle] run kill @s

# 爆炸軌跡
execute as @e[scores={mini_light.knockback_trail=1..}] at @s run particle explosion ^ ^ ^0.3 1651 0 6137 0.001 0
execute as @e[scores={mini_light.knockback_trail=1..}] at @s facing entity @e[sort=random, limit=3] eyes run particle explosion ^ ^ ^0.4 1751 0 6137 0.001 0
scoreboard players remove @e[scores={mini_light.knockback_trail=1..}] mini_light.knockback_trail 1

# 靈魂碎片
execute as @a if items entity @s container.* prismarine_crystals[custom_data~{soul_item:1b}] at @s run function mini_light:weapons/candle/soul/pick_up_effect
execute as @e[type=area_effect_cloud,tag=mini_light.soul_item_aec,predicate=!mini_light:vehicle] run function mini_light:weapons/candle/soul/aec_effect

# 調控燈籠的component
execute as @a if items entity @s weapon.mainhand *[custom_data~{frame:{lantern:1b}}] run function mini_light:weapons/lantern/deal_with_component

# 燈籠圖騰消失
scoreboard players remove @e[tag=mini_light.totem] mini_light.totem_duration 1
kill @e[tag=mini_light.totem,scores={mini_light.totem_duration=..0}]

# 烈焰燈籠的圖騰火球!!
execute as @e[tag=mini_light.blaze_totem] at @s run function mini_light:flame_sphere/animate

# 手持銅燈籠
execute as @a if items entity @s weapon.mainhand *[custom_data~{frame:{copper_lantern:1b}}] run function mini_light:weapons/lantern/hold_copper_lantern

# actionbar
execute as @a run function mini_light:actionbar/as

# 靈魂火把 降咒
execute as @e[scores={mini_light.soul_curse_duration=1..}] at @s run particle effect{color:[0.2, 0.2, 0.3]} ~ ~.2 ~ 0.0 0.0 0.0 0.5 3
execute as @e[scores={mini_light.soul_curse_duration=1}] run attribute @s armor modifier remove soul_curse
scoreboard players remove @e[scores={mini_light.soul_curse_duration=1..}] mini_light.soul_curse_duration 1

#by tag .w. 
##gunpowder

execute as @e[tag=mini_light.gunpowder_particle] at @s run function mini_light:weapons/gunpowder/particle_tick


## 飾品

# 堅盾手鐲
execute as @a if items entity @s weapon.offhand *[custom_data~{shield_bracelet:1b}] run effect give @s resistance 2 0

# 謢火戒指
execute as @a if items entity @s weapon.offhand *[custom_data~{flame_ring:1b}] run effect give @s fire_resistance 2 0

# 解毒項鍊
execute as @a if items entity @s weapon.offhand *[custom_data~{poison_necklace:1b}] run effect clear @s poison

# 解凋零項鍊
execute as @a if items entity @s weapon.offhand *[custom_data~{wither_bracelet:1b}] run effect clear @s wither

# 吸血手鐲冷卻
scoreboard players remove @a[scores={mini_light.vampire_bracelet_cd=1..}] mini_light.vampire_bracelet_cd 1

# 狂怒項鍊冷卻
execute as @a unless score @s mini_light.anger_necklace_cd matches -2147483648..2147483647 run scoreboard players set @s mini_light.anger_necklace_cd 0
scoreboard players remove @a[scores={mini_light.anger_necklace_cd=1..}] mini_light.anger_necklace_cd 1

# 狂怒項鍊傷害
execute as @a[scores={mini_light.anger_necklace_cd=0}] if items entity @s weapon.offhand *[custom_data~{anger_necklace:1b}] run attribute @s attack_damage modifier add mini_light_anger 0.8 add_multiplied_base
execute as @a unless items entity @s weapon.offhand *[custom_data~{anger_necklace:1b}] run attribute @s attack_damage modifier remove mini_light_anger

# 光懲力
execute as @a if items entity @s weapon.offhand *[custom_data~{light_necklace:1b}] run effect give @s glowing 2 0 true


## 區域技能

# 1
execute as @e[tag=mini_light.area_skill_forest,type=marker] at @s run function mini_light:area_skill/1/as

# 2
execute as @e[tag=mini_light.area_skill_cave] at @s run function mini_light:area_skill/2/as
execute as @e[tag=mini_light.area_skill_cave_stone] at @s run function mini_light:area_skill/2/fall

# 3
scoreboard players remove @a[scores={mini_light.area_skill_3_cast=1..}] mini_light.area_skill_3_cast 1
execute as @a[scores={mini_light.area_skill_3_cast=1..}] at @s run function mini_light:area_skill/3/particle_and_damage

# 寶石鎬
execute as @e[tag=mini_light.gem_pickaxe.marker,type=marker] at @s if entity @a[distance=..20, predicate=mini_light:hold_gem_pickaxe, scores={mini_light.break_spawner=1..}] unless block ~ ~ ~ spawner run function mini_light:item/gem_pickaxe/drop_gem
scoreboard players reset @a mini_light.break_spawner
execute as @e[tag=mini_light.gem_pickaxe.marker,type=marker] at @s unless block ~ ~ ~ spawner run kill @s

# 手持附魔書冷卻
scoreboard players remove @a[scores={mini_light.hand_enchanted_book.cd=1..}] mini_light.hand_enchanted_book.cd 1