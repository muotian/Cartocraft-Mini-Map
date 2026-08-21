
tag @s remove white.move.rosin.on_hit
scoreboard players set @s white.move.rosin.cd 160

item modify entity @s weapon.offhand {function:"set_components",components:{item_model:"resin_clump"}}
item modify entity @s weapon.offhand {function:"set_custom_data",tag:{white:{rosin:false}}}