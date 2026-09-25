# disasters:sequia/generar
# Разовая засуха: телепорт в сторону от игрока, все эффекты сразу, убить триггер.

# 1. Телепорт к случайному игроку и разброс 15-25 блоков
execute in minecraft:overworld if entity @a[sort=random,limit=1] at @a[sort=random,limit=1] run spreadplayers ~ ~ 15 25 true @s
execute in minecraft:overworld unless entity @a[sort=random,limit=1] run kill @s

# 2. Сохранение координат в storage (опционально, для отладки)
execute store result storage disasters:sequia x int 1 run data get entity @s Pos[0]
execute store result storage disasters:sequia z int 1 run data get entity @s Pos[2]

# 3. Спавн одного маркера-якоря (нужен как точка отсчёта для fill/kill)
summon marker ~ ~ ~ {Tags:["sequia"]}

# 4. Все эффекты засухи
function disasters:sequia/dry_ground
function disasters:sequia/remove_water
function disasters:sequia/kill_plants
function disasters:sequia/kill_mobs
function disasters:sequia/damage_players
function disasters:sequia/random_fire

# 5. Убрать маркер-якорь и триггер
kill @e[tag=sequia]
kill @s