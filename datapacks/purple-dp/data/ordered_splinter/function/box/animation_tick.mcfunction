scoreboard players add @e[tag=wool_purple.animation] wool_purple.animation 1
execute as @e[tag=aj.box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:box/remove/this
execute as @e[tag=aj.demon_box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:demon_box/remove/this
execute as @e[tag=aj.boss_box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:boss_box/remove/this
