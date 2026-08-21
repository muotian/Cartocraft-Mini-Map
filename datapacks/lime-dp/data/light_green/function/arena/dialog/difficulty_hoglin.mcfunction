dialog show @s {type:multi_action,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.1","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.2","color":"white"}],width:300},\
{type:plain_message,contents:[{"translate":"light_green:arena_difficulty.hoglin","color":"white"}]}\
],\
actions:[\
{label:{"translate":"options.difficulty.easy"},action:{type:"run_command",command:'trigger light_green.difficulty_hoglin set 1'},width:200},\
{label:{"translate":"options.difficulty.normal"},action:{type:"run_command",command:'trigger light_green.difficulty_hoglin set 2'},width:200},\
{label:{"translate":"options.difficulty.hard"},action:{type:"run_command",command:'trigger light_green.difficulty_hoglin set 3'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}
