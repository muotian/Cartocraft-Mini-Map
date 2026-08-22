execute as @a[gamemode=!spectator] at @e[type=marker,tag=gray.boss.battle.tp,limit=1] rotated 0 0 run tp @s ~ ~ ~ ~ ~
function animated_java:gray_plot_boss/remove/all

function ccmini_gray:map/boss/battle/remove
function ccmini_gray:map/boss/battle/init

#傳送位子marker
#summon minecraft:marker ~ ~ ~ {Tags:[gray.boss.battle.tp]}