execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die2/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
kill @e[tag=light_green.boss.big_hoglin.target]
kill @e[tag=light_green.boss.big_hoglin.target]
execute at @s rotated ~ 0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["light_green.boss.big_hoglin.target"]}
scoreboard players set @s light_green.boss.attack_type 7
scoreboard players set @s light_green.boss.animation 61