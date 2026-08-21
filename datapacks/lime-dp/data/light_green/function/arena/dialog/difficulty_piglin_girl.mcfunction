scoreboard players operation $piglin_girl_type light_green.main.math = @s light_green.piglin_girl_type
dialog show @s {type:multi_action,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.1","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.2","color":"white"}],width:300},\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.piglin_girl","color":"white"}]}\
],\
actions:[\
{label:{"translate":"options.difficulty.easy"},action:{type:"run_command",command:'trigger light_green.difficulty_piglin set 1'},width:200},\
{label:{"translate":"options.difficulty.normal"},action:{type:"run_command",command:'trigger light_green.difficulty_piglin set 2'},width:200},\
{label:{"translate":"options.difficulty.hard"},action:{type:"run_command",command:'trigger light_green.difficulty_piglin set 3'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}