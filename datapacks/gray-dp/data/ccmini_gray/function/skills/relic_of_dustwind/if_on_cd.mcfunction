#如果不在cd就回傳1，否則發出冷卻訊息
execute if score @s gray.rightclick matches 1.. unless score @s gray.relic_of_dustwind_cd matches 1.. run return 1
execute if score @s gray.rightclick matches 1.. run tellraw @s {"translate":"gray.message.relic_of_dustwind_cd"}