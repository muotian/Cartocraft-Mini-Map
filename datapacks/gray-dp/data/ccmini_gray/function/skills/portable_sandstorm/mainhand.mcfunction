#消耗物品並發射
execute as @s[gamemode=!creative] run item replace entity @s weapon.mainhand with air
execute anchored eyes positioned ^ ^ ^ run function ccmini_gray:skills/portable_sandstorm/motion