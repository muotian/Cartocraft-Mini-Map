advancement revoke @s only red_wool:armors/explosion_for_gunpower
execute store result score tnt_axe red_wool.tmp run clear @p gunpowder 0
execute if score tnt_axe red_wool.tmp matches 64.. run return fail
give @s gunpowder 1
playsound entity.arrow.hit_player block @s ~ ~ ~ 1.0 1.0 1.0