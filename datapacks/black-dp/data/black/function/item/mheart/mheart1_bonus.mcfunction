#by JaCkY99
#black

playsound block.bell.use player @a ~ ~ ~ 1 2
playsound entity.snow_golem.death player @a ~ ~ ~ 1 0.75

particle block{block_state:snow_block} ~ ~1 ~ 0.35 0.75 0.35 0.1 100

execute store result score #black.temp black.temp run data get entity @s active_effects[{id:"minecraft:slowness"}].amplifier
scoreboard players add #black.temp black.temp 1
execute store result storage black temp.mheart1.dmg int 4 run scoreboard players get #black.temp black.temp
function black:item/mheart/damage with storage black temp.mheart1