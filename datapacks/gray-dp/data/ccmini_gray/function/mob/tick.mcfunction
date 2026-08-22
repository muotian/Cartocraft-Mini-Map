#生物用tick

execute as @e[type=parched,tag=gray.dune_recluse,tag=!gray.dune_recluse.discovered] at @s run function ccmini_gray:mob/dune_recluse/invisibility
execute as @e[type=parched,tag=gray.dune_recluse,tag=gray.dune_recluse.discovered] at @s run function ccmini_gray:mob/dune_recluse/visible

execute as @e[type=parched,tag=gray.desert_ranger_spawn] at @s run function ccmini_gray:mob/desert_ranger/summon
execute as @e[type=parched,tag=gray.desert_ranger_parched] if function ccmini_gray:mob/desert_ranger/symbiosis run kill @s
execute as @e[type=silverfish,tag=gray.desert_ranger_silverfish] if function ccmini_gray:mob/desert_ranger/symbiosis run kill @s

execute as @e[type=parched,tag=gray.desert_ranger_parched,tag=!gray.desert_ranger_preparing] run function ccmini_gray:mob/desert_ranger/anticipation
execute as @e[type=parched,tag=gray.desert_ranger_parched] if score @s gray.desert_ranger_anticipation matches 80.. at @s run function ccmini_gray:mob/desert_ranger/prepare
execute as @e[type=parched,tag=gray.desert_ranger_preparing] if score @s gray.desert_ranger_prepare matches 1.. at @s run function ccmini_gray:mob/desert_ranger/particle

execute as @e[type=marker,tag=gray.desert_ranger_charge] if function ccmini_gray:mob/desert_ranger/charge/if_touch at @s run function ccmini_gray:mob/desert_ranger/charge/area_effect_cloud

execute as @e[type=blaze,tag=gray.pyrogrit,tag=!gray.pyrogrit.checked] run function ccmini_gray:mob/pyrogrit/rided_by_marker
execute as @e[type=marker,tag=gray.vex_summoner] run function ccmini_gray:mob/pyrogrit/if_die
execute as @e[type=blaze,tag=gray.pyrogrit,nbt={last_hurt_by_player_memory_time:99}] at @s run function ccmini_gray:mob/pyrogrit/storage_amount
execute as @e[type=vex,tag=gray.vex] at @s run particle flame ~ ~0.5 ~ 0.2 0.2 0.2 0 5 force