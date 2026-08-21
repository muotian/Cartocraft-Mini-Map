
summon item ~ ~ ~ {Tags:[white.move.prism_oath.s2.brust,"summon"],Item:{id:"quartz_bricks"},Motion:[0.0,0.75,0.0],PickupDelay:32767s,Age:-32768s,Glowing:1b}
function white:sys/bullet/init

# fx
playsound minecraft:entity.breeze.inhale master @a[distance=..48] ~ ~ ~ 1 1.25 1
# playsound minecraft:block.enchantment_table.use master @a[distance=..48] ~ ~ ~ 0.5 1 0.5
playsound minecraft:entity.item.pickup master @a[distance=..48] ~ ~ ~ 1 0 1
playsound minecraft:entity.ender_dragon.flap master @a[distance=..48] ~ ~ ~ 1 1 1
execute positioned ~ ~0.2 ~ run function white:move/prism_oath/s2/brust/useb