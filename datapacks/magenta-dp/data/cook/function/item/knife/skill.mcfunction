#

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5

effect give @s slowness 2 2 true

data modify storage magenta kf set value {"dmg":0}
execute store result storage magenta kf.dmg float 0.2 run attribute @s attack_damage get
execute anchored eyes run function cook:item/knife/cloud with storage magenta kf

scoreboard players set @s MagentaKnifeCD 200
