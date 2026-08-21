
execute if entity @s[tag=white.move.liuhsu.close] run return fail

tag @s add white.move.liuhsu.close
execute if items entity @s armor.chest *[custom_data~{white:{liuhsu_id:"liu"}}] run return run function white:move/liuhsu/close/liu
function white:move/liuhsu/close/hsu