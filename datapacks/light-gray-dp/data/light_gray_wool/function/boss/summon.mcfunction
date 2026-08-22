# 這個函數會召喚一隻範例怪物，效果是
# 每十秒召喚四隻終界蟎

kill @e[type=armor_stand,tag=light_gray_wool_door]

bossbar set minecraft:light_gray_wool_boss_hp max 350

summon husk ~ ~2 ~ {CustomName:{translate:"entity.light_gray_wool.boss"}, Tags:["light_gray_wool_boss"], CustomNameVisible:1b , Health:350 , attributes:[{id:max_health , base:350f}] }
execute positioned ^ ^1 ^3 run function animated_java:light_gray_wool_boss/summon {args: {}}
execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/idle/play



bossbar set minecraft:light_gray_wool_boss_hp players @a
bossbar set minecraft:light_gray_wool_boss_hp visible true