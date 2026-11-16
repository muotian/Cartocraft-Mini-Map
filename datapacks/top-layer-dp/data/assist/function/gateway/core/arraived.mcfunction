#> assist:gateway/core/arraived

scoreboard players reset @s assist.gateway.awake
execute if score @s assist.gateway.id matches 0 unless score $first_return assist.gateway matches 1.. run function assist:gateway/core/first_return
execute if score @s assist.gateway.id matches 0 unless score $shift_notice assist.gateway matches 1.. run function assist:gateway/core/shift_notice
data merge block ~ ~ ~ {Age:2399L}

return 1
