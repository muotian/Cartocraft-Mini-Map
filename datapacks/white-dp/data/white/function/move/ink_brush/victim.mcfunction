
execute if score #apply white.main matches 1 run function white:move/ink_brush/apply/victim

# fx
execute unless function white:sys/player/on_hit/victim/detect at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:wither":{}}}} run return fail
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.1 10 force
particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.1 5 force
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 0.5 2
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.2 1