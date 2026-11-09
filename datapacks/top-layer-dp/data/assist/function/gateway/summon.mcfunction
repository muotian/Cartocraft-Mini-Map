#> assist:gateway/summon

execute as @s[y_rotation=-45..44] align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["assist.gateway","assist.gateway.core"],height:1f,width:1.01f}
execute as @s[y_rotation=45..134] align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["assist.gateway","assist.gateway.core"],height:1f,width:1.01f,Rotation:[90f,0f]}
execute as @s[y_rotation=135..224] align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["assist.gateway","assist.gateway.core"],height:1f,width:1.01f,Rotation:[180f,0f]}
execute as @s[y_rotation=225..315] align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["assist.gateway","assist.gateway.core"],height:1f,width:1.01f,Rotation:[-90f,0f]}

$function assist:gateway/init {color:"$(color)"}
