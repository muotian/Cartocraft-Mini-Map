
execute if score @s white.move.phineas.cd matches 1.. run return fail

scoreboard players set @s white.move.phineas.cd 50
execute rotated ~ -65 run function white:sys/motion {s:0.4}

tag @e[predicate=white:mob/victim,distance=..4] add white.victim
execute if entity @e[tag=white.victim,distance=..4,limit=1] run function white:move/phineas/hit

# fx
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.5 1.5
playsound white:gugugu master @a ~ ~ ~ 0.75 1

particle cloud ~1.0 ~0.2 ~0.0 0.707 0 -0.707 0.1 0 force
particle cloud ~0.985 ~0.2 ~0.174 0.819 0 -0.574 0.1 0 force
particle cloud ~0.94 ~0.2 ~0.342 0.906 0 -0.423 0.1 0 force
particle cloud ~0.866 ~0.2 ~0.5 0.966 0 -0.259 0.1 0 force
particle cloud ~0.766 ~0.2 ~0.643 0.996 0 -0.087 0.1 0 force
particle cloud ~0.643 ~0.2 ~0.766 0.996 0 0.087 0.1 0 force
particle cloud ~0.5 ~0.2 ~0.866 0.966 0 0.259 0.1 0 force
particle cloud ~0.342 ~0.2 ~0.94 0.906 0 0.423 0.1 0 force
particle cloud ~0.174 ~0.2 ~0.985 0.819 0 0.574 0.1 0 force
particle cloud ~0.0 ~0.2 ~1.0 0.707 0 0.707 0.1 0 force
particle cloud ~-0.174 ~0.2 ~0.985 0.574 0 0.819 0.1 0 force
particle cloud ~-0.342 ~0.2 ~0.94 0.423 0 0.906 0.1 0 force
particle cloud ~-0.5 ~0.2 ~0.866 0.259 0 0.966 0.1 0 force
particle cloud ~-0.643 ~0.2 ~0.766 0.087 0 0.996 0.1 0 force
particle cloud ~-0.766 ~0.2 ~0.643 -0.087 0 0.996 0.1 0 force
particle cloud ~-0.866 ~0.2 ~0.5 -0.259 0 0.966 0.1 0 force
particle cloud ~-0.94 ~0.2 ~0.342 -0.423 0 0.906 0.1 0 force
particle cloud ~-0.985 ~0.2 ~0.174 -0.574 0 0.819 0.1 0 force
particle cloud ~-1.0 ~0.2 ~0.0 -0.707 0 0.707 0.1 0 force
particle cloud ~-0.985 ~0.2 ~-0.174 -0.819 0 0.574 0.1 0 force
particle cloud ~-0.94 ~0.2 ~-0.342 -0.906 0 0.423 0.1 0 force
particle cloud ~-0.866 ~0.2 ~-0.5 -0.966 0 0.259 0.1 0 force
particle cloud ~-0.766 ~0.2 ~-0.643 -0.996 0 0.087 0.1 0 force
particle cloud ~-0.643 ~0.2 ~-0.766 -0.996 0 -0.087 0.1 0 force
particle cloud ~-0.5 ~0.2 ~-0.866 -0.966 0 -0.259 0.1 0 force
particle cloud ~-0.342 ~0.2 ~-0.94 -0.906 0 -0.423 0.1 0 force
particle cloud ~-0.174 ~0.2 ~-0.985 -0.819 0 -0.574 0.1 0 force
particle cloud ~-0.0 ~0.2 ~-1.0 -0.707 0 -0.707 0.1 0 force
particle cloud ~0.174 ~0.2 ~-0.985 -0.574 0 -0.819 0.1 0 force
particle cloud ~0.342 ~0.2 ~-0.94 -0.423 0 -0.906 0.1 0 force
particle cloud ~0.5 ~0.2 ~-0.866 -0.259 0 -0.966 0.1 0 force
particle cloud ~0.643 ~0.2 ~-0.766 -0.087 0 -0.996 0.1 0 force
particle cloud ~0.766 ~0.2 ~-0.643 0.087 0 -0.996 0.1 0 force
particle cloud ~0.866 ~0.2 ~-0.5 0.259 0 -0.966 0.1 0 force
particle cloud ~0.94 ~0.2 ~-0.342 0.423 0 -0.906 0.1 0 force
particle cloud ~0.985 ~0.2 ~-0.174 0.574 0 -0.819 0.1 0 force

particle cloud ~1.5 ~1 ~0.0 0.707 0 0.707 0.15 0 force
particle cloud ~1.477 ~1 ~0.26 0.574 0 0.819 0.15 0 force
particle cloud ~1.41 ~1 ~0.513 0.423 0 0.906 0.15 0 force
particle cloud ~1.299 ~1 ~0.75 0.259 0 0.966 0.15 0 force
particle cloud ~1.149 ~1 ~0.964 0.087 0 0.996 0.15 0 force
particle cloud ~0.964 ~1 ~1.149 -0.087 0 0.996 0.15 0 force
particle cloud ~0.75 ~1 ~1.299 -0.259 0 0.966 0.15 0 force
particle cloud ~0.513 ~1 ~1.41 -0.423 0 0.906 0.15 0 force
particle cloud ~0.26 ~1 ~1.477 -0.574 0 0.819 0.15 0 force
particle cloud ~0.0 ~1 ~1.5 -0.707 0 0.707 0.15 0 force
particle cloud ~-0.26 ~1 ~1.477 -0.819 0 0.574 0.15 0 force
particle cloud ~-0.513 ~1 ~1.41 -0.906 0 0.423 0.15 0 force
particle cloud ~-0.75 ~1 ~1.299 -0.966 0 0.259 0.15 0 force
particle cloud ~-0.964 ~1 ~1.149 -0.996 0 0.087 0.15 0 force
particle cloud ~-1.149 ~1 ~0.964 -0.996 0 -0.087 0.15 0 force
particle cloud ~-1.299 ~1 ~0.75 -0.966 0 -0.259 0.15 0 force
particle cloud ~-1.41 ~1 ~0.513 -0.906 0 -0.423 0.15 0 force
particle cloud ~-1.477 ~1 ~0.26 -0.819 0 -0.574 0.15 0 force
particle cloud ~-1.5 ~1 ~0.0 -0.707 0 -0.707 0.15 0 force
particle cloud ~-1.477 ~1 ~-0.26 -0.574 0 -0.819 0.15 0 force
particle cloud ~-1.41 ~1 ~-0.513 -0.423 0 -0.906 0.15 0 force
particle cloud ~-1.299 ~1 ~-0.75 -0.259 0 -0.966 0.15 0 force
particle cloud ~-1.149 ~1 ~-0.964 -0.087 0 -0.996 0.15 0 force
particle cloud ~-0.964 ~1 ~-1.149 0.087 0 -0.996 0.15 0 force
particle cloud ~-0.75 ~1 ~-1.299 0.259 0 -0.966 0.15 0 force
particle cloud ~-0.513 ~1 ~-1.41 0.423 0 -0.906 0.15 0 force
particle cloud ~-0.26 ~1 ~-1.477 0.574 0 -0.819 0.15 0 force
particle cloud ~-0.0 ~1 ~-1.5 0.707 0 -0.707 0.15 0 force
particle cloud ~0.26 ~1 ~-1.477 0.819 0 -0.574 0.15 0 force
particle cloud ~0.513 ~1 ~-1.41 0.906 0 -0.423 0.15 0 force
particle cloud ~0.75 ~1 ~-1.299 0.966 0 -0.259 0.15 0 force
particle cloud ~0.964 ~1 ~-1.149 0.996 0 -0.087 0.15 0 force
particle cloud ~1.149 ~1 ~-0.964 0.996 0 0.087 0.15 0 force
particle cloud ~1.299 ~1 ~-0.75 0.966 0 0.259 0.15 0 force
particle cloud ~1.41 ~1 ~-0.513 0.906 0 0.423 0.15 0 force
particle cloud ~1.477 ~1 ~-0.26 0.819 0 0.574 0.15 0 force