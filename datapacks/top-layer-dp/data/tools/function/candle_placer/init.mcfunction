scoreboard objectives add tools.candle_placer dummy

scoreboard players set $init tools.candle_placer 1

data modify storage tools:candle_placer colors set value [\
  { id: "none" },\
  { id: "white" },\
  { id: "orange" },\
  { id: "magenta" },\
  { id: "light_blue" },\
  { id: "yellow" },\
  { id: "lime" },\
  { id: "pink" },\
  { id: "gray" },\
  { id: "light_gray" },\
  { id: "cyan" },\
  { id: "purple" },\
  { id: "blue" },\
  { id: "brown" },\
  { id: "green" },\
  { id: "red" },\
  { id: "black" }\
]

data modify storage tools:candle_placer boolean set value [\
  { id: "true" },\
  { id: "false" }\
]
