
tag @a[predicate=white:player/victim,distance=..2] add white.victim
execute if entity @a[tag=white.victim,distance=..2,limit=1] run function white:mob/beard_mage/1/orb/hit
kill @s

# fx
particle item{item:ochre_froglight} ~ ~ ~ 0 0 0 0.25 20 force
particle instant_effect{color:[1.000,0.937,0.522],power:1} ~ ~ ~ 0 0 0 0.01 20 force

playsound minecraft:entity.frog.hurt master @a ~ ~ ~ 0.25 1
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.25 1
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.25 1.75
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.1 2