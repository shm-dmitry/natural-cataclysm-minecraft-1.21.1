spreadplayers ~ ~ 1 40 true @s
summon minecraft:item_display ~ ~1 ~ {item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:custom_data":{disasters:{alias:"black"}}}},Tags:["blackole","Catastrofe"]}
summon minecraft:marker ~ ~ ~ {Tags:["generarblackbloque"]}
scoreboard players add @e[tag=blackole,distance=..2] Tornado 1
forceload remove all
kill @s