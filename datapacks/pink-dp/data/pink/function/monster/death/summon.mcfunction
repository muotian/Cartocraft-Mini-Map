
kill @s
kill @n[tag=pink.monster.b,type=marker]

execute if entity @n[tag=pink.death] run return fail
#
summon wither_skeleton ~ ~ ~ {Health:80,Glowing:1b,Tags:["pink_mobs","pink.death"],equipment:{mainhand:{id:iron_axe,components:{item_model:"pink:monster/death/s"}},head:{id:player_head,components:{"minecraft:custom_name":{text:"Grim Reaper",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 22771",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVjMmVmYTQyMTgzMDAwODA2MjkwNjI4NGYwMzNmOTA1ZGVkNGVhMmM3ZWQ5YjZlMDk3YWMxZGUyNDI3ZTcwOCJ9fX0="}]},custom_data:{pink_death:1b}}},chest:{id:netherite_chestplate,components:{trim:{pattern:silence,material:netherite},enchantment_glint_override:true}}},drop_chances:{mainhand:0f,head:1f,chest:0f},attributes:[{id:max_health,base:110f}],PersistenceRequired:1b,Team:"pink.monster1",CustomName:[{"translate":"monster.pink.death.name",color:"dark_red"}],CustomNameVisible:true}
#summon text_display ~ ~ ~ {text:{"bold":true,"color":"dark_red","obfuscated":true,"text":"aaaaaa"},background:-16777216,Tags:["pink.death.text"]}

#ride @n[tag=pink.death.text] mount @n[tag=pink.death]



scoreboard players set $s pink.monster.death.skill 1
scoreboard players set $cd pink.monster.death.skill 80
scoreboard players reset $charge pink.monster.death.skill