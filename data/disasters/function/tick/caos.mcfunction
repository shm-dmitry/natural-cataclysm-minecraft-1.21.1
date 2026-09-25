
execute store result score @s Pos0 run data get entity @s Pos[0]
execute store result score @s Pos2 run data get entity @s Pos[2]

execute run scoreboard players add @s sonido 1
execute if score @s sonido matches 1 as @a at @s if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=210101] run playsound disasters:custom.catastrofe ambient @a[distance=..10] ~ ~ ~ 0.15 1 1
execute run scoreboard players add @s Tiempo 1
execute if score @s Tiempo matches ..200 run execute if score @s sonido matches 10.. run scoreboard players set @s sonido 0
execute if score @s Tiempo matches 200..400 run execute if score @s sonido matches 6.. run scoreboard players set @s sonido 0
execute if score @s Tiempo matches 400..800 run execute if score @s sonido matches 4.. run scoreboard players set @s sonido 0
execute if score @s Tiempo matches 800..1000 run execute if score @s sonido matches 2.. run scoreboard players set @s sonido 0
execute if score @s Tiempo matches 1000.. run scoreboard players set @s sonido 0

forceload add ~ ~ ~ ~
# Торнадо
execute if entity @s[tag=CN1] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Торнадо появится в :","bold":true,"color":"yellow"},{"text":" "},{"score":{"name":"@e[tag=CN1,limit=1,sort=nearest]","objective":"Pos0"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN1,limit=1,sort=nearest]","objective":"altura"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN1,limit=1,sort=nearest]","objective":"Pos2"},"bold":true,"color":"dark_red"}]
execute if entity @s[tag=CN1] if score @s Tiempo matches 1200.. run function disasters:tornado/generar

# Землетрясение
execute if entity @s[tag=CN2] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Землетрясение начнётся в :","bold":true,"color":"yellow"},{"text":" "},{"score":{"name":"@e[tag=CN2,limit=1,sort=nearest]","objective":"Pos0"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN2,limit=1,sort=nearest]","objective":"altura"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN2,limit=1,sort=nearest]","objective":"Pos2"},"bold":true,"color":"dark_red"}]
execute if entity @s[tag=CN2] if score @s Tiempo matches 1200.. run function disasters:terremoto/terremoto

# Метеор
execute if entity @s[tag=CN3] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Метеор упадёт в :","bold":true,"color":"yellow"},{"text":" "},{"score":{"name":"@e[tag=CN3,limit=1,sort=nearest]","objective":"Pos0"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN3,limit=1,sort=nearest]","objective":"altura"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN3,limit=1,sort=nearest]","objective":"Pos2"},"bold":true,"color":"dark_red"}]
execute if entity @s[tag=CN3] if score @s Tiempo matches 1200.. run function disasters:meteoro/generar

# Цунами
execute if entity @s[tag=CN4] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Цунами появится в :","bold":true,"color":"yellow"},{"text":" "},{"score":{"name":"@e[tag=CN4,limit=1,sort=nearest]","objective":"Pos0"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN4,limit=1,sort=nearest]","objective":"altura"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN4,limit=1,sort=nearest]","objective":"Pos2"},"bold":true,"color":"dark_red"}]
execute if entity @s[tag=CN4] if score @s Tiempo matches 1200.. run function disasters:tsunami/generar

# Черная дыра (Gravity)
execute if entity @s[tag=CN5] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Гравитация усиливается в :","bold":true,"color":"yellow"},{"text":" "},{"score":{"name":"@e[tag=CN5,limit=1,sort=nearest]","objective":"Pos0"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN5,limit=1,sort=nearest]","objective":"altura"},"bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"dark_red"},{"score":{"name":"@e[tag=CN5,limit=1,sort=nearest]","objective":"Pos2"},"bold":true,"color":"dark_red"}]
execute if entity @s[tag=CN5] if score @s Tiempo matches 1200.. run function disasters:blackole/generar

# Засуха (Heat)
execute if entity @s[tag=CN6] as @a if items entity @s container.* minecraft:firework_star[custom_model_data=210101] run title @s actionbar [{"text":"Жара начинает усиливаться","bold":true,"color":"yellow"}]
execute if entity @s[tag=CN6] if score @s Tiempo matches 1200.. run function disasters:sequia/generar
