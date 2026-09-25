function disasters:blackole/comandos
execute as @e[tag=!blackole,tag=!generarblackbloque] at @s run scoreboard players add @e[tag=blackole,distance=..4] Tornado 1
execute as @e[tag=!blackole,tag=!generarblackbloque] at @s if entity @e[tag=blackole,distance=..4] run kill @s
execute if score @s Tornado matches 50 run scoreboard players add @s Tiempo 1
execute if score @s Tornado matches 51.. run scoreboard players set @s Tornado 1
execute if score @s Tiempo matches 54 run kill @s
execute as @e[tag=generarblackbloque] at @s run function disasters:blackole/ejecutarrandom
execute as @e[tag=generarblackbloque] at @s unless entity @e[tag=blackole] run kill @s
execute as @e[tag=Bloqueblackole] at @s run function disasters:blackole/bloque
execute as @e[tag=Bloqueblackole1] at @s run tp @s ^ ^0.5 ^0.3 facing entity @e[tag=blackole,limit=1]
execute as @e[tag=caos,tag=CN5] at @s run effect give @e[distance=1..10] slowness 1 3 true
