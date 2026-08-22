tag @s add pink.look

#
scoreboard players operation $this pink.id = @s pink.id

$execute as @e[tag=pink_skill_slot_$(id)] if score @s pink.id = $this pink.id run tag @s add this_slot

#
$title @s actionbar ["",{text:"> ",color:"gray"},{translate:"item.pink.$(name)",color:"aqua"},{text:"  - ",color:"dark_gray"},{text:"   [ ",color:"gray"},{keybind:"key.attack",color:"green"},{text:" ] ",color:"gray"},{translate:"pink.ui2"}]

#execute if items entity @s weapon.mainhand *[custom_data~{pink_magic:1b,pink_skill_type:1}] unless items entity @n[tag=this_slot] container.* black_wool run title @s actionbar ["",{text:"> ",color:"gray"},{translate:"item.pink.attack",color:"aqua"},{text:"  - ",color:"dark_gray"},{text:" [ ",color:"gray"},{keybind:"key.use",color:"green"},{text:" ] ",color:"gray"},{translate:"pink.ui1"},{text:"   [ ",color:"gray"},{keybind:"key.attack",color:"green"},{text:" ] ",color:"gray"},{translate:"pink.ui2"}]
$execute if items entity @s weapon.mainhand *[custom_data~{pink_magic:1b,pink_skill_type:$(id)}] if items entity @n[tag=this_slot] container.* black_wool run title @s actionbar ["",{text:"> ",color:"gray"},{translate:"item.pink.$(name)",color:"aqua"},{text:"  - ",color:"dark_gray"},{text:" [ ",color:"gray"},{keybind:"key.use",color:"green"},{text:" ] ",color:"gray"},{translate:"pink.ui1"}]

#
$execute unless items entity @s weapon.mainhand *[custom_data~{pink_magic:1b,pink_skill_type:$(id)}] if items entity @n[tag=this_slot] container.* black_wool run title @s actionbar ["",{text:"> ",color:"gray"},{translate:"item.pink.$(name)",color:"aqua"}]


# Glow
team join pink.aqua @n[tag=this_slot]
tag @n[tag=this_slot] add pink.skill_slot.glow

tag @n[tag=this_slot] remove this_slot
