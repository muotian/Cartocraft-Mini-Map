
# extra damage
scoreboard players operation #damage white.main = @s white.move.prism_oath.count
scoreboard players operation #damage white.main *= #100 white.main
function white:sys/dmg/extra_dmg/save