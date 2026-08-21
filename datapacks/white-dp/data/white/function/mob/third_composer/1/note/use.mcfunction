
summon marker ~ ~ ~ {Tags:["white.mob.third_composer.1.note","summon"]}

rotate @e[tag=summon,type=marker,limit=1] ~ ~
execute store result storage white:temp rotate.x float 0.1 run random value -200..200
execute store result storage white:temp rotate.y float 0.1 run random value -50..50
execute as @e[tag=summon,type=marker,limit=1] at @s run function white:mob/third_composer/1/note/rotate with storage white:temp rotate
data remove storage white:temp rotate

function white:sys/bullet/init