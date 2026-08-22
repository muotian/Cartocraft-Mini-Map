#
kill @s

summon wither_skeleton ~-.5 ~ ~.5 {Health:35,Tags:["pink_mobs","pink.summon_bug","2"],equipment:{mainhand:{id:stone_sword,components:{enchantment_glint_override:true,custom_data:{pink_summon_bug:2}}},head:{id:player_head,components:{"minecraft:custom_name":{text:"Wither Skeleton Robot",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 83612",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA4Y2M5YjBjZjJkMTdjMDIyOGNkYzAwYzIwNzAyOGVhYTg1NWU1ZTNjMjU5ZDk1MzBlMTQzNjhkZTgwOTQ1OSJ9fX0="}]}}},chest:{id:iron_chestplate}},drop_chances:{mainhand:1f,head:0f,chest:0f},attributes:[{id:scale,base:1.2f},{id:max_health,base:40f}],CustomName:[{"translate":"monster.pink.summon_bug.name"}]}
summon wither_skeleton ~.5 ~ ~-.5 {Health:35,Tags:["pink_mobs","pink.summon_bug","2"],equipment:{mainhand:{id:stone_sword,components:{enchantment_glint_override:true,custom_data:{pink_summon_bug:2}}},head:{id:player_head,components:{"minecraft:custom_name":{text:"Wither Skeleton Robot",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 83612",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA4Y2M5YjBjZjJkMTdjMDIyOGNkYzAwYzIwNzAyOGVhYTg1NWU1ZTNjMjU5ZDk1MzBlMTQzNjhkZTgwOTQ1OSJ9fX0="}]}}},chest:{id:iron_chestplate}},drop_chances:{mainhand:1f,head:0f,chest:0f},attributes:[{id:scale,base:1.2f},{id:max_health,base:40f}],CustomName:[{"translate":"monster.pink.summon_bug.name"}]}

playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 0.5 0

particle minecraft:smoke ~ ~1 ~ .7 .7 .7 0 400
particle end_rod ~ ~1 ~ .2 .2 .2 0.1 10
