execute as @e[tag=Meteoro31] at @s run scoreboard players add @s Tiempo 1
execute as @e[tag=Meteoro31] at @s run scoreboard objectives add CatastrofeDeath deathCount
execute as @e[tag=Meteoro31] if score @s Tiempo matches 3 as @a if items entity @s weapon.mainhand minecraft:firework_star[minecraft:custom_model_data=210101] run tellraw @s ["",{"text":"<Maquina Meterologica> "},{"text":"PELIGRO!!! PELIGRO!!! PELIGRO!!! Este es el fin. Esta cayendo un Meteoro escala Planetaria!!!","bold":true,"color":"yellow"},{"text":" No hay escapatoria","bold":true,"color":"dark_red"}]
execute as @e[tag=Meteoro31] at @s if score @s Tiempo matches 150 run execute as @a at @s run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> Valla. No hay escapatoria"}]
execute as @e[tag=Meteoro31] at @s if score @s Tiempo matches 260 run execute as @a at @s run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> No importa lo que intente. El meteoro destruira el mundo"}]
execute as @e[tag=Meteoro31] at @s if score @s Tiempo matches 370 run execute as @a at @s run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> ya... ya no hay nada que hacer"}]
execute as @e[tag=Meteoro31] at @s if score @s Tiempo matches 480 run execute as @a at @s run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> Fue un gusto haber jugado este mundo contigo jugador"}]
execute as @e[tag=Meteoro31] at @s if score @s Tiempo matches 590 run execute as @a at @s run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> este es el adios"}]
execute as @e[tag=Meteoro31] at @s run tp @s ~ ~-0.3 ~
tp @s ~ ~-2 ~
execute unless block ~ ~-0.1 ~ air run function disasters:meteoro/explosion
function disasters:meteoro/particle
execute as @e[tag=Meteoro31] at @s run function disasters:meteoro/particle
execute as @e[tag=Meteoro31] at @s unless block ~ ~-100 ~ air run summon minecraft:fireball ~ ~2 ~ {ExplosionPower:50b,Motion:[0.0d,-1.0d,0.0d],acceleration_power:1.0d}
execute as @a[scores={CatastrofeDeath=1..}] at @s run spawnpoint @s ~ ~ ~
execute as @a[scores={CatastrofeDeath=1..}] at @s run function disasters:meteoro/lag
