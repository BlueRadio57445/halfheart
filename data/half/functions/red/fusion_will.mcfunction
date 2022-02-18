advancement revoke @s only half:red/fusion_will
tellraw @s "\n融合意志的功能就是叫出這個介面"
tellraw @s "請把你要融合的兩個意志分別放在左右手"
tellraw @s "然後準備 效果^2 個勇氣精華"
tellraw @s [{"text": "然後按這個按鈕"},{"text": "[融合]","color": "aqua","clickEvent": {"action": "run_command","value": "/function half:red/fusion1"},"hoverEvent": {"action": "show_text","value": "點我融合"}},"\n"]