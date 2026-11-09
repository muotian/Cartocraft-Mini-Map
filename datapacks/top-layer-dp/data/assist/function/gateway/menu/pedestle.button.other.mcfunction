#> assist:gateway/menu/pedestle.button.other

$execute store result score $active assist.gateway if data storage assist:gateway data[{id:$(index)}]
execute if score $active assist.gateway matches 0 run function assist:gateway/menu/pedestle.button.inactive
execute if score $active assist.gateway matches 1 run function assist:gateway/menu/pedestle.button.active with storage assist:gateway args
