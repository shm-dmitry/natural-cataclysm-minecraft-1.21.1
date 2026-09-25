# disasters:tsunami/spawn
execute store result storage disasters:tsunami x int 1 run data get entity @s Pos[0]
execute store result storage disasters:tsunami z int 1 run data get entity @s Pos[2]
summon marker ~ ~ ~ {Tags:["Tsunami","Catastrofe"]}
execute at @s run forceload add ~ ~ ~ ~