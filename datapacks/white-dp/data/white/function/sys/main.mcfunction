
# Player Tick
execute as @a at @s run function white:sys/player/main

# Hostile Tick
execute as @e[predicate=white:mob/on_death,type=item] at @s run function white:sys/mob/on_death/trigger
tag @e[type=#white:hostile,tag=white.victim.triggered] remove white.victim.triggered

# System Tick
    # Bullet Last Pos
execute as @e[tag=white.bullet.last_pos.clear,type=marker] at @s run function white:sys/bullet/last_pos/main

    # Spawner Exchanger
execute as @e[tag=white.spawner,type=silverfish] at @s run function white:sys/mob/spawner/main with entity @s data.white

    # Loot Decoration
kill @e[predicate=white:sys/is_decorate,type=item,limit=1]