scoreboard players add @s Terremoto 1
scoreboard players add @s Tiempo 1
execute if score @s Tiempo matches ..229 run forceload add ~ ~ ~ ~
execute if score @s Tiempo matches 230.. run forceload remove all
execute if score @s Tiempo matches 230.. run kill @s
execute as @e[tag=!Terremoto] at @s if entity @e[tag=Terremoto] run function disasters:terremoto/temblor

kill @e[type=falling_block]

execute as @e[tag=Grieta] at @s run fill ~-2 300 ~2 ~2 -62 ~-2 air

execute as @e[tag=Montana] at @s run clone ^-15 ^-3 ^ ^30 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-14 ^-5 ^ ^28 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-12 ^-7 ^ ^24 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-10 ^-10 ^ ^20 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-9 ^-13 ^ ^18 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-8 ^-15 ^ ^16 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-6 ^-20 ^ ^12 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-4 ^-25 ^ ^8 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-2 ^-30 ^ ^4 ^-2 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^-1 ^-35 ^ ^1 ^-1 ^ ^ ^-1 ^
execute as @e[tag=Montana] at @s run clone ^ ^-40 ^ ^ ^ ^ ^ ^-1 ^
