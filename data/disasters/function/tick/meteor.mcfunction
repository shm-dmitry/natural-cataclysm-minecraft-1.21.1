# disasters:meteoro/tick
# Следит за fireball. Звук раз в секунду. Cleanup при исчезновении или таймауте.

# 1. Таймер смотрителя
scoreboard players add @s Tiempo 1

# 2. Счётчик звука (раз в 20 тиков)
scoreboard players add @s MeteoroSound 1
execute if score @s MeteoroSound matches 20.. run scoreboard players set @s MeteoroSound 0
execute if score @s MeteoroSound matches 20.. run function disasters:meteoro/sound

# 3. Если таймер вышел — принудительный cleanup
execute if score @s Tiempo matches 600.. run function disasters:meteoro/cleanup with storage disasters:meteoro
execute if score @s Tiempo matches 600.. run return 0

# 4. Если fireball ещё жив — ждём
execute if entity @e[tag=Meteoro] run return 0

# 5. Fireball исчез — cleanup
function disasters:meteoro/cleanup with storage disasters:meteoro