execute as a11-1-2-3-4 run tag @s remove wool_purple.end
execute as a11-0-0-0-6 run tag @s remove wool_purple.portal
execute as @e[tag=aj.boss_box.root] run function animated_java:boss_box/remove/all
kill @e[tag=wool_purple.boss_box_shulker]
kill @e[tag=wool_purple.open_boss_box]