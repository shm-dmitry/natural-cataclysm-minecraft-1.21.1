summon minecraft:item_display ~ ~0.5 ~ {item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":210103}},Tags:["Tsunami"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector10"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector9"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector8"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector7"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector6"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector5"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector4"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector3"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector2"]}
execute as @e[tag=Tsunami] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["TsunamiDetector","TsunamiDetector1"]}
weather rain
forceload remove all
kill @s
