# disasters:nc/handle_triggers

scoreboard players enable @a nc.spawn

# 1. Торнадо — CN1
execute as @a[scores={nc.spawn=1}] at @s run summon interaction ~ ~ ~ {Tags:["CN1","caos","nc_spawn"]}
execute as @a[scores={nc.spawn=1}] at @s run scoreboard players set @e[tag=nc_spawn,distance=..2,limit=1] Tiempo 1200
execute as @a[scores={nc.spawn=1}] at @s run tag @e[tag=nc_spawn,distance=..2,limit=1] remove nc_spawn
execute as @a[scores={nc.spawn=1}] run tellraw @s {"text":"[Cataclysms] Торнадо сформировался неподалеку от вас!","color":"red"}
execute as @a[scores={nc.spawn=1}] run scoreboard players set @s nc.spawn 0

# 2. Метеор — CN3
execute as @a[scores={nc.spawn=2}] at @s run summon interaction ~ ~ ~ {Tags:["CN3","caos","nc_spawn"]}
execute as @a[scores={nc.spawn=2}] at @s run scoreboard players set @e[tag=nc_spawn,distance=..2,limit=1] Tiempo 1200
execute as @a[scores={nc.spawn=2}] at @s run tag @e[tag=nc_spawn,distance=..2,limit=1] remove nc_spawn
execute as @a[scores={nc.spawn=2}] run tellraw @s {"text":"[Cataclysms] Метеор падает вдали от вас!","color":"gold"}
execute as @a[scores={nc.spawn=2}] run scoreboard players set @s nc.spawn 0

# 3. Чёрная дыра — CN5
execute as @a[scores={nc.spawn=3}] at @s run summon interaction ~ ~ ~ {Tags:["CN5","caos","nc_spawn"]}
execute as @a[scores={nc.spawn=3}] at @s run scoreboard players set @e[tag=nc_spawn,distance=..2,limit=1] Tiempo 1200
execute as @a[scores={nc.spawn=3}] at @s run tag @e[tag=nc_spawn,distance=..2,limit=1] remove nc_spawn
execute as @a[scores={nc.spawn=3}] run tellraw @s {"text":"[Cataclysms] Чёрная дыра открылась в безопасном отдалении!","color":"dark_purple"}
execute as @a[scores={nc.spawn=3}] run scoreboard players set @s nc.spawn 0

# 4. Цунами — CN4
execute as @a[scores={nc.spawn=4}] at @s run summon interaction ~ ~ ~ {Tags:["CN4","caos","nc_spawn"]}
execute as @a[scores={nc.spawn=4}] at @s run scoreboard players set @e[tag=nc_spawn,distance=..2,limit=1] Tiempo 1200
execute as @a[scores={nc.spawn=4}] at @s run tag @e[tag=nc_spawn,distance=..2,limit=1] remove nc_spawn
execute as @a[scores={nc.spawn=4}] run tellraw @s {"text":"[Cataclysms] Цунами поднимается неподалеку!","color":"aqua"}
execute as @a[scores={nc.spawn=4}] run scoreboard players set @s nc.spawn 0