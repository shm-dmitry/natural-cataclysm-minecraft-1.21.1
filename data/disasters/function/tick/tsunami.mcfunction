scoreboard players add @s Tiempo 1
tp @s ^ ^ ^-0.5
execute as @e[tag=TsunamiDetector] at @s run execute as @e[type=!minecraft:interaction,type=!minecraft:item_display,distance=..12] at @s run damage @s 1000 minecraft:drown by @e[tag=Tsunami,limit=1]
tp @e[tag=TsunamiDetector5] ^-40 ^ ^
tp @e[tag=TsunamiDetector4] ^40 ^ ^
tp @e[tag=TsunamiDetector3] ^-20 ^ ^
tp @e[tag=TsunamiDetector2] ^20 ^ ^
tp @e[tag=TsunamiDetector1] ^ ^ ^
execute as @e[tag=TsunamiDetector] at @s run data merge entity @s {width:20,height:25}
execute if score @s Tiempo matches 2 run data merge entity @s {CustomName:"\"Tsunami\"",CustomNameVisible:0b,transformation:{scale:[100,50,50],translation:[0,25,0]},view_range:90.0,interpolation_duration:50,start_interpolation:0}
tp @e[tag=TsunamiDetector6] ^ ^20 ^10
tp @e[tag=TsunamiDetector7] ^20 ^20 ^10
tp @e[tag=TsunamiDetector8] ^-20 ^20 ^10
tp @e[tag=TsunamiDetector9] ^-40 ^20 ^10
tp @e[tag=TsunamiDetector10] ^40 ^20 ^10
execute as @e[tag=TsunamiDetector] at @s run fill ~20 ~ ~-20 ~-20 ~30 ~20 air
execute if score @s altura matches 64 run tp @s ^ ^ ^0.3 facing entity @p[scores={altura=64..},gamemode=!creative,gamemode=!spectator]
execute if score @s altura matches 64 run execute unless entity @p[gamemode=!creative,gamemode=!spectator] run tp @s ^ ^ ^0.3 facing entity @e[scores={altura=64..},limit=1,type=!interaction,type=!item_display]
execute if score @s Tiempo matches 3000 run data merge entity @s {CustomName:"\"Tsunami\"",CustomNameVisible:0b,transformation:{scale:[100,0,50],translation:[0,25,0]},view_range:90.0,interpolation_duration:50,start_interpolation:0}
execute if score @s Tiempo matches 3100 run kill @s
playsound block.water.ambient ambient @a ~ ~ ~ 1 1 1
