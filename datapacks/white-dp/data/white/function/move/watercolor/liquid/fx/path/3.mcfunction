
particle dust_color_transition{from_color:[0.490,1.000,0.627],to_color:[0.141,0.561,0.463],scale:0.75} ~ ~ ~ 0.1 0.05 0.1 0 1 force

execute unless entity @s[distance=..0.3] positioned ^ ^ ^0.3 run function white:move/watercolor/liquid/fx/path/3
