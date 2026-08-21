execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_run2/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
kill @e[tag=light_green.boss.big_hoglin.target]
execute on target run tag @s add light_green.target
$execute facing entity @n[tag=light_green.target] feet run rotate @s ~$(random) 0
execute at @s positioned ^ ^ ^80 run summon marker ~ ~ ~ {Tags:["light_green.boss.big_hoglin.target"]}
tag @n[tag=light_green.target] remove light_green.target
scoreboard players set @s light_green.boss.attack_type 6
attribute @s attack_knockback modifier add light_green:big_hoglin_rush 2 add_value
attribute @s movement_speed modifier add light_green:big_hoglin_rush -100 add_value
scoreboard players set @s light_green.boss.animation 71
scoreboard players add $hoglin_rush light_green.main.math 1