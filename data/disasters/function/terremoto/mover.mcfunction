execute as @e[tag=Terremoto1] at @s run tp ^ ^ ^1
execute as @e[tag=Terremoto2] at @s run tp ^ ^ ^-1
execute as @e[tag=Terremoto3] at @s run tp ^1 ^ ^1
execute as @e[tag=Terremoto4] at @s run tp ^1 ^ ^-1
execute as @e[tag=Terremoto5] at @s run tp ^-1 ^ ^1
execute as @e[tag=Terremoto6] at @s run tp ^1 ^ ^-1
execute as @e[tag=Terremoto7] at @s run tp ^1 ^ ^
execute as @e[tag=Terremoto8] at @s run tp ^-1 ^ ^

execute as @e[tag=Terremoto] at @s if score @s Terremoto matches 1 run tp ^3 ^ ^
execute as @e[tag=Terremoto] at @s if score @s Terremoto matches 2 run tp ^-3 ^ ^
execute as @e[tag=Terremoto] at @s if score @s Terremoto matches 3 run tp ^-3 ^ ^
execute as @e[tag=Terremoto] at @s if score @s Terremoto matches 4 run tp ^3 ^ ^
execute as @e[tag=Terremoto] at @s if score @s Terremoto matches 5 run scoreboard players set @s Terremoto 1