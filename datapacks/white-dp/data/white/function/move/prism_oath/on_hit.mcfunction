
advancement revoke @s only white:move/prism_oath/on_hit

tag @s add white.atker

execute as @e[type=#white:hostile,distance=..8,nbt={HurtTime:10s}] if function white:sys/player/on_hit/victim/detect at @s run function white:move/prism_oath/melee/victim
function white:move/prism_oath/melee/atker

tag @s remove white.atker

# fx
playsound minecraft:block.amethyst_block.fall master @a ~ ~ ~ 0.35 0.75
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 0
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.075 2