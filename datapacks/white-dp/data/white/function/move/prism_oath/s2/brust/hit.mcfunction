
data modify storage white:temp dmg set value {value:"0.00000000000001 white:move/prism_oath",func:"white:move/prism_oath/s2/brust/victim"}
function white:sys/dmg/atker

# fx
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.hurt master @a[distance=..32] ~ ~ ~ 0.25 0.5 0.25