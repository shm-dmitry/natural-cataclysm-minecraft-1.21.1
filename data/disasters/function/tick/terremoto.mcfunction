# disasters:terremoto/tick
# Вызывается каждый тик для каждого @e[tag=Terremoto].

# 1. Таймер жизни
scoreboard players add @s TiempoTerremoto 1

# 2. Тряска игроков в радиусе 20 (каждый тик, суммарно нулевая)
execute as @a[distance=..20] at @s run tp @s ~0.15 ~ ~0.15
execute as @a[distance=..20] at @s run tp @s ~-0.15 ~ ~-0.15

# 3. Шаги (раз в 20 тиков = раз в секунду)
execute if score @s TiempoTerremoto matches 1 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 21 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 41 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 61 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 81 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 101 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 121 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 141 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 161 run function disasters:terremoto/step
execute if score @s TiempoTerremoto matches 181 run function disasters:terremoto/step

# 4. Завершение на 200 тиках
execute if score @s TiempoTerremoto matches 200 run function disasters:terremoto/cleanup with storage disasters:terremoto