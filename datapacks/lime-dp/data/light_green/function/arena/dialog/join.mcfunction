tag @s add light_green.boss.challenger

execute unless score $piglin_girl.already light_green.main.math matches 1 run return run dialog show @s {type:multi_action,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:arena_dialog","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:arena_shield","color":"gray"}]},\
{type:plain_message,contents:[{"text":""}]}\
],\
actions:[\
{label:{"translate":"light_green:leave_challenge"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 4'},width:200},\
{label:{"translate":"light_green:big_hoglin"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 1'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}

execute if score $piglin_girl.already light_green.main.math matches 1 run return run dialog show @s {type:multi_action,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:arena_dialog","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:arena_shield","color":"gray"}]},\
{type:plain_message,contents:[{"text":""}]}\
],\
actions:[\
{label:{"translate":"light_green:leave_challenge"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 4'},width:200},\
{label:{"translate":"light_green:big_hoglin"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 1'},width:200},\
{label:{translate:"light_green:piglin_general_name"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 2'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}
