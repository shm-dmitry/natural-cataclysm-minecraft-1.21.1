# @objective nc.spawn dummy

scoreboard players enable @a nc.spawn

# 1. Торнадо (/trigger nc.spawn set 1) — спавн в случайной точке рядом с игроком (от 10 до 40 блоков)
execute as @a[scores={nc.spawn=1}] at @s run spreadplayers ~ ~ 10 40 false @s
execute as @a[scores={nc.spawn=1}] at @s run function disasters:tornado/generar
execute as @a[scores={nc.spawn=1}] run tellraw @s {"text":"[Cataclysms] Торнадо сформировался неподалеку от вас!","color":"red"}
execute as @a[scores={nc.spawn=1}] run scoreboard players set @s nc.spawn 0

# 2. Метеор (/trigger nc.spawn set 2) — призыв на безопасном расстоянии впереди игрока (~50 блоков)
execute as @a[scores={nc.spawn=2}] at @s run tp @s ~ ~ ~ facing ^ ^ ^50
execute as @a[scores={nc.spawn=2}] at @s run function disasters:meteoro/random
execute as @a[scores={nc.spawn=2}] at @s run function disasters:meteoro/ejecutarrandom
execute as @a[scores={nc.spawn=2}] run tellraw @s {"text":"[Cataclysms] Метеор падает вдали от вас!","color":"gold"}
execute as @a[scores={nc.spawn=2}] run scoreboard players set @s nc.spawn 0

# 3. Чёрная дыра (/trigger nc.spawn set 3) — спавн в 30-50 блоках от игрока
execute as @a[scores={nc.spawn=3}] at @s run spreadplayers ~ ~ 20 50 false @s
execute as @a[scores={nc.spawn=3}] at @s run function disasters:blackole/generar
execute as @a[scores={nc.spawn=3}] run tellraw @s {"text":"[Cataclysms] Чёрная дыра открылась в безопасном отдалении!","color":"dark_purple"}
execute as @a[scores={nc.spawn=3}] run scoreboard players set @s nc.spawn 0

# 4. Цунами (/trigger nc.spawn set 4) — спавн в случайной зоне рядом
execute as @a[scores={nc.spawn=4}] at @s run spreadplayers ~ ~ 15 45 false @s
execute as @a[scores={nc.spawn=4}] at @s run function disasters:tsunami/generar
execute as @a[scores={nc.spawn=4}] run tellraw @s {"text":"[Cataclysms] Цунами поднимается неподалеку!","color":"aqua"}
execute as @a[scores={nc.spawn=4}] run scoreboard players set @s nc.spawn 0