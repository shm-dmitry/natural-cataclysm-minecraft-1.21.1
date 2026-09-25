scoreboard players add @s Terremoto 1
execute if score @s Terremoto matches 1 run tp @s ~0.75 ~ ~
execute if score @s Terremoto matches 2 run tp @s ~-0.75 ~ ~
execute if score @s Terremoto matches 3 run tp @s ~-0.75 ~ ~
execute if score @s Terremoto matches 4 run tp @s ~ ~ ~-0.75
execute if score @s Terremoto matches 5 run tp @s ~ ~ ~0.75
execute if score @s Terremoto matches 6 run tp @s ~ ~ ~-0.75
execute if score @s Terremoto matches 7 run tp @s ~ ~ ~-0.75

playsound block.grass.break ambient @s ~ ~ ~ 1 1 1
playsound block.stone.break ambient @s ~ ~ ~ 1 1 1
playsound block.sand.break ambient @s ~ ~ ~ 1 1 1

execute if score @s Terremoto matches 8 run scoreboard players set @s Terremoto 1