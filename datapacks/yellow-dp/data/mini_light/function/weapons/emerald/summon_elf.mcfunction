# 執行者、執行位置是玩家
summon wolf ~ ~ ~ {Tags:["new", "mini_light.emerald_elf", "mini_light.totem"],attributes:[{id:"max_health",base:40d},{id:"scale",base:1.25d}],CustomNameVisible:1b,CollarColor:5,variant:"ashen", CustomName:{"text":"靈狼圖騰","color": "green"},Health:40f}
data modify entity @n[type=wolf,tag=new,tag=mini_light.emerald_elf] Owner set from entity @s UUID
scoreboard players set @n[type=wolf,tag=new,tag=mini_light.emerald_elf] mini_light.totem_duration 1000

tag @e[tag=new] remove new