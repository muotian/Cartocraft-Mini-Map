#

playsound block.anvil.place block @a ~ ~ ~ 0.5 0.6 0
setblock ~ ~ ~ hopper{CustomName:{translate:"magenta.block.cooking_pot.name","italic": false},lock:{predicates:{"minecraft:custom_data":{"Locked":""}}}}
#execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["CookingPot"]}
execute align xyz run summon block_display ~0.5 ~ ~0.5 {block_state:{Name:"cauldron"},Tags:["CookingPot"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.49f,0f,-0.49f],scale:[0.98f,1.005f,0.98f]}}

execute align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:"beef",count:1},Tags:["CookingPot","MagentaSlot1"],transformation:{left_rotation:[-0.5f,0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0.8f,-0.2f],scale:[0.3f,0.3f,0.3f]}}
execute align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:"porkchop",count:1},Tags:["CookingPot","MagentaSlot2"],transformation:{left_rotation:[0f,0.7f,0.7f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.2f,0.8f,-0.2f],scale:[0.3f,0.3f,0.3f]}}
execute align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:"mutton",count:1},Tags:["CookingPot","MagentaSlot3"],transformation:{left_rotation:[-0.7f,0f,0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[0.3f,0.3f,0.3f]}}
execute align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:"chicken",count:1},Tags:["CookingPot","MagentaSlot4"],transformation:{left_rotation:[0.7f,0f,0f,-0.7f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0.8f,0.2f],scale:[0.3f,0.3f,0.3f]}}
execute align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:"rabbit",count:1},Tags:["CookingPot","MagentaSlot5"],transformation:{left_rotation:[0.5f,-0.5f,-0.5f,-0.5f],right_rotation:[0f,0f,0f,1f],translation:[0.2f,0.8f,0.2f],scale:[0.3f,0.3f,0.3f]}}

kill @s
