# disasters:tsunami/tick
# Вызывается каждый тик для каждого @e[tag=Tsunami].

# 1. Таймер жизни
scoreboard players add @s TiempoTsunami 1

# 2. Подъём воды каждые 120 тиков (6 сек) — 10 подъёмов за 60 сек
execute if score @s TiempoTsunami matches 1 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 121 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 241 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 361 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 481 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 601 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 721 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 841 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 961 run function disasters:tsunami/rise
execute if score @s TiempoTsunami matches 1081 run function disasters:tsunami/rise

# 3. Урон игрокам в радиусе 30 (если они в воде)
execute as @a[distance=..30] at @s if block ~ ~ ~ water run damage @s 1 minecraft:drown

# 4. Завершение на 1200 тиках (60 сек)
execute if score @s TiempoTsunami matches 1200 run function disasters:tsunami/cleanup with storage disasters:tsunami