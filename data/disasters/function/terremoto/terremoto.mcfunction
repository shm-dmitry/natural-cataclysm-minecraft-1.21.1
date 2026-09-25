# disasters:terremoto/terremoto
# Точка входа землетрясения.
# Телепорт в сторону от случайного игрока, спавн эпицентра, сохранение координат.

# 1. Телепорт к случайному игроку и разброс 15-25 блоков (в стороне, но недалеко).
#    Если игроков нет — триггер убивается, землетрясение не спавнится.
execute in minecraft:overworld if entity @a[sort=random,limit=1] at @a[sort=random,limit=1] run spreadplayers ~ ~ 15 25 true @s
execute in minecraft:overworld unless entity @a[sort=random,limit=1] run kill @s

# 2. Форс-загрузка стартового чанка + сохранение координат для cleanup.
execute in minecraft:overworld at @s run forceload add ~ ~ ~ ~
execute store result storage disasters:terremoto x int 1 run data get entity @s Pos[0]
execute store result storage disasters:terremoto z int 1 run data get entity @s Pos[2]

# 3. Спавн эпицентра с рандомным типом (Grieta или Montana).
function disasters:terremoto/ejecutarrandom

# 4. Убить триггер (caos-маркер).
kill @s