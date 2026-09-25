spreadplayers ~ ~ 1 30 true @s
fill ~2 ~-1 ~-2 ~-2 ~-1 ~2 coarse_dirt replace grass_block
fill ~-2 ~-1 ~2 ~2 ~-1 ~-2 coarse_dirt replace dirt
fill ~-2 ~ ~2 ~2 ~ ~-2 dead_bush replace grass_block
fill ~2 ~ ~-2 ~-2 ~ ~2 dead_bush replace tall_grass
execute if block ~ ~-1 ~ #minecraft:leaves run setblock ~ ~ ~ fire
execute if block ~ ~-1 ~ #minecraft:logs run setblock ~ ~ ~ fire
fill ~-2 ~ ~2 ~2 ~ ~-2 dead_bush replace #minecraft:flowers
fill ~-50 ~ ~50 ~0 ~-5 ~-50 water[level=5] replace water
fill ~1 ~ ~50 ~50 ~-5 ~-50 water[level=5] replace water
scoreboard players add @s Tiempo 1
execute if score @s Tiempo matches 2000.. run kill @s
execute as @a at @s run tp @e[tag=sequia,distance=50..] ~ ~ ~