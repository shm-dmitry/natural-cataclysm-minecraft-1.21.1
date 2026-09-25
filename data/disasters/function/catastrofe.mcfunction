function disasters:catastroferandom

execute if score rng# Random matches 1 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN1","caos"]} 
execute if score rng# Random matches 2 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN2","caos"]} 
execute if score rng# Random matches 3 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN3","caos"]} 
execute if score rng# Random matches 4 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN4","caos"]} 
execute if score rng# Random matches 5 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN5","caos"]} 
execute if score rng# Random matches 6 run execute as @e[sort=random,limit=1] at @s run summon interaction ~ ~ ~ {Tags:["CN6","caos"]} 

scoreboard players reset rng# Random