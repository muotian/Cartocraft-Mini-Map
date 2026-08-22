effect give @s invisibility 1 0 true
tag @s add gray.dune_recluse.temp
execute as @a[distance=..30] at @s anchored eyes positioned ^ ^ ^ run function ccmini_gray:mob/dune_recluse/raycast
tag @s remove gray.dune_recluse.temp
execute as @s[tag=!gray.dune_recluse.discovered] run particle item{item:{id:light_gray_stained_glass_pane}} ~ ~1 ~ 0.2 0.8 0.2 0 2 force @a