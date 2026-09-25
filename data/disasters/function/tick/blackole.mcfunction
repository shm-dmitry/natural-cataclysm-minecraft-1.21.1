# disasters:blackole/tick

# 1. Таймер
scoreboard players add @s Tiempo 1

# 2. Рост визуала
execute if score @s Tiempo matches 1 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [1.0f,1.0f,1.0f]
execute if score @s Tiempo matches 21 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [2.0f,2.0f,2.0f]
execute if score @s Tiempo matches 41 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [3.0f,3.0f,3.0f]
execute if score @s Tiempo matches 61 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [4.0f,4.0f,4.0f]
execute if score @s Tiempo matches 81 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [5.0f,5.0f,5.0f]

# 3. Зона смерти
execute if score @s Tiempo matches 1..20 run execute as @e[distance=..6,type=!marker,type=!item_display,type=!interaction] run kill @s
execute if score @s Tiempo matches 21..40 run execute as @e[distance=..7,type=!marker,type=!item_display,type=!interaction] run kill @s
execute if score @s Tiempo matches 41..60 run execute as @e[distance=..8,type=!marker,type=!item_display,type=!interaction] run kill @s
execute if score @s Tiempo matches 61..80 run execute as @e[distance=..9,type=!marker,type=!item_display,type=!interaction] run kill @s
execute if score @s Tiempo matches 81..100 run execute as @e[distance=..10,type=!marker,type=!item_display,type=!interaction] run kill @s

# 4. Зона урона
execute if score @s Tiempo matches 1 run execute as @e[distance=7..11,type=!marker,type=!item_display,type=!interaction] run damage @s 6 minecraft:generic
execute if score @s Tiempo matches 21 run execute as @e[distance=8..12,type=!marker,type=!item_display,type=!interaction] run damage @s 6 minecraft:generic
execute if score @s Tiempo matches 41 run execute as @e[distance=9..13,type=!marker,type=!item_display,type=!interaction] run damage @s 6 minecraft:generic
execute if score @s Tiempo matches 61 run execute as @e[distance=10..14,type=!marker,type=!item_display,type=!interaction] run damage @s 6 minecraft:generic
execute if score @s Tiempo matches 81 run execute as @e[distance=11..15,type=!marker,type=!item_display,type=!interaction] run damage @s 6 minecraft:generic

# 5. Разрушение блоков
execute if score @s Tiempo matches 1..100 run function disasters:blackole/destroy

# 6. Притягивание игроков
scoreboard players add #blackole_pull Timer 1
execute if score #blackole_pull Timer matches 4.. run scoreboard players set #blackole_pull Timer 0
execute if score #blackole_pull Timer matches 0 as @a[distance=5..15] at @s run tp @s ^ ^ ^0.5 facing entity @e[tag=blackole,limit=1]

# 7. Схлопывание
execute if score @s Tiempo matches 100 run data modify entity @e[tag=blackole_visual,limit=1] transformation.scale set value [0.1f,0.1f,0.1f]

# 8. Cleanup
execute if score @s Tiempo matches 110 run function disasters:blackole/cleanup with storage disasters:blackole