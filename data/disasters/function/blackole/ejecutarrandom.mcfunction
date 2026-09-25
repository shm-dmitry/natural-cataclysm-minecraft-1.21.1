function disasters:blackole/random

execute if score rng# Random matches 1 run particle minecraft:firework ~ ~ ~ 0 0 0 0 0
execute if score rng# Random matches 2 run summon minecraft:item_display ~ ~-1 ~ {Tags:["Bloqueblackole"],CustomName:'{"text":"un bloque"}'}
execute if score rng# Random matches 3 run summon minecraft:item_display ~ ~-1 ~ {Tags:["Bloqueblackole"],CustomName:'{"text":"un bloque"}'}

scoreboard players reset rng# Random