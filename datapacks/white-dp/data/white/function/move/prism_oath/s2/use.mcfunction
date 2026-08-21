
execute unless score @s white.move.prism_oath.count matches 3.. run return run function white:move/prism_oath/no_oath

scoreboard players remove @s white.move.prism_oath.count 3
function white:move/prism_oath/s2/wave/use

execute rotated ~ 0 positioned ^ ^5 ^12 run summon marker ~ ~0.4 ~ {Tags:[white.move.prism_oath.s2.wave_target,"summon"]}
function white:sys/bullet/init

# fx
function white:move/prism_oath/actionbar/use