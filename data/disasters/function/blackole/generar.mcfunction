# disasters:blackole/generar
# Спавн чёрной дыры.

# 1. Телепорт к случайному игроку + разброс 15-25
execute in minecraft:overworld if entity @a[sort=random,limit=1] at @a[sort=random,limit=1] run spreadplayers ~ ~ 15 25 true @s
execute in minecraft:overworld unless entity @a[sort=random,limit=1] run kill @s

# 2. Сохранение координат для cleanup
execute store result storage disasters:blackole x int 1 run data get entity @s Pos[0]
execute store result storage disasters:blackole z int 1 run data get entity @s Pos[2]

# 3. Форс-загрузка
execute at @s run forceload add ~ ~ ~ ~

# 4. Визуал — item_display с чёрным бетоном
summon item_display ~ ~ ~ {item:{id:"minecraft:black_concrete",count:1},Tags:["blackole_visual"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]},view_range:50.0f}

# 5. Якорь — маркер
summon marker ~ ~ ~ {Tags:["blackole","Catastrofe"]}

# 6. Убить триггер
kill @s