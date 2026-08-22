# 執行者：吹響號角的玩家
# 執行位置：同上

# 定身效果
say 爆破

playsound minecraft:entity.dragon_fireball.explode voice @s

execute positioned ^ ^1 ^6 run function animated_java:spell/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell.root] run function animated_java:spell/animations/idel/play

execute at @e[type=!player,limit=1,distance=..3] run particle minecraft:explosion_emitter ^ ^1 ^3

execute at @s positioned ^ ^ ^6 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"化碳不愛吃煤炭", Tags:["lgw_tntblock"], CustomNameVisible:1b, Invisible:true, NoGravity:true}
execute at @e[type=armor_stand,tag=lgw_tntblock] run particle minecraft:explosion ~ ~ ~
execute at @e[type=armor_stand,tag=lgw_tntblock] run damage @e[type=!player,limit=1,distance=..2] 10

particle dust{scale:1, color:[1, 1, 0]} ~ ~1 ~ 1 1 1 1 100 force

scoreboard players remove @s light_gray_wool_power 10

schedule function light_gray_wool:spell_explosion/kill 25t

# 6格生成定位盔甲架，在盔甲架2格內製造10傷害