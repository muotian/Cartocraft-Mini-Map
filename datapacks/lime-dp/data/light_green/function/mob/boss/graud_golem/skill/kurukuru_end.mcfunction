rotate @s 0 0
data modify entity @s Invulnerable set value false
execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/kurukuru_end/play
scoreboard players set @s light_green.boss.attack_type 3
scoreboard players set @s light_green.boss.animation 16