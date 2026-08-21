
scoreboard players operation #oath_count white.main = @s white.move.prism_oath.count
function white:move/prism_oath/actionbar/full
function white:move/prism_oath/actionbar/empty

data modify storage white:temp prism_oath.display insert 3 value {color:"dark_gray",text:" | "}
data modify storage white:temp prism_oath.display insert 7 value {color:"dark_gray",text:" | "}

title @s actionbar [{nbt:"prism_oath.display[]",storage:"white:temp",separator:" ",interpret:true}]

data remove storage white:temp prism_oath