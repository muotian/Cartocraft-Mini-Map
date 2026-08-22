
scoreboard players add @s gray.distance 1
execute if function ccmini_gray:skills/sand_forge_sword/if_end run return run summon marker ~ ~ ~ {Tags:[gray.sand_forge_sword.marker]}
execute positioned ^ ^ ^0.5 run function ccmini_gray:skills/sand_forge_sword/raycast
scoreboard players reset @s gray.distance