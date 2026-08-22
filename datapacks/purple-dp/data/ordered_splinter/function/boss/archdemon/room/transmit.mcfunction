tp @a[tag=!wool_purple.in_boss_room] a11-0-0-0-2
effect give @a[tag=!wool_purple.in_boss_room] minecraft:blindness 3 0 true
execute as @a[tag=!wool_purple.in_boss_room] at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 2 0.1
execute as @a[tag=!wool_purple.in_boss_room] at @s run playsound minecraft:block.chiseled_bookshelf.insert player @s ~ ~ ~ 2 0.1