#by JaCkY99
#black

execute unless entity @s[tag=black.hold_key] run tag @s add black.hold_key

execute if entity @a[tag=black.hold_lock,distance=..9] run effect give @s strength 1 1 false
execute if entity @a[tag=black.hold_lock,distance=..9] run effect give @s haste 1 1 false