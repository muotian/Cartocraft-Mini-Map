#
kill @s

#
execute as @a[distance=..6] anchored eyes run function pink:monster/summon_bug/damage

particle minecraft:explosion_emitter
playsound minecraft:entity.warden.death player @a ~ ~ ~ 0.5 0.8
playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 0.7

