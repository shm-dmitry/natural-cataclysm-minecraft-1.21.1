# disasters:tornado/generar
# Спавн торнадо в Верхнем мире недалеко от случайного игрока.

# 1. Телепорт к случайному игроку и разброс 10-40 блоков от него.
#    Если игроков нет — триггер убивается, торнадо не спавнится.
execute in minecraft:overworld if entity @a[sort=random,limit=1] at @a[sort=random,limit=1] run spreadplayers ~ ~ 10 40 true @s
execute in minecraft:overworld unless entity @a[sort=random,limit=1] run kill @s

# 2. Форс-загрузка стартового чанка торнадо + сохранение координат для последующего снятия.
execute in minecraft:overworld at @s run forceload add ~ ~ ~ ~
execute store result storage disasters:tornado x int 1 run data get entity @s Pos[0]
execute store result storage disasters:tornado z int 1 run data get entity @s Pos[2]

# 3. Спавн 9 слоёв вихря (tornado0..tornado8).
summon minecraft:interaction ~ ~ ~ {Tags:["tornado8","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado7","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado6","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado5","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado4","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado3","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado2","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado1","tornado","Tornado","tor1"]}
summon minecraft:interaction ~ ~ ~ {Tags:["tornado0","tornado","Tornado","tor1"]}

# 4. «Мозг» торнадо — на 30 блоков выше. Тег Catastrofe блокирует запуск новых катастроф.
summon minecraft:interaction ~ ~30 ~ {Tags:["seguir","Tornado","tor1","Catastrofe"]}

# 5. Убить триггер (caos-маркер).
kill @s