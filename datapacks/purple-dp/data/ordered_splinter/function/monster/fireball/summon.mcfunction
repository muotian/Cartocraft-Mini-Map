rotate @s facing entity @p
playsound entity.ghast.shoot hostile @a ~ ~ ~ 2 1.2
summon fireball ^ ^1.5 ^1.5 {Tags:[wool_purple.fire_ball,wool_purple.monster],ExplosionPower:1}
execute as @e[tag=wool_purple.fire_ball] at @n[tag=wool_purple.target] facing entity @s feet positioned 0.0 0.0 0.0 as a11-1-1-1-1 run tp @s ^ ^ ^-0.3
execute as @e[tag=wool_purple.fire_ball] run data modify entity @s Motion set from entity a11-1-1-1-1 Pos