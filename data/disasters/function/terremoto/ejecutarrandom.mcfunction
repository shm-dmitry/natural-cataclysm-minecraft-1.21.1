# disasters:terremoto/ejecutarrandom
# Спавн эпицентра землетрясения

function disasters:terremoto/random

execute if score rng# Random matches 1 run summon marker ~ ~ ~ {Tags:["Terremoto","Grieta","Catastrofe"]}
execute if score rng# Random matches 2 run summon marker ~ ~ ~ {Tags:["Terremoto","Montana","Catastrofe"]}

scoreboard players reset rng# Random