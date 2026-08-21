
$damage @s $(value) by @e[tag=white.atker.bullet,distance=..16,limit=1] from @e[tag=white.atker.owner,distance=..128,limit=1]
execute at @s if data storage white:temp dmg.func run function white:sys/dmg/func with storage white:temp dmg

tag @s remove white.victim