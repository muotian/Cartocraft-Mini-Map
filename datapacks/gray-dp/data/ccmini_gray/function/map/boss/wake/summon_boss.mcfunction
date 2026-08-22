#生成boss
execute at @e[tag=gray.boss.wake.summon_boss_pos] rotated 105 0.0 run function animated_java:gray_plot_boss/summon {args:{animation:"plot_wake",start_animation:true}}


#生成位子marker
#summon marker ~ ~ ~ {Tags:[gray.boss.wake.summon_boss_pos]}

