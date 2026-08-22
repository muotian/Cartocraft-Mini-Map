#
effect give @e[tag=pink.shulker] resistance infinite 0 true

#
execute as @e[type=item] if items entity @s container.* *[custom_data~{pink_shulker:1b}] at @s run function pink:monster/shulker/summon_




