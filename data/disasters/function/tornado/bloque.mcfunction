# @context minecraft:item_display

setblock ~ ~ ~ air destroy
data modify entity @s item set from entity @e[type=item,limit=1,distance=..6,sort=nearest] Item
data modify entity @s item set from entity @e[type=item,limit=1,distance=..6,sort=nearest] Item
data modify entity @s item set from entity @e[type=item,limit=1,distance=..6,sort=nearest] Item
data modify entity @s item set from entity @e[type=item,limit=1,distance=..6,sort=nearest] Item
data modify entity @s item set from entity @e[type=item,limit=1,distance=..6,sort=nearest] Item
kill @e[type=item,limit=1,distance=..2,sort=nearest]
tag @s add BloqueTornado1
tag @s remove BloqueTornado
