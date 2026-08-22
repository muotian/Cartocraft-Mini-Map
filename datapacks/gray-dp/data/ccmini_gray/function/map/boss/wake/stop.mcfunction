tellraw @a {translate:"gray.message.boss_wake.stop",color:red}
function ccmini_gray:map/boss/wake/end
scoreboard players set $eventtimer.boss_wake gray.map_event 0
function animated_java:gray_plot_boss/remove/all