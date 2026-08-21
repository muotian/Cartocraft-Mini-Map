
tag @s add self
execute at @s if entity @e[tag=self,distance=..0.01,limit=1] run return run tag @s remove self

tag @s remove self
return fail