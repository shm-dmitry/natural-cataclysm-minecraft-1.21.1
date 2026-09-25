# disasters:tsunami/rise
# Ставим source-блоки воды крестом (5 блоков) и поднимаем маркер на 1 блок вверх.

setblock ~ ~ ~ water
setblock ~5 ~ ~ water
setblock ~-5 ~ ~ water
setblock ~ ~ ~5 water
setblock ~ ~ ~-5 water

tp @s ~ ~1 ~