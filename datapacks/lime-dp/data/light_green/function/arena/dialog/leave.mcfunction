tag @s remove light_green.boss.challenger

dialog show @s {type:multi_action,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:arena_join","color":"white"}]}\
],\
actions:[\
{label:{"translate":"light_green:join_challenge"},action:{type:"run_command",command:'trigger light_green.arena.dialog set 3'},width:200}],\
exit_action:{label:{"translate":"light_green:close"},width:200},\
columns:1}