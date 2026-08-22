execute as @e[type=#mobs,dx=0.5] run damage @s 0.5 magic
execute as @e[type=#mobs,dx=0.5] run effect give @s slowness 1 2 true
execute as @e[type=#mobs,dx=0.5,tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
execute as @e[type=player,dx=0.5] run effect give @s regeneration 1 2 true
execute as @e[type=player,dx=0.5] run effect give @s saturation 1 0 true