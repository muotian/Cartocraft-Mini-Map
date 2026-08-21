summon item_display ~ ~0.5 ~ {Tags:["light_green.enchant_table.display","light_green","light_green.mob"],item:{id:egg,components:{"item_model":"light_green:enchant"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,-0.5,0],scale:[1.03,1.03,1.03]}}
setblock ~ ~ ~ barrel keep
data modify block ~ ~ ~ CustomName set value {"translate":"light_green:golem_enchant_table"}
playsound block.gilded_blackstone.place block @a ~ ~ ~ 1 1