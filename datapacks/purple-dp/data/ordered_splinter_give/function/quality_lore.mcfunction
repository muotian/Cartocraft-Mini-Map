execute if score $quality wool_purple.main.math matches 0 run data modify storage give:weapon color set value "white"
execute if score $quality wool_purple.main.math matches 0 run return run data modify storage give:weapon quality_text set value '{"translate":"quality.common",italic:false,color:"white"}'
execute if score $quality wool_purple.main.math matches 1 run data modify storage give:weapon color set value "green"
execute if score $quality wool_purple.main.math matches 1 run return run data modify storage give:weapon quality_text set value '{"translate":"quality.handy",italic:false,color:"green"}'
execute if score $quality wool_purple.main.math matches 2 run data modify storage give:weapon color set value "aqua"
execute if score $quality wool_purple.main.math matches 2 run return run data modify storage give:weapon quality_text set value '{"translate":"quality.fine",italic:false,color:"aqua"}'
execute if score $quality wool_purple.main.math matches 3 run data modify storage give:weapon color set value "light_purple"
execute if score $quality wool_purple.main.math matches 3 run return run data modify storage give:weapon quality_text set value '{"translate":"quality.superior",italic:false,color:"light_purple"}'
execute if score $quality wool_purple.main.math matches 4 run data modify storage give:weapon color set value "gold"
execute if score $quality wool_purple.main.math matches 4 run return run data modify storage give:weapon quality_text set value '{"translate":"quality.masterwork",italic:false,color:"gold"}'