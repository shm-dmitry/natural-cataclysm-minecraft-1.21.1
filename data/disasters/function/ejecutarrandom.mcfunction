function disasters:random

execute unless entity @e[tag=Catastrofe] at @s if score rng# Random matches 2..3 run function disasters:catastrofe

scoreboard players reset rng# Random