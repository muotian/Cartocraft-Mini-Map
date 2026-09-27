execute as @e[type=item] if items entity @s container.0 *[custom_data~{light_green.fill_item:1}] run kill @s

execute as @e[tag=light_green.summon.graud_golem,limit=1,type=marker] at @s run function light_green:area_level/0

execute as @e[type=#light_green:no_hp,tag=light_green] at @s run function light_green:no_hp

function light_green:mob

execute as @a at @s run function light_green:player