dialog show @s {type:confirmation,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit2","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit3","color":"white"}]},\
],\
yes:{label:{"translate":"light_green:yes"},action:{type:"run_command",command:'trigger light_green.big_hoglin.limit set 1'}},\
no:{label:{"translate":"light_green:no"},action:{type:"run_command",command:'trigger light_green.big_hoglin.limit set 2'}}\
}