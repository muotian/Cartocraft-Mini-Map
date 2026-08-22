tp @e[type=parched,tag=gray.boss.after_battle.hitbox,limit=1] ~ -1000 ~
kill @e[type=parched,tag=gray.boss.after_battle.hitbox,limit=1]
execute as @e[type=item_display,tag=aj.gray_plot_boss.root,limit=1] at @s run function animated_java:gray_plot_boss/animations/plot_death/play
tag @e[type=item_display,tag=gray.boss.after_battle_breath,limit=1] remove gray.boss.after_battle_breath
scoreboard players set $eventtimer.boss_bad_end gray.map_event 61
scoreboard players reset $eventtimer.boss_weak gray.map_event 