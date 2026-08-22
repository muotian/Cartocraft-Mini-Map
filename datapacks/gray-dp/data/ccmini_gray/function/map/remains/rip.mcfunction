execute as @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:music_disc_13",components:{"minecraft:custom_data":{gray_flower:true}}}}] run kill @s
tag @s remove gray.plot.remains.unactivated
execute at @s as @a[distance=..10] run advancement grant @s only ccmini_gray:rip_warrior