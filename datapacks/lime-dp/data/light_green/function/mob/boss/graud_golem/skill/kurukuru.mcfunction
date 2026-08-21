execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/jump/play
data modify entity @s Invulnerable set value true
scoreboard players set @s light_green.mob.ai 3
scoreboard players set @s light_green.boss.attack_type 1
scoreboard players set @s light_green.boss.animation 41