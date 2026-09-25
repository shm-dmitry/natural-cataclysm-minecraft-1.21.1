# disasters:tornado/particle
# Вызывается для @e[tag=tornado] в тике торнадо.
# ВАЖНО: вызывать раз в 2-3 тика, а не каждый тик (см. tick.mcfunction).

# --- нижний уровень: дым у земли (8 позиций вокруг центра) ---
particle minecraft:campfire_cosy_smoke ^ ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^1 ^-0.5 ^ 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^1 ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-1 ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-1 ^-0.5 ^-1 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^ ^-0.5 ^-1 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-1 ^-0.5 ^ 0 10 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^1 ^-0.5 ^-1 0 10 0 0.1 8 force

# --- средний уровень: дым (8 позиций, радиус 2.5) ---
particle minecraft:campfire_cosy_smoke ^ ^5 ^2.5 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^2.5 ^5 ^ 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^2.5 ^5 ^2.5 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-2.5 ^5 ^2.5 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-2.5 ^5 ^-2.5 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^ ^5 ^-2.5 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^-2.5 ^5 ^ 0 25 0 0.1 8 force
particle minecraft:campfire_cosy_smoke ^2.5 ^5 ^-2.5 0 25 0 0.1 8 force

# --- нижний уровень: облако (8 позиций) ---
particle minecraft:cloud ^ ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:cloud ^1 ^-0.5 ^ 0 10 0 0.1 8 force
particle minecraft:cloud ^1 ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:cloud ^-1 ^-0.5 ^1 0 10 0 0.1 8 force
particle minecraft:cloud ^-1 ^-0.5 ^-1 0 10 0 0.1 8 force
particle minecraft:cloud ^ ^-0.5 ^-1 0 10 0 0.1 8 force
particle minecraft:cloud ^-1 ^-0.5 ^ 0 10 0 0.1 8 force
particle minecraft:cloud ^1 ^-0.5 ^-1 0 10 0 0.1 8 force

# --- средний уровень: облако (8 позиций) ---
particle minecraft:cloud ^2.5 ^5 ^-2.5 0 20 0 0.1 8 force
particle minecraft:cloud ^-2.5 ^5 ^ 0 50 0 0.1 8 force
particle minecraft:cloud ^ ^5 ^-2.5 0 50 0 0.1 8 force
particle minecraft:cloud ^-2.5 ^5 ^-2.5 0 50 0 0.1 8 force
particle minecraft:cloud ^-2.5 ^5 ^2.5 0 50 0 0.1 8 force
particle minecraft:cloud ^2.5 ^5 ^2.5 0 50 0 0.1 8 force
particle minecraft:cloud ^2.5 ^5 ^ 0 50 0 0.1 8 force
particle minecraft:cloud ^ ^5 ^2.5 0 50 0 0.1 8 force

# --- шапка вихря на высоте 56 ---
particle minecraft:campfire_cosy_smoke ^ ^56 ^1 30 0 30 0 150 force
particle minecraft:cloud ^ ^56 ^1 30 0 30 0 150 force
particle minecraft:campfire_signal_smoke ^ ^56 ^1 30 0 30 0 150 force