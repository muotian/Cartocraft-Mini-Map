#清除瓶子，生成火
execute on vehicle run scoreboard players reset @s gray.Motion.x
execute on vehicle run scoreboard players reset @s gray.Motion.y
execute on vehicle run scoreboard players reset @s gray.Motion.z
execute on vehicle run scoreboard players reset @s gray.preMotion.x
execute on vehicle run scoreboard players reset @s gray.preMotion.y
execute on vehicle run scoreboard players reset @s gray.preMotion.z
scoreboard players reset @s gray.distance
execute on vehicle run kill @s
kill @s

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"flame"},Radius:2.5f,Duration:160,Tags:["gray.fire"]}
