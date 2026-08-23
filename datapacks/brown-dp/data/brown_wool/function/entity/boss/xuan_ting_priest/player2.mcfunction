
scoreboard players add @s brown_wool.xuan_ting_priest.playsound 1

execute if score @s brown_wool.xuan_ting_priest.playsound matches 1540.. run stopsound @s * brown_wool:custom.jingle_punks_cataclysmic_molten_core
execute if score @s brown_wool.xuan_ting_priest.playsound matches 1540.. run playsound brown_wool:custom.jingle_punks_cataclysmic_molten_core record @s
execute if score @s brown_wool.xuan_ting_priest.playsound matches 1540.. run scoreboard players reset @s brown_wool.xuan_ting_priest.playsound