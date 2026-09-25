tellraw @a ["",{"text":"================= ","color":"gold"},{"text":"Natural Cataclysm","bold":true,"color":"gold"},{"text":" =================","color":"gold"},{"text":"\n"},{"text":"Creador","color":"green"},{"text":": ","color":"dark_green"},{"text":"Kiwi_Kcz","color":"yellow","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/kiwiKcz"}},{"text":"datapack version:","color":"green"},{"text":" V1.0","color":"yellow"},{"text":"\n"},{"text":"===============================================","color":"gold"},{"text":"\n "}]

scoreboard objectives add Tiempo dummy
scoreboard objectives add Tornado dummy
scoreboard objectives add Random dummy
scoreboard objectives add Terremoto dummy
scoreboard objectives add Tsunami dummy
scoreboard objectives add altura dummy
scoreboard objectives add tirar dummy
scoreboard objectives add Pos0 dummy
scoreboard objectives add Pos2 dummy
scoreboard objectives add sonido dummy
scoreboard objectives add TiempoTerremoto dummy
scoreboard objectives add TiempoTsunami dummy

scoreboard objectives add nc.spawn trigger "Natural Cataclysm Spawn"

gamerule commandModificationBlockLimit 999999
