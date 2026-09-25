# disasters:blackole/destroy
# Разрушение блоков внутри чёрной дыры (радиус зависит от Tiempo).

execute if score @s Tiempo matches 1..20 run fill ~-1 ~-2 ~-1 ~1 ~1 ~1 air
execute if score @s Tiempo matches 21..40 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air
execute if score @s Tiempo matches 41..60 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air
execute if score @s Tiempo matches 61..80 run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air
execute if score @s Tiempo matches 81..100 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air