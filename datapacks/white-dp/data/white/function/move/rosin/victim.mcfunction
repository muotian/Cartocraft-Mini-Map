
function white:sys/dmg/extra_dmg/load
scoreboard players set #damage white.main 800
function white:sys/dmg/extra_dmg/save

# fx
particle minecraft:item{item:resin_clump} ~ ~1 ~ 0.3 0.6 0.3 0 20 force
particle minecraft:explosion ~ ~1 ~ 1000 0 1000 0.001 0 force
playsound minecraft:block.honey_block.slide master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0