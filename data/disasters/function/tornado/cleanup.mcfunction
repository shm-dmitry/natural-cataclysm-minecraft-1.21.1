# disasters:tornado/cleanup
# Снимает forceload стартового чанка торнадо и убивает все сущности торнадо.

$forceload remove $(x) 0 $(z)
kill @e[tag=Tornado]