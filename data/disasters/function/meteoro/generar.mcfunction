# disasters:meteoro/generar
# Спавн метеора (fireball) высоко над случайным игроком.

# 1. Телепорт к случайному игроку и разброс 15-25 блоков
execute in minecraft:overworld if entity @a[sort=random,limit=1] at @a[sort=random,limit=1] run spreadplayers ~ ~ 15 25 true @s
execute in minecraft:overworld unless entity @a[sort=random,limit=1] run kill @s

# 2. Сохранение координат для cleanup
execute store result storage disasters:meteoro x int 1 run data get entity @s Pos[0]
execute store result storage disasters:meteoro z int 1 run data get entity @s Pos[2]

# 3. Форс-загрузка чанка
execute at @s run forceload add ~ ~ ~ ~

# 4. Спавн fireball (снаряд гаста) на Y=250, летит вниз, взрыв как у динамита
summon fireball ~ ~250 ~ {ExplosionPower:4b,Motion:[0.0,-1.0,0.0],Tags:["Meteoro"]}

# 5. Спавн маркера-смотрителя на той же высоте
summon marker ~ ~250 ~ {Tags:["MeteoroWatcher","Catastrofe"]}

# 6. Убить триггер
kill @s