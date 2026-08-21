
function white:sys/mob/charge/start_nomove
tag @s add white.mob.noodle_chef.1

scoreboard players operation @s white.mob_target.id = @p[predicate=white:player] white.player.id
data merge entity @s {NoAI:1b,Glowing:1b,Invulnerable:1b}

# fx
playsound white:skidaddle master @a ~ ~ ~ 3 1
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 0.25 2