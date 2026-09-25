# ===== Tornado: tick =====

# --- визуал и вращение ---
execute as @e[tag=seguir] at @s run playsound item.elytra.flying ambient @a[distance=..40] ~ ~ ~ 0.1 1.5 1
execute as @e[tag=seguir] at @s run tp @e[tag=tornado0] ^ ^0.5 ^
execute as @e[tag=tornado0] at @s run tp @s ~ ~ ~ ~15 0
execute as @e[tag=tornado] at @s run tp @s ~ ~ ~ ~15 0
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado1] ^ ^ ^0.2
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado2] ^ ^ ^-0.2
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado3] ^0.2 ^ ^
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado4] ^-0.2 ^ ^
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado5] ^0.2 ^ ^0.2
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado6] ^-0.2 ^ ^-0.2
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado7] ^-0.2 ^ ^0.2
execute as @e[tag=tornado0] at @s run tp @e[tag=tornado8] ^0.2 ^ ^-0.2
# TODO: частицы, потом вернуться если некрасиво
scoreboard players add #tornado_particle Timer 1
execute if score #tornado_particle Timer matches 2.. run scoreboard players set #tornado_particle Timer 0
execute if score #tornado_particle Timer matches 0 as @e[tag=tornado0] at @s if dimension minecraft:overworld anchored eyes run function disasters:tornado/particle

# --- таймер жизни ---
execute as @e[tag=seguir,scores={Tornado=1}] at @s run summon marker ~ ~ ~ {Tags:["generarbloque"]}
execute as @e[tag=seguir,scores={Tornado=9599..}] at @s run weather clear
execute as @e[tag=seguir,scores={Tornado=9600..}] run function disasters:tornado/cleanup with storage disasters:tornado
execute as @e[tag=seguir,scores={Tornado=9599..}] at @s run kill @e[type=marker]
execute as @e[tag=seguir,scores={Tornado=1..9598}] at @s run weather thunder

# --- генератор блоков ---
execute as @e[tag=generarbloque] at @s run function disasters:tornado/ejecutarrandom

# --- предметы рядом уничтожаются ---
execute as @e[type=item] at @s if entity @e[tag=seguir,distance=..3] run kill @s

# --- тик таймера ---
execute as @e[tag=seguir] at @s run scoreboard players add @s Tornado 1

# --- блоки торнадо ---
execute as @e[tag=BloqueTornado1] at @s run tp @s ^ ^0.5 ^0.3 facing entity @e[tag=Tornado,limit=1,sort=nearest]
execute as @e[tag=BloqueTornado] at @s run function disasters:tornado/bloque
execute as @e[tag=BloqueTornado1,tag=tor1] at @s run kill @s
execute as @e[tag=BloqueTornado1] at @s unless entity @e[tag=Tornado] run tp ^ ^-0.7 ^
execute as @e[tag=BloqueTornado1] at @s unless block ~ ~1 ~ air run kill @s
execute as @e[tag=generarbloque] at @s run spreadplayers ~ ~ 1 40 true @s
execute as @e[tag=seguir] at @s run tp @e[tag=generarbloque,distance=40..] ^ ^ ^5
execute as @e[tag=BloqueTornado1] at @s run damage @e[distance=..1,type=!item_display,type=!interaction,type=!marker,limit=1] 2 minecraft:fall by @s
execute as @e[tag=seguir] at @s run fill ~1 ~50 ~-1 ~-1 ~ ~1 air destroy

# ===== seguir: движение =====

# высота — только у seguie и игроков
execute as @e[tag=seguir] at @s store result score @s altura run data get entity @s Pos[1]
execute as @a at @s store result score @s altura run data get entity @s Pos[1]

# движение, когда высоко (>=32)
execute as @e[tag=seguir] at @s if score @s altura matches 32.. run execute unless entity @a[gamemode=!creative,gamemode=!adventure] run tp @s ^ ^ ^0.15 facing entity @e[type=!player,type=!marker,type=!interaction,type=!item_display,type=!item,limit=1,sort=random]
execute as @e[tag=seguir] at @s if score @s altura matches 32.. run tp @s ^ ^ ^0.15 facing entity @p[gamemode=!creative,gamemode=!spectator]
execute as @e[tag=seguir] at @s if score @s altura matches 32.. run execute if entity @a[distance=100..] run tp @s ^ ^ ^4 facing entity @p[gamemode=!creative,gamemode=!spectator]

# движение, когда низко (<32)
execute as @e[tag=seguir] at @s if score @s altura matches ..31 run tp @s ^ ^1 ^0.15
execute as @e[tag=seguir] at @s if block ~ ~-0.1 ~ air run tp @s ^ ^-0.1 ^

# ===== пометка жертв tor1 =====
execute as @e[tag=tornado0] at @s run execute as @e[type=!marker,type=!minecraft:player,type=!minecraft:interaction,distance=..2] at @s run tag @s add tor1
execute as @e[tag=tornado0] at @s run execute as @a[distance=..3,gamemode=!creative,gamemode=!spectator] at @s run tag @s add tor1

# ===== затягивание =====
execute as @e[type=!player,type=!minecraft:interaction,type=!interaction] at @s unless entity @e[type=minecraft:interaction,tag=tor1,distance=..1] run tp @s ^ ^ ^0.5 facing entity @e[tag=tor1,distance=..10,limit=1]

execute as @e[tag=tornado0] at @s run execute as @e[type=!minecraft:interaction,tag=tor1,scores={tirar=16..}] at @s run tp @e[type=!marker,type=!minecraft:player,type=!minecraft:interaction] ^ ^-1 ^-2 facing entity @e[tag=tornado0,limit=1]

# снятие tor1 (на земле)
execute as @e[type=!minecraft:interaction,tag=tor1] at @s unless block ~ ~-0.1 ~ air run tag @s remove tor1

# игроки: внешняя зона, подъём, выброс
execute as @e[tag=tornado0] at @s as @a[tag=!tor1,distance=3..6,gamemode=!creative,gamemode=!spectator] at @s run tp @s ^ ^ ^1 facing entity @e[tag=tornado0,limit=1,sort=nearest]
execute as @e[tag=tornado0] at @s as @a[scores={tirar=16..},gamemode=!creative,gamemode=!spectator] at @s run tp @s ^ ^-1 ^-2 facing entity @e[tag=tornado0,limit=1,sort=nearest]
execute as @e[tag=tornado0] at @s as @a[gamemode=!creative,gamemode=!spectator,scores={tirar=0..16}] at @s run tp @s ^ ^0.5 ^ facing entity @e[tag=tornado0,limit=1,sort=nearest]

# мобы: подъём
execute as @e[tag=tornado0] at @s run execute as @e[type=!marker,type=!minecraft:player,type=!minecraft:interaction,tag=tor1,scores={tirar=0..16}] at @s run tp @s ^ ^0.3 ^ facing entity @e[tag=tornado0,limit=1]

# тик tirar
execute as @e[tag=tornado0] at @s run execute as @e[type=!marker,type=!minecraft:interaction,tag=tor1] at @s run scoreboard players add @s tirar 1

# сброс tirar — только у тех, у кого он ненулевой и нет tor1
execute as @e[tag=!tor1,scores={tirar=1..}] at @s run scoreboard players reset @s tirar