
execute facing entity @e[tag=white.atker,type=item,limit=1] feet facing ^ ^ ^-1 run function white:sys/motion {s:0.5}

# extra damage
function white:sys/dmg/extra_dmg/load
scoreboard players operation #damage white.main = @s white.move.prism_oath.count
scoreboard players operation #damage white.main *= #300 white.main
scoreboard players add #damage white.main 300
function white:sys/dmg/extra_dmg/save

scoreboard players reset @s white.move.prism_oath.count