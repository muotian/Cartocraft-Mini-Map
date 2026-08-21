
scoreboard players set @s white.move.rosin.cd 0

# fx
item modify entity @s weapon.offhand {function:"set_components",components:{item_model:"white:rosin_done"}}
item modify entity @s weapon.offhand {function:"set_custom_data",tag:{white:{rosin:true}}}
playsound minecraft:block.resin.place master @a ~ ~ ~ 1 0