kill @e[tag=wool_purple.room_button]
kill @e[tag=wool_purple.room_button_display]
summon interaction ~ ~ ~ {width:0.75,height:0.75,Tags:[wool_purple.room_button]}
summon item_display ~ ~0.25 ~ {transformation:{left_rotation:[0.3536f,0.1464f,0.3536f,0.8536f],right_rotation:[0f,0f,0f,1f],translation:[-0.250033f,0.249967f,0.353553f],scale:[1.25f,1.25f,1.25f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFjNTAxM2IyMjdhNDk0ZWMxNmM0ZWFmYWIxZjg0ZGVhNTcyZWZiMmYzYzRiNWMzZmY4ODI1MmYzNTZhMDJiIn19fQ=="}]}}},Tags:[wool_purple.room_button_display],Glowing:1b,teleport_duration:1}
team join wool_purple.boss_room @e[tag=wool_purple.room_button_display]
playsound minecraft:item.brush.brushing.sand player @a ~ ~ ~ 2 2
playsound minecraft:block.trial_spawner.spawn_mob player @a ~ ~ ~ 2 1.2