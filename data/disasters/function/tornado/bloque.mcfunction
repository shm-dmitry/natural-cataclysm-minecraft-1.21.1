# @context minecraft:item_display
# disasters:tornado/bloque
# Ломает блок в точке item_display, копирует ближайший дроп как свой item,
# съедает дроп и переключает тег BloqueTornado -> BloqueTornado1.

# 1. Сломать блок в точке (с дропом)
setblock ~ ~ ~ air destroy

# 2. Скопировать ближайший дроп в свой item (одна строка вместо пяти)
data modify entity @s item set from entity @e[type=item,limit=1,distance=..2,sort=nearest] Item

# 3. Съесть дроп
kill @e[type=item,limit=1,distance=..2,sort=nearest]

# 4. Переключить тег: блок в вихре -> блок-снаряд
tag @s add BloqueTornado1
tag @s remove BloqueTornado