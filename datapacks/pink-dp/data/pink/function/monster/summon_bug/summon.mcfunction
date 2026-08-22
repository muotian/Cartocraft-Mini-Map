#
summon wither_skeleton ~ ~ ~ {Health:30,Tags:["pink_mobs","pink.summon_bug","1"],equipment:{mainhand:{id:stone_sword,components:{enchantment_glint_override:true,custom_data:{pink_summon_bug:1}}},head:{id:player_head,components:{"minecraft:custom_name":{text:"Wither Skeleton Robot",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 83612",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA4Y2M5YjBjZjJkMTdjMDIyOGNkYzAwYzIwNzAyOGVhYTg1NWU1ZTNjMjU5ZDk1MzBlMTQzNjhkZTgwOTQ1OSJ9fX0="}]}}},chest:{id:iron_chestplate}},drop_chances:{mainhand:1f,head:0f,chest:0f},attributes:[{id:max_health,base:30f}],CustomName:[{"translate":"monster.pink.summon_bug.name"}]}

kill @s
kill @n[tag=pink.monster.b,type=marker]
