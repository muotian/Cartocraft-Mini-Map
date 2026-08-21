execute unless score $piglin_girl_level2 light_green.main.math matches 1 run trigger light_green.piglin_girl_type set 1
execute if score $piglin_girl_level2 light_green.main.math matches 1 run dialog show @s {type:multi_action,title:'',body:[],\
actions:[\
{label:{"translate":"light_green:arena_piglin_girl.normal_type"},action:{type:"run_command",command:'trigger light_green.piglin_girl_type set 1'},width:200},\
{label:{"translate":"light_green:arena_piglin_girl.skip_1"},action:{type:"run_command",command:'trigger light_green.piglin_girl_type set 2'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}