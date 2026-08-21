effect give @s absorption infinite 100 true
$attribute @s max_absorption modifier add light_green:hoglin_sword $(shield) add_value
$scoreboard players set @s light_green.hoglin.shield.max $(shield)
attribute @s knockback_resistance modifier add light_green:hoglin_sword 100 add_value
effect clear @s absorption