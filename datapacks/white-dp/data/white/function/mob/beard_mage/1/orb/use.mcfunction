
summon item ~ ~ ~ {Tags:[white.mob.beard_mage.1.orb,"summon"],Item:{id:ochre_froglight},PickupDelay:32767s,Age:-32768s,Glowing:1b}

execute as @e[tag=summon,type=item,limit=1] at @s facing entity @p[predicate=white:player] eyes rotated ~ -45 run function white:sys/motion {s:0.4}

function white:sys/bullet/init

# fx
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 5 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.25 1.5
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 0.9