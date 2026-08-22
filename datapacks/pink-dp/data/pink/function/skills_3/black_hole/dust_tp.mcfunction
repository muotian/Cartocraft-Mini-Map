#
$execute facing entity @n[tag=pink.bh1] eyes rotated ~$(rx) ~$(ry) run tp @s ^ ^ ^$(speed)

#
execute if entity @n[tag=pink.bh1,distance=..1.5] run kill @s
execute unless entity @n[tag=pink.bh1] run kill @s

#
particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 1
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ .1 .1 .1 0 1 normal
particle dust{color:[0.502,0.169,1.000],scale:1} ~ ~ ~ .1 .1 .1 0 1 normal
