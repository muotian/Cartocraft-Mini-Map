#清除瓶子，生成沙塵暴
execute on vehicle run scoreboard players reset @s gray.Motion.x
execute on vehicle run scoreboard players reset @s gray.Motion.y
execute on vehicle run scoreboard players reset @s gray.Motion.z
execute on vehicle run scoreboard players reset @s gray.preMotion.x
execute on vehicle run scoreboard players reset @s gray.preMotion.y
execute on vehicle run scoreboard players reset @s gray.preMotion.z
scoreboard players reset @s gray.distance
execute on vehicle run kill @s
kill @s
particle item{item:{id:glass_bottle}} ~ ~ ~ 0.2 0.2 0.2 0 20
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 1
execute rotated 0 0 run function animated_java:gray_sandstorm/summon {args:{animation:"sandstorm",start_animation:true}}