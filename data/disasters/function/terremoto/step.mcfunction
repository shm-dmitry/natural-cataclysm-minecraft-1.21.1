# disasters:terremoto/step
# Один шаг (раз в 20 тиков): урон + разрушение/постройка.

# Урон мобам (в радиусе 20, кроме игроков и служебных сущностей)
execute as @e[distance=..20,type=!player,type=!marker,type=!interaction,type=!item_display,type=!item] run damage @s 3 minecraft:generic

# Урон игрокам (меньше — чтобы не убивать мгновенно)
execute as @a[distance=..20] run damage @s 2 minecraft:generic

# Разрушение или постройка
execute if entity @s[tag=Grieta] run function disasters:terremoto/grieta_step
execute if entity @s[tag=Montana] run function disasters:terremoto/montana_step

playsound block.stone.break ambient @a[distance=..20] ~ ~ ~ 1 1 1