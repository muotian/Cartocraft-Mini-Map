#
kill @s
kill @n[tag=pink.death.die_marker]

#
summon wither_skeleton ~ ~ ~ {Health:30,Glowing:1b,Tags:["pink_mobs","pink.death"],equipment:{mainhand:{id:iron_axe,components:{item_model:"pink:monster/death/s"}},head:{id:player_head,components:{"minecraft:custom_name":{text:"Grim Reaper",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 22771",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVjMmVmYTQyMTgzMDAwODA2MjkwNjI4NGYwMzNmOTA1ZGVkNGVhMmM3ZWQ5YjZlMDk3YWMxZGUyNDI3ZTcwOCJ9fX0="}]},custom_data:{pink_death:1b}}},chest:{id:netherite_chestplate,components:{trim:{pattern:silence,material:netherite},enchantment_glint_override:true}}},drop_chances:{mainhand:0f,head:1f,chest:0f},attributes:[{id:max_health,base:40f}],PersistenceRequired:1b,Team:"pink.monster1",CustomName:[{"translate":"monster.pink.death.name",color:"dark_red"}],CustomNameVisible:true}

particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.031,0.000,0.000],scale:2} ~ ~1.5 ~ 1 1 1 0 70 normal
particle dust_color_transition{from_color:[0.020,0.000,0.000],to_color:[0.910,0.000,0.000],scale:2} ~ ~1.5 ~ 1 1 1 0 50 normal

playsound minecraft:entity.wither.spawn player @a[distance=..15] ~ ~ ~ 0.3 1
playsound minecraft:entity.wither.ambient player @a[distance=..15] ~ ~ ~ 0.4 0.8
playsound minecraft:entity.warden.dig player @a[distance=..15] ~ ~ ~ 0.9 1.5

