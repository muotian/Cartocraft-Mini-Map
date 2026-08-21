
execute if score #oath_count white.main matches 9.. run return fail

scoreboard players add #oath_count white.main 1
data modify storage white:temp prism_oath.display append value {"color":"gray","text":"ღ"}

function white:move/prism_oath/actionbar/empty