
execute as @a[tag=white.move.watercolor] at @s run function white:move/watercolor/main
execute as @e[tag=white.move.watercolor.liquid,type=item] at @s run function white:move/watercolor/liquid/main

execute as @a[tag=white.move.flute] at @s run function white:move/flute/main
execute as @e[tag=white.move.flute.note,type=marker] at @s run function white:move/flute/note/main

execute as @e[tag=white.move.ink_bottle.bottle,type=marker] at @s run function white:move/ink_bottle/bottle/main

execute as @e[tag=white.move.temptation.frisbee,type=item_display] at @s run function white:move/temptation/frisbee/main
execute as @e[tag=white.move.temptation.blackhole,type=marker] at @s run function white:move/temptation/blackhole/main

execute as @e[tag=white.move.amitatito.cat,type=cat] at @s run function white:move/amigatito/cat/main

execute as 147dbc88-8332-46b3-97cc-4d362aca6e24 at @s run function white:move/liuhsu/line/main

scoreboard players remove @e[scores={white.move.prism_oath.cd=1..}] white.move.prism_oath.cd 1
execute as @a[tag=white.move.prism_oath.s1] at @s rotated ~ 0 run function white:move/prism_oath/s1/main
execute as @e[tag=white.move.prism_oath.s1.square,type=marker] at @s run function white:move/prism_oath/s1/square/main
execute as @e[tag=white.move.prism_oath.s2.wave,type=marker] at @s run function white:move/prism_oath/s2/wave/main
execute as @e[tag=white.move.prism_oath.s2.brust,type=item] at @s run function white:move/prism_oath/s2/brust/main
execute as @e[tag=white.move.prism_oath.melee.count_disp,type=text_display] at @s run function white:move/prism_oath/melee/count_disp/main

execute as @e[tag=white.move.sovereign_blade.blade,type=item_display] at @s run function white:move/sovereign_blade/blade/main