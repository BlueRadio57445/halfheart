
#記分板
scoreboard objectives add half_air air "剩餘氧氣"
scoreboard objectives add throw_tp1 minecraft.dropped:minecraft.quartz "傳送水晶 石英"
scoreboard objectives add throw_tp2 minecraft.dropped:minecraft.amethyst_shard "傳送水晶 紫水晶"
scoreboard objectives add death deathCount "☠死亡次數☠"
scoreboard objectives add snow_will_count dummy "踏雪意志剩餘時間"

#隊伍
team add green_heart "綠血煉金者"
team add black_heart "黑血王子"
team add gold_heart "金血發明家"
team add red_heart "真血鬥士"
team add all_heart "萬血至尊"

team modify green_heart prefix {"text":"《綠洫煉金者》", "color": "dark_green"}
team modify black_heart prefix {"text":"《黑烅王子》", "color": "gray"}
team modify gold_heart prefix {"text":"《金賉發明家》", "color": "gold"}
team modify red_heart prefix {"text":"《真恤鬥士》", "color": "#ff0000"}
team modify all_heart prefix {"text":"《萬血至尊》", "color": "light_purple"}

#函數排程
schedule function half:gold/gold_heart 1t
schedule function half:red/snow_count 1t

tellraw @a ["",{"text":"=======半血冒險=======","color":"red"},"\n",{"text":"歡迎安裝半血冒險","color":"red"},"\n",{"text":"這個資料包讓玩家只有半顆心，改變遊戲的冒險玩法","color":"red"},"\n",{"text":"有紅血、綠血、黑血、金血四種流派","color":"red"},"\n",{"text":"合成表:","color":"red"},"\n","\n","作者:",{"text":"收音機","color":"blue"},"\n",{"text":"收音機的youtube頻道","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCf88Hv3bZUuA0OlT14KaMQw"},"hoverEvent":{"action":"show_text","contents":["點我前往頻道"]}},"\n",{"text":"======================","color":"red"}]