$execute at @e[type=marker,tag=$(monu_tag),limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;$(fw_color)],fade_colors:[I;0]}]}}}}

scoreboard players add $global monu_complete_step 1

execute if score $global monu_complete_step matches 1 run data modify storage monu:complete fw set from storage monu:points orange
execute if score $global monu_complete_step matches 2 run data modify storage monu:complete fw set from storage monu:points magenta
execute if score $global monu_complete_step matches 3 run data modify storage monu:complete fw set from storage monu:points light_blue
execute if score $global monu_complete_step matches 4 run data modify storage monu:complete fw set from storage monu:points yellow
execute if score $global monu_complete_step matches 5 run data modify storage monu:complete fw set from storage monu:points lime
execute if score $global monu_complete_step matches 6 run data modify storage monu:complete fw set from storage monu:points pink
execute if score $global monu_complete_step matches 7 run data modify storage monu:complete fw set from storage monu:points gray
execute if score $global monu_complete_step matches 8 run data modify storage monu:complete fw set from storage monu:points light_gray
execute if score $global monu_complete_step matches 9 run data modify storage monu:complete fw set from storage monu:points cyan
execute if score $global monu_complete_step matches 10 run data modify storage monu:complete fw set from storage monu:points purple
execute if score $global monu_complete_step matches 11 run data modify storage monu:complete fw set from storage monu:points blue
execute if score $global monu_complete_step matches 12 run data modify storage monu:complete fw set from storage monu:points brown
execute if score $global monu_complete_step matches 13 run data modify storage monu:complete fw set from storage monu:points green
execute if score $global monu_complete_step matches 14 run data modify storage monu:complete fw set from storage monu:points red
execute if score $global monu_complete_step matches 15 run data modify storage monu:complete fw set from storage monu:points black

execute if score $global monu_complete_step matches ..15 run schedule function monu:wool/complete_firework_scheduled 20t

execute if score $global monu_complete_step matches 16 as @e[type=block_display,tag=all_stars] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute if score $global monu_complete_step matches 16 run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 20 1
execute if score $global monu_complete_step matches 16 run title @a title {"bold":true,"color":"gold","italic":false,"translate":"monu_complete_title"}
execute if score $global monu_complete_step matches 16 run title @a subtitle {"bold":false,"color":"white","italic":false,"translate":"monu_complete_subtitle","underlined":true}