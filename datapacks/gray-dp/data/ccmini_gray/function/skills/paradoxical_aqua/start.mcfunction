execute positioned ~ ~0.5 ~ rotated 0 0 run function animated_java:gray_waterball/summon {args:{animation:"shake",start_animation:true}}
ride @s mount @e[type=item_display,tag=gray.temp,limit=1]
tag @e[type=item_display,tag=gray.temp] remove gray.temp
