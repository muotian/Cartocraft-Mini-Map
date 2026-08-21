
scoreboard players set @s white.mob.cd 100
function white:sys/mob/charge/clear
tag @s remove white.mob.noodle_chef.1

tag @s add white.mob.noodle_chef.1.run
data merge entity @s {NoAI:0b,Glowing:0b,Invulnerable:0b}