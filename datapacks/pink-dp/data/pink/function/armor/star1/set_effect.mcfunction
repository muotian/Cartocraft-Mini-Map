# Speed
attribute @s movement_speed modifier add pink.star.set 0.15 add_multiplied_base

# Health
scoreboard players remove @s[scores={pink.armor.star.absorption_cd=1..}] pink.armor.star.absorption_cd 1
execute unless score @s pink.armor.star.absorption_cd matches 1.. run function pink:armor/star1/absorption




