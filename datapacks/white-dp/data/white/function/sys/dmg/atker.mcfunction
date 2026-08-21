
tag @s add white.atker.bullet
execute unless function white:sys/dmg/find_owner/use run tag @s add white.atker.owner

execute as @e[tag=white.victim,distance=..64] run function white:sys/dmg/interpret with storage white:temp dmg

tag @e[tag=white.atker.owner,distance=..128,limit=1] remove white.atker.owner
tag @s remove white.atker.bullet
data remove storage white:temp dmg