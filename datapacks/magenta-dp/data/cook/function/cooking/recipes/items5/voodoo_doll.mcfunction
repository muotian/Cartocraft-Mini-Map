#

summon item ~ ~1 ~ {Item:{id:"totem_of_undying",\
count:1,components:{\
item_name:[{translate:"magenta.item.voodoo_doll.name","color":"light_purple"}],\
lore:[[{translate:"magenta.item.voodoo_doll.lore",color:blue,italic:false}]],\
item_model:"magenta:voodoo_doll",\
death_protection:{death_effects:[{type:"apply_effects",effects:[{id:"instant_health", amplifier:2, duration:1}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 480
