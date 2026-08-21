#dialog show @s {type:confirmation,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit4","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit5","color":"white"}]},\
],\
yes:{label:{"translate":"light_green:yes"},action:{type:"run_command",command:'function light_green:mob/boss/big_hoglin/limit/dialog/always/yes'}},\
no:{label:{"translate":"light_green:no"},action:{type:"run_command",command:'function light_green:mob/boss/big_hoglin/limit/dialog/always/no'}}\
}
dialog show @s {type:confirmation,title:'',body:[\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit4","color":"white"}]},\
{type:plain_message,contents:[{"translate":"light_green:big_hoglin_limit5","color":"white"}]},\
],\
yes:{label:{"translate":"light_green:yes"},action:{type:"run_command",command:'trigger light_green.big_hoglin.limit set 3'}},\
no:{label:{"translate":"light_green:no"},action:{type:"run_command",command:'trigger light_green.big_hoglin.limit set 4'}}\
}