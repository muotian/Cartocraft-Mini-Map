#by JaCkY99
#black

execute unless entity @s[tag=black.hold_lock] run tag @s add black.hold_lock

execute if entity @a[tag=black.hold_key,distance=..9] run effect give @s resistance 1 0 false
execute if entity @a[tag=black.hold_key,distance=..9] run effect give @s absorption 1 0 false