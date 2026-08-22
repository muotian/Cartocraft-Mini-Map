scoreboard players enable @s cyan.norla
tellraw @s[scores={cyan.norla=1}] {translate:"text.cyan.norla.a1"}
tellraw @s[scores={cyan.norla=2}] {translate:"text.cyan.norla.a2"}
tellraw @s[scores={cyan.norla=3}] {translate:"text.cyan.norla.a3"}
tellraw @s[scores={cyan.norla=4}] {translate:"text.cyan.norla.a4"}
tag @s[scores={cyan.norla=1}] add cyan.q1
tag @s[scores={cyan.norla=2}] add cyan.q2
tag @s[scores={cyan.norla=3}] add cyan.q3
tellraw @s {translate:"text.cyan.norla.q1",click_event:{action:"run_command",command:"trigger cyan.norla set 1"}}
tellraw @s[tag=cyan.q1] {translate:"text.cyan.norla.q2",click_event:{action:"run_command",command:"trigger cyan.norla set 2"}}
tellraw @s[tag=cyan.q2] {translate:"text.cyan.norla.q3",click_event:{action:"run_command",command:"trigger cyan.norla set 3"}}
tellraw @s[tag=cyan.q3] {translate:"text.cyan.norla.q4",click_event:{action:"run_command",command:"trigger cyan.norla set 4"}}