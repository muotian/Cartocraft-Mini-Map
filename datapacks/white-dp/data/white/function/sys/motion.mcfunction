
# if (type == player) :
$execute if entity @s[type=player] run return run function white:sys/player/motion/use {s:$(s)}

# else :
$execute as a1-0-0-0-0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^$(s)
data modify entity @s Motion set from entity a1-0-0-0-0 Pos
tp a1-0-0-0-0 0.0 0.0 0.0