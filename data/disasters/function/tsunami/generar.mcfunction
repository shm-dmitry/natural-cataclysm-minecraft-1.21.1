# disasters:tsunami/generar
# Ищем воду рядом с игроком. Если нет — не запускаем цунами.

# Проверка воды в 9 точках вокруг (радиус 5)
execute in minecraft:overworld at @s if block ~ ~ ~ water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~5 ~ ~ water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~-5 ~ ~ water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~ ~ ~5 water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~ ~ ~-5 water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~5 ~ ~5 water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~-5 ~ ~5 water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~5 ~ ~-5 water run function disasters:tsunami/spawn
execute in minecraft:overworld at @s if block ~-5 ~ ~-5 water run function disasters:tsunami/spawn

# Убить триггер (независимо от того, нашлась вода или нет)
kill @s