execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/goback/play
execute as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/roar/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
scoreboard players set @s light_green.main.math 0
kill @e[tag=light_green.boss.big_hoglin.target]
execute at @s run summon marker ~ ~ ~ {Tags:["light_green.boss.big_hoglin.target"]}
execute at @s as @n[tag=light_green.boss.big_hoglin.target] run rotate @s ~ ~
scoreboard players set @s light_green.boss.attack_type 1
attribute @s attack_knockback modifier add light_green:big_hoglin_rush 1 add_value
attribute @s movement_speed modifier add light_green:big_hoglin_rush -100 add_value
scoreboard players set @s light_green.boss.animation 131
playsound minecraft:entity.hoglin.angry hostile @a ~ ~ ~ 3 0