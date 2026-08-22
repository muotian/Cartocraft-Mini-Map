scoreboard players set $guide_display gray.map_event 1
execute if score $state gray.map_event matches 0 at @e[type=marker,tag=gray.guide.1,limit=1] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 1 at @e[type=marker,tag=gray.guide.2,limit=1] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 2 if score $beacon_amount gray.map_event = $get_ember_amount gray.map_event at @e[type=marker,tag=gray.guide.3_1,limit=1,sort=nearest] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 2 if score $beacon_amount gray.map_event < $get_ember_amount gray.map_event at @e[type=marker,tag=gray.guide.3_2,limit=1,sort=nearest] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 3 at @e[type=marker,tag=gray.guide.4,limit=1] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 4 at @e[type=parched,tag=gray.boss.hitbox,limit=1] positioned ~ ~2.5 ~ rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 4 at @e[type=parched,tag=gray.boss.after_battle.hitbox,limit=1] positioned ~ ~2.5 ~ rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}
execute if score $state gray.map_event matches 5 at @e[type=marker,tag=gray.guide.6,limit=1] rotated 72 13.8 run function animated_java:gray_guide/summon {args:{animation:"shake",start_animation:true}}




#marker
#summon marker ~ ~ ~ {Tags:[gray.guide.1]} 遺骸
#summon marker ~ ~ ~ {Tags:[gray.guide.2]} 火炬
#summon marker ~ ~ ~ {Tags:[gray.guide.3_1]} 火種
#summon marker ~ ~ ~ {Tags:[gray.guide.3_2]} 烽火
#summon marker ~ ~ ~ {Tags:[gray.guide.4]} 備戰
#沒有marker,鎖boss位子 戰鬥
#summon marker ~ ~ ~ {Tags:[gray.guide.6]} 結束