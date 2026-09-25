# disasters:meteoro/tick

# 1. Таймер
scoreboard players add @s Tiempo 1

# 2. Синхронизация позиции
execute if entity @e[tag=Meteoro] at @e[tag=Meteoro,limit=1] run tp @s ~ ~ ~

# 3. Частицы (от fireball)
execute if entity @e[tag=Meteoro] at @e[tag=Meteoro,limit=1] run function disasters:meteoro/particle

# 4. Звук раз в 20 тиков
scoreboard players add @s MeteoroSound 1
execute if score @s MeteoroSound matches 20.. run scoreboard players set @s MeteoroSound 0
execute if score @s MeteoroSound matches 20.. run function disasters:meteoro/sound

# 5. Таймаут
execute if score @s Tiempo matches 600.. run function disasters:meteoro/cleanup with storage disasters:meteoro
execute if score @s Tiempo matches 600.. run return 0

# 6. Fireball жив — ждём
execute if entity @e[tag=Meteoro] run return 0

# 7. Fireball исчез — взрыв + cleanup
function disasters:meteoro/explode
function disasters:meteoro/cleanup with storage disasters:meteoro