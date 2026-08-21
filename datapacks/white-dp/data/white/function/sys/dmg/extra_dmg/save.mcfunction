
# tellraw @a ["Damage : ",{score:{name:"#damage",objective:"white.main"}}," | ","Health : ",{score:{name:"#health",objective:"white.main"}}," | ","Absorption : ",{score:{name:"#healthAbsorb",objective:"white.main"}}]
scoreboard players operation #healthAbsorb white.main -= #damage white.main
execute if score #healthAbsorb white.main matches ..-1 run scoreboard players operation #health white.main += #healthAbsorb white.main
execute if score #healthAbsorb white.main matches ..-1 run scoreboard players set #healthAbsorb white.main 0

execute if score #health white.main matches ..0 run return run kill @s
execute store result entity @s Health float 0.01 run scoreboard players get #health white.main
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get #healthAbsorb white.main