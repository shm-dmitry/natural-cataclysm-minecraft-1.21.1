execute unless entity @e[tag=Catastrofe] at @s run scoreboard players add CatastoTeimpo Tiempo 1
execute if score CatastoTeimpo Tiempo matches 6000 run function disasters:ejecutarrandom
execute if score CatastoTeimpo Tiempo matches 6001 run scoreboard players reset CatastoTeimpo Tiempo

#detector
execute as @e[tag=caos] at @s run function disasters:tick/caos


execute as @e[tag=tornado] at @s run function disasters:tick/tornado

#Terremoto
execute as @e[tag=Terremoto] at @s run function disasters:tick/terremoto

#Meteoro
execute as @e[tag=MeteoroWatcher] at @s run function disasters:tick/meteor

#Tsunami
execute as @e[tag=Tsunami] at @s run function disasters:tick/tsunami

#blackhole
#execute as @e[tag=blackole] at @s run function disasters:tick/blackole

function disasters:nc/handle_triggers
